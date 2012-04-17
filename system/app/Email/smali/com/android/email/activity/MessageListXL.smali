.class public Lcom/android/email/activity/MessageListXL;
.super Landroid/app/Activity;
.source "MessageListXL.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;
.implements Lcom/android/email/activity/MoveMessageToDialog$Callback;
.implements Lcom/android/email/combined/MessageFacade$MessageListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageListXL$ManagedDialog;,
        Lcom/android/email/activity/MessageListXL$MessageListDialog;,
        Lcom/android/email/activity/MessageListXL$ControllerResult;,
        Lcom/android/email/activity/MessageListXL$RefreshAllTask;,
        Lcom/android/email/activity/MessageListXL$RefreshTask;,
        Lcom/android/email/activity/MessageListXL$MessageCheckerTask;,
        Lcom/android/email/activity/MessageListXL$MailboxCheckTask;,
        Lcom/android/email/activity/MessageListXL$TextSizeItemView;,
        Lcom/android/email/activity/MessageListXL$TextSizeItem;,
        Lcom/android/email/activity/MessageListXL$MessageListTextSizeAdapter;,
        Lcom/android/email/activity/MessageListXL$RefreshListener;,
        Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;,
        Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;,
        Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;,
        Lcom/android/email/activity/MessageListXL$MessageOrderManagerCallback;
    }
.end annotation


# static fields
.field public static SELECT_MESSAGE_NEWER:I

.field public static SELECT_MESSAGE_NORMAL:I

.field public static SELECT_MESSAGE_OLDER:I

.field public static final SORT_QUERY:[Ljava/lang/String;

.field private static doesMadUsersRefresh:Z

.field public static isLeftSplitPressed:Z

.field public static isRightSplitPressed:Z

.field private static mComposeNewLayout:Landroid/widget/LinearLayout;

.field public static mContext:Landroid/content/Context;

.field private static mDefaultSelection:I

.field private static mSplitMode:Z

.field private static mTopLineMode:I

.field private static sAccountId:J

.field private static sDateFormat:Ljava/text/DateFormat;

.field private static sDayFormat:Ljava/text/DateFormat;

.field public static sDefaultLeftLandSplitPoint:I

.field public static sDefaultLeftPortSplitPoint:I

.field public static sDefaultRightSplitPoint:I

.field private static sInit:Z

.field public static sLeftSplitType:I

.field public static sLeftSplitpoint:I

.field public static sLeftSplitpointLand:I

.field public static sLeftSplitpointPort:I

.field private static sPreviousSortType:I

.field public static sRightSplitType:I

.field public static sRightSplitpoint:I

.field private static sSearchBarLayout:Landroid/widget/LinearLayout;

.field private static sSearchEditFrame:Landroid/view/View;

.field private static sSearchFrameLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

.field private static sSearchMarginListLand:I

.field private static sSearchMarginViewLand:I

.field private static sSearchMode:Z

.field private static sSearchStrWithEscape:Ljava/lang/String;

.field private static sSearchString:Ljava/lang/String;

.field private static sSearchString_datefrom:J

.field private static sSearchString_dateto:J

.field private static sSelectedSearchType:I

.field private static sSharedPrefer:Landroid/content/SharedPreferences;

.field private static sSortType:I

.field private static sTimeFormat:Ljava/text/DateFormat;

.field public static sTypeface:Landroid/graphics/Typeface;

.field private static sViewMode:I


# instance fields
.field private final DPMReceiver:Landroid/content/BroadcastReceiver;

.field private final SIZE_HUGE:I

.field private final SIZE_LARGE:I

.field private final SIZE_NORMAL:I

.field private final SIZE_SMALL:I

.field private final SIZE_TINY:I

.field private mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

.field private mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;

.field private mActionBar:Landroid/app/ActionBar;

.field private mActionBarCustomView:Landroid/view/View;

.field private mAnimationStarted:Z

.field private mCloseButton:Landroid/widget/ImageView;

.field private mController:Lcom/android/email/Controller;

.field private mControllerResult:Lcom/android/email/Controller$Result;

.field private mDateFormat:Ljava/text/DateFormat;

.field private final mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mDay:I

.field private mDialog:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/email/activity/MessageListXL$ManagedDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mErrorMessageView:Landroid/widget/TextView;

.field private mFollowUpFlagAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/email/activity/setup/SpinnerOption;",
            ">;"
        }
    .end annotation
.end field

.field private mFollowUpFlagViewSpinner:Lcom/android/email/activity/CustomSpinner;

.field private mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

.field private mIsCreated:Z

.field private mIsMenuOpened:Z

.field private mItem:Lcom/android/email/activity/MessageListItem;

.field private mItemCheckboxPressed:Z

.field private mLandSplitMaxSize:I

.field private mLandSplitMinSize:I

.field private mLastErrorAccountId:J

.field private mLastUpdatedTime:J

.field private mLeftSplitPrevX:I

.field private mMailRefreshManagerListener:Lcom/android/email/activity/MessageListXL$RefreshListener;

.field private mMailboxCheckTask:Lcom/android/email/activity/MessageListXL$MailboxCheckTask;

.field private mMailboxCursor:Landroid/database/Cursor;

.field private mMailboxId:J

.field private mMenuOpenAgain:Z

.field private mMessageCheckerTask:Lcom/android/email/activity/MessageListXL$MessageCheckerTask;

.field private mMessageFacade:Lcom/android/email/combined/MessageFacade;

.field private mMessageId:J

.field private mMessageOrderManagerCallback:Lcom/android/email/activity/MessageListXL$MessageOrderManagerCallback;

.field private mMonth:I

.field private mOrderManager:Lcom/android/email/activity/MessageOrderManager;

.field private mOrientation:I

.field private mPartnerTooManyDialog:Landroid/app/AlertDialog;

.field private final mPortSplitMaxSize:I

.field private mPreviewLineSize:I

.field private mQueryDummyText:Landroid/widget/TextView;

.field private mQueryTextView:Landroid/widget/EditText;

.field private mRefreshAllTask:Lcom/android/email/activity/MessageListXL$RefreshAllTask;

.field private mRefreshManager:Lcom/android/email/RefreshManager;

.field private mRefreshTask:Lcom/android/email/activity/MessageListXL$RefreshTask;

.field private mRightSplitPrevX:I

.field private mSearchAdapter:Lcom/android/email/activity/SearchTypeSelectorAdapter;

.field private mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

.field private mSharedPreference:Landroid/content/SharedPreferences;

.field private mSubItem:Lcom/android/email/activity/MessageListSubTitleItem;

.field private mSubItemCheckboxPressed:Z

.field private mThreePane:Lcom/android/email/activity/ThreePaneLayout;

.field private mTimeFormat:Ljava/text/DateFormat;

.field private mYear:I

.field private mfontSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 177
    sput v5, Lcom/android/email/activity/MessageListXL;->mDefaultSelection:I

    .line 179
    sput-boolean v3, Lcom/android/email/activity/MessageListXL;->doesMadUsersRefresh:Z

    .line 187
    sput-boolean v5, Lcom/android/email/activity/MessageListXL;->mSplitMode:Z

    .line 190
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "timeStamp COLLATE NOCASE DESC"

    aput-object v1, v0, v3

    const-string v1, "timeStamp COLLATE NOCASE ASC"

    aput-object v1, v0, v5

    const-string v1, "displayName COLLATE NOCASE ASC, timeStamp DESC"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "displayName COLLATE NOCASE DESC, timeStamp DESC"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "flagRead COLLATE NOCASE ASC, timeStamp DESC"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "flagFavorite COLLATE NOCASE DESC, timeStamp DESC"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "timeStamp COLLATE NOCASE DESC"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "timeStamp COLLATE NOCASE DESC"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "importance COLLATE NOCASE DESC,timeStamp DESC"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "flagStatus COLLATE NOCASE DESC,timeStamp DESC"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/MessageListXL;->SORT_QUERY:[Ljava/lang/String;

    .line 318
    sput v3, Lcom/android/email/activity/MessageListXL;->sSortType:I

    .line 320
    sput v3, Lcom/android/email/activity/MessageListXL;->sViewMode:I

    .line 352
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    .line 407
    sput-boolean v3, Lcom/android/email/activity/MessageListXL;->sSearchMode:Z

    .line 426
    sput-object v6, Lcom/android/email/activity/MessageListXL;->sTypeface:Landroid/graphics/Typeface;

    .line 429
    sput v4, Lcom/android/email/activity/MessageListXL;->sLeftSplitType:I

    .line 431
    sput v4, Lcom/android/email/activity/MessageListXL;->sRightSplitType:I

    .line 459
    sput v3, Lcom/android/email/activity/MessageListXL;->sSelectedSearchType:I

    .line 461
    sput-object v6, Lcom/android/email/activity/MessageListXL;->sSearchString:Ljava/lang/String;

    .line 463
    sput-object v6, Lcom/android/email/activity/MessageListXL;->sSearchStrWithEscape:Ljava/lang/String;

    .line 465
    sput v3, Lcom/android/email/activity/MessageListXL;->sPreviousSortType:I

    .line 467
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/email/activity/MessageListXL;->sSearchString_datefrom:J

    .line 469
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/email/activity/MessageListXL;->sSearchString_dateto:J

    .line 471
    sput v3, Lcom/android/email/activity/MessageListXL;->sSearchMarginListLand:I

    .line 473
    sput v3, Lcom/android/email/activity/MessageListXL;->sSearchMarginViewLand:I

    .line 475
    sput v3, Lcom/android/email/activity/MessageListXL;->SELECT_MESSAGE_NORMAL:I

    .line 477
    sput v5, Lcom/android/email/activity/MessageListXL;->SELECT_MESSAGE_OLDER:I

    .line 479
    sput v7, Lcom/android/email/activity/MessageListXL;->SELECT_MESSAGE_NEWER:I

    .line 481
    sput-boolean v3, Lcom/android/email/activity/MessageListXL;->sInit:Z

    .line 4221
    sput-boolean v3, Lcom/android/email/activity/MessageListXL;->isRightSplitPressed:Z

    .line 4223
    sput-boolean v3, Lcom/android/email/activity/MessageListXL;->isLeftSplitPressed:Z

    .line 4229
    sput v4, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    .line 4231
    sput v4, Lcom/android/email/activity/MessageListXL;->sLeftSplitpointLand:I

    .line 4233
    sput v4, Lcom/android/email/activity/MessageListXL;->sLeftSplitpointPort:I

    .line 4235
    sput v4, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    .line 4238
    sput v4, Lcom/android/email/activity/MessageListXL;->sDefaultLeftPortSplitPoint:I

    .line 4240
    sput v4, Lcom/android/email/activity/MessageListXL;->sDefaultLeftLandSplitPoint:I

    .line 4242
    sput v4, Lcom/android/email/activity/MessageListXL;->sDefaultRightSplitPoint:I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 129
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 160
    iput-object v3, p0, Lcom/android/email/activity/MessageListXL;->mMessageFacade:Lcom/android/email/combined/MessageFacade;

    .line 237
    new-instance v0, Lcom/android/email/activity/MessageListXL$RefreshListener;

    invoke-direct {v0, p0, v3}, Lcom/android/email/activity/MessageListXL$RefreshListener;-><init>(Lcom/android/email/activity/MessageListXL;Lcom/android/email/activity/MessageListXL$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mMailRefreshManagerListener:Lcom/android/email/activity/MessageListXL$RefreshListener;

    .line 258
    new-instance v0, Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageListXLFragmentManager;-><init>(Lcom/android/email/activity/MessageListXL;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    .line 260
    new-instance v0, Lcom/android/email/activity/MessageListXL$MessageOrderManagerCallback;

    invoke-direct {v0, p0, v3}, Lcom/android/email/activity/MessageListXL$MessageOrderManagerCallback;-><init>(Lcom/android/email/activity/MessageListXL;Lcom/android/email/activity/MessageListXL$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mMessageOrderManagerCallback:Lcom/android/email/activity/MessageListXL$MessageOrderManagerCallback;

    .line 341
    iput v2, p0, Lcom/android/email/activity/MessageListXL;->SIZE_TINY:I

    .line 343
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/email/activity/MessageListXL;->SIZE_SMALL:I

    .line 345
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/email/activity/MessageListXL;->SIZE_NORMAL:I

    .line 347
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/email/activity/MessageListXL;->SIZE_LARGE:I

    .line 349
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/email/activity/MessageListXL;->SIZE_HUGE:I

    .line 354
    iput-wide v4, p0, Lcom/android/email/activity/MessageListXL;->mMailboxId:J

    .line 356
    iput-wide v4, p0, Lcom/android/email/activity/MessageListXL;->mMessageId:J

    .line 380
    iput-object v3, p0, Lcom/android/email/activity/MessageListXL;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 433
    iput v1, p0, Lcom/android/email/activity/MessageListXL;->mLandSplitMaxSize:I

    .line 437
    iput v1, p0, Lcom/android/email/activity/MessageListXL;->mLandSplitMinSize:I

    .line 440
    iput v1, p0, Lcom/android/email/activity/MessageListXL;->mPortSplitMaxSize:I

    .line 493
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListXL;->mIsMenuOpened:Z

    .line 495
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListXL;->mMenuOpenAgain:Z

    .line 497
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListXL;->mAnimationStarted:Z

    .line 501
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListXL;->mItemCheckboxPressed:Z

    .line 503
    iput-object v3, p0, Lcom/android/email/activity/MessageListXL;->mItem:Lcom/android/email/activity/MessageListItem;

    .line 505
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListXL;->mSubItemCheckboxPressed:Z

    .line 507
    iput-object v3, p0, Lcom/android/email/activity/MessageListXL;->mSubItem:Lcom/android/email/activity/MessageListSubTitleItem;

    .line 509
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/email/activity/MessageListXL;->mLastUpdatedTime:J

    .line 513
    iput-object v3, p0, Lcom/android/email/activity/MessageListXL;->mPartnerTooManyDialog:Landroid/app/AlertDialog;

    .line 517
    iput-object v3, p0, Lcom/android/email/activity/MessageListXL;->mDialog:Landroid/util/SparseArray;

    .line 2619
    new-instance v0, Lcom/android/email/activity/MessageListXL$8;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageListXL$8;-><init>(Lcom/android/email/activity/MessageListXL;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->DPMReceiver:Landroid/content/BroadcastReceiver;

    .line 3533
    new-instance v0, Lcom/android/email/activity/MessageListXL$14;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageListXL$14;-><init>(Lcom/android/email/activity/MessageListXL;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 4225
    iput v2, p0, Lcom/android/email/activity/MessageListXL;->mLeftSplitPrevX:I

    .line 4227
    iput v2, p0, Lcom/android/email/activity/MessageListXL;->mRightSplitPrevX:I

    .line 4889
    return-void
.end method

.method private ConversationMoveAlways(Ljava/util/Set;JJJ)V
    .locals 11
    .parameter
    .parameter "toMailboxId"
    .parameter "targetAccountId"
    .parameter "fromMailboxId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;JJJ)V"
        }
    .end annotation

    .prologue
    .line 1369
    .local p1, selectedTitleSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1370
    .local v9, cloneSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1371
    .local v3, convId:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mController:Lcom/android/email/Controller;

    const/4 v8, 0x1

    move-wide/from16 v1, p6

    move-wide v4, p4

    move-wide v6, p2

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/Controller;->moveConversationAlways(JLjava/lang/String;JJI)V

    goto :goto_0

    .line 1374
    .end local v3           #convId:Ljava/lang/String;
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 1377
    return-void
.end method

.method private IsEAS()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 2644
    sget-wide v1, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 2660
    :cond_0
    :goto_0
    return v0

    .line 2647
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 2648
    sget-wide v2, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    .line 2650
    if-eqz v2, :cond_0

    .line 2653
    invoke-virtual {v2, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v1

    .line 2656
    if-eqz v1, :cond_0

    .line 2659
    iget-object v0, v1, Lcom/android/email/mail/Store$StoreInfo;->mScheme:Ljava/lang/String;

    .line 2660
    const-string v1, "eas"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/AccountSelectorAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/email/activity/MessageListXL;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->loadAccounts()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/email/activity/MessageListXL;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mMailboxCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/email/activity/MessageListXL;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/email/activity/MessageListXL;->mMailboxCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/email/activity/MessageListXL;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->onCompose()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400()I
    .locals 1

    .prologue
    .line 129
    sget v0, Lcom/android/email/activity/MessageListXL;->sSelectedSearchType:I

    return v0
.end method

.method static synthetic access$1402(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 129
    sput p0, Lcom/android/email/activity/MessageListXL;->sSelectedSearchType:I

    return p0
.end method

.method static synthetic access$1500(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/email/activity/MessageListXL;[J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListXL;->onMoveMessages([J)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/email/activity/MessageListXL;[J[Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 129
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MessageListXL;->onConversationMoveAlways([J[Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1802(Lcom/android/email/activity/MessageListXL;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/android/email/activity/MessageListXL;->mItemCheckboxPressed:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/android/email/activity/MessageListXL;Lcom/android/email/activity/MessageListItem;)Lcom/android/email/activity/MessageListItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/email/activity/MessageListXL;->mItem:Lcom/android/email/activity/MessageListItem;

    return-object p1
.end method

.method static synthetic access$2002(Lcom/android/email/activity/MessageListXL;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/android/email/activity/MessageListXL;->mSubItemCheckboxPressed:Z

    return p1
.end method

.method static synthetic access$2102(Lcom/android/email/activity/MessageListXL;Lcom/android/email/activity/MessageListSubTitleItem;)Lcom/android/email/activity/MessageListSubTitleItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/email/activity/MessageListXL;->mSubItem:Lcom/android/email/activity/MessageListSubTitleItem;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/android/email/activity/MessageListXL;Ljava/text/DateFormat;)Ljava/text/DateFormat;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/email/activity/MessageListXL;->mDateFormat:Ljava/text/DateFormat;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/android/email/activity/MessageListXL;Ljava/text/DateFormat;)Ljava/text/DateFormat;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/email/activity/MessageListXL;->mTimeFormat:Ljava/text/DateFormat;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/email/activity/MessageListXL;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->updateMessageOrderManager()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/email/activity/MessageListXL;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->stopMessageOrderManager()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageOrderManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/Controller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mController:Lcom/android/email/Controller;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/email/activity/MessageListXL;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->onCurrentMessageGone()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/email/activity/MessageListXL;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListXL;->onBackPressed(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000()J
    .locals 2

    .prologue
    .line 129
    sget-wide v0, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    return-wide v0
.end method

.method static synthetic access$3002(J)J
    .locals 0
    .parameter "x0"

    .prologue
    .line 129
    sput-wide p0, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    return-wide p0
.end method

.method static synthetic access$3100(Lcom/android/email/activity/MessageListXL;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->IsEAS()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/email/activity/MessageListXL;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 129
    iget-wide v0, p0, Lcom/android/email/activity/MessageListXL;->mMessageId:J

    return-wide v0
.end method

.method static synthetic access$3300(Lcom/android/email/activity/MessageListXL;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 129
    iget-wide v0, p0, Lcom/android/email/activity/MessageListXL;->mMailboxId:J

    return-wide v0
.end method

.method static synthetic access$3302(Lcom/android/email/activity/MessageListXL;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput-wide p1, p0, Lcom/android/email/activity/MessageListXL;->mMailboxId:J

    return-wide p1
.end method

.method static synthetic access$3400(Lcom/android/email/activity/MessageListXL;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->moveToOlder()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/email/activity/MessageListXL;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->moveToNewer()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/android/email/activity/MessageListXL;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListXL;->mIsCreated:Z

    return v0
.end method

.method static synthetic access$3702(Lcom/android/email/activity/MessageListXL;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput-wide p1, p0, Lcom/android/email/activity/MessageListXL;->mLastErrorAccountId:J

    return-wide p1
.end method

.method static synthetic access$3800(Lcom/android/email/activity/MessageListXL;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListXL;->updateAccountList(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/CustomSpinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    return-object v0
.end method

.method static synthetic access$4000()I
    .locals 1

    .prologue
    .line 129
    sget v0, Lcom/android/email/activity/MessageListXL;->sViewMode:I

    return v0
.end method

.method static synthetic access$4002(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 129
    sput p0, Lcom/android/email/activity/MessageListXL;->sViewMode:I

    return p0
.end method

.method static synthetic access$4100()I
    .locals 1

    .prologue
    .line 129
    sget v0, Lcom/android/email/activity/MessageListXL;->sSortType:I

    return v0
.end method

.method static synthetic access$4102(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 129
    sput p0, Lcom/android/email/activity/MessageListXL;->sSortType:I

    return p0
.end method

.method static synthetic access$4200(Lcom/android/email/activity/MessageListXL;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->updateOrderManager()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/email/activity/MessageListXL;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget v0, p0, Lcom/android/email/activity/MessageListXL;->mfontSize:I

    return v0
.end method

.method static synthetic access$4302(Lcom/android/email/activity/MessageListXL;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput p1, p0, Lcom/android/email/activity/MessageListXL;->mfontSize:I

    return p1
.end method

.method static synthetic access$4400()I
    .locals 1

    .prologue
    .line 129
    sget v0, Lcom/android/email/activity/MessageListXL;->mDefaultSelection:I

    return v0
.end method

.method static synthetic access$4402(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 129
    sput p0, Lcom/android/email/activity/MessageListXL;->mDefaultSelection:I

    return p0
.end method

.method static synthetic access$4500(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/SearchTypeSelectorAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mSearchAdapter:Lcom/android/email/activity/SearchTypeSelectorAdapter;

    return-object v0
.end method

.method static synthetic access$4600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/android/email/activity/MessageListXL;->sSearchString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4602(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 129
    sput-object p0, Lcom/android/email/activity/MessageListXL;->sSearchString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/android/email/activity/MessageListXL;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListXL;->mAnimationStarted:Z

    return v0
.end method

.method static synthetic access$4702(Lcom/android/email/activity/MessageListXL;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/android/email/activity/MessageListXL;->mAnimationStarted:Z

    return p1
.end method

.method static synthetic access$4800(Lcom/android/email/activity/MessageListXL;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mQueryDummyText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/CustomSpinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/email/activity/MessageListXL;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->updateViewsVisibility()V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/email/activity/MessageListXL;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->onResultSearchClose()V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/email/activity/MessageListXL;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget v0, p0, Lcom/android/email/activity/MessageListXL;->mYear:I

    return v0
.end method

.method static synthetic access$5202(Lcom/android/email/activity/MessageListXL;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput p1, p0, Lcom/android/email/activity/MessageListXL;->mYear:I

    return p1
.end method

.method static synthetic access$5300(Lcom/android/email/activity/MessageListXL;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget v0, p0, Lcom/android/email/activity/MessageListXL;->mMonth:I

    return v0
.end method

.method static synthetic access$5302(Lcom/android/email/activity/MessageListXL;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput p1, p0, Lcom/android/email/activity/MessageListXL;->mMonth:I

    return p1
.end method

.method static synthetic access$5400(Lcom/android/email/activity/MessageListXL;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget v0, p0, Lcom/android/email/activity/MessageListXL;->mDay:I

    return v0
.end method

.method static synthetic access$5402(Lcom/android/email/activity/MessageListXL;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput p1, p0, Lcom/android/email/activity/MessageListXL;->mDay:I

    return p1
.end method

.method static synthetic access$5502(J)J
    .locals 0
    .parameter "x0"

    .prologue
    .line 129
    sput-wide p0, Lcom/android/email/activity/MessageListXL;->sSearchString_datefrom:J

    return-wide p0
.end method

.method static synthetic access$5602(J)J
    .locals 0
    .parameter "x0"

    .prologue
    .line 129
    sput-wide p0, Lcom/android/email/activity/MessageListXL;->sSearchString_dateto:J

    return-wide p0
.end method

.method static synthetic access$5700(Lcom/android/email/activity/MessageListXL;JZ)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 129
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MessageListXL;->formatDate(JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/ThreePaneLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/email/activity/MessageListXL;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageListXL;->clearErrorMessage(J)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/email/activity/MessageListXL;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->updateNavigationArrows()V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/email/activity/MessageListXL;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mPartnerTooManyDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$6002(Lcom/android/email/activity/MessageListXL;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/email/activity/MessageListXL;->mPartnerTooManyDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$6100(Lcom/android/email/activity/MessageListXL;Ljava/lang/String;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 129
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MessageListXL;->showErrorMessage(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/email/activity/MessageListXL;)Landroid/app/DatePickerDialog$OnDateSetListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/email/activity/MessageListXL;)Landroid/app/ActionBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/email/activity/MessageListXL;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mActionBarCustomView:Landroid/view/View;

    return-object v0
.end method

.method public static actionOpenAccount(Landroid/app/Activity;J)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 525
    const-class v0, Lcom/android/email/activity/MessageListXL;

    invoke-static {p0, v0}, Lcom/android/emailcommon/utility/Utility;->createRestartAppIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 526
    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-eqz v1, :cond_0

    .line 527
    const-string v1, "ACCOUNT_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 529
    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 530
    return-void
.end method

.method public static actionOpenMailbox(Landroid/app/Activity;JJ)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v1, -0x1

    .line 540
    cmp-long v0, p1, v1

    if-eqz v0, :cond_0

    cmp-long v0, p3, v1

    if-nez v0, :cond_1

    .line 541
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0

    .line 543
    :cond_1
    const-class v0, Lcom/android/email/activity/MessageListXL;

    invoke-static {p0, v0}, Lcom/android/emailcommon/utility/Utility;->createRestartAppIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 544
    const-string v1, "ACCOUNT_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 545
    const-string v1, "MAILBOX_ID"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 546
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 547
    return-void
.end method

.method public static actionOpenMessage(Landroid/app/Activity;JJJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v1, -0x1

    .line 559
    cmp-long v0, p1, v1

    if-eqz v0, :cond_0

    cmp-long v0, p3, v1

    if-eqz v0, :cond_0

    cmp-long v0, p5, v1

    if-nez v0, :cond_1

    .line 560
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0

    .line 562
    :cond_1
    const-class v0, Lcom/android/email/activity/MessageListXL;

    invoke-static {p0, v0}, Lcom/android/emailcommon/utility/Utility;->createRestartAppIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 563
    const-string v1, "ACCOUNT_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 564
    const-string v1, "MAILBOX_ID"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 565
    const-string v1, "MESSAGE_ID"

    invoke-virtual {v0, v1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 566
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 567
    return-void
.end method

.method private changeFontSize_preference()V
    .locals 3

    .prologue
    .line 2185
    sget-object v2, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v1

    .line 2186
    .local v1, settingValue:Lcom/android/email/Preferences;
    invoke-virtual {v1}, Lcom/android/email/Preferences;->getTextZoom()I

    move-result v0

    .line 2188
    .local v0, fontSize:I
    iget v2, p0, Lcom/android/email/activity/MessageListXL;->mfontSize:I

    if-eq v2, v0, :cond_0

    .line 2189
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/email/activity/MessageViewFragment;->setViewFontSize(I)V

    .line 2191
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/email/activity/MessageListFragment;->setMessageListFontSize(I)V

    .line 2192
    iput v0, p0, Lcom/android/email/activity/MessageListXL;->mfontSize:I

    .line 2194
    :cond_0
    return-void
.end method

.method private changePreviewLineSize_preference()V
    .locals 3

    .prologue
    .line 2197
    sget-object v2, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v1

    .line 2198
    .local v1, settingValue:Lcom/android/email/Preferences;
    invoke-virtual {v1}, Lcom/android/email/Preferences;->getPreViewLine()I

    move-result v0

    .line 2199
    .local v0, previewLineSize:I
    iget v2, p0, Lcom/android/email/activity/MessageListXL;->mPreviewLineSize:I

    if-eq v2, v0, :cond_0

    .line 2200
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/email/activity/MessageListFragment;->setPreviewLinstSize(I)V

    .line 2201
    iput v0, p0, Lcom/android/email/activity/MessageListXL;->mPreviewLineSize:I

    .line 2203
    :cond_0
    return-void
.end method

.method private changeSplitMode_preference()V
    .locals 3

    .prologue
    .line 2216
    sget-object v2, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v0

    .line 2218
    .local v0, settingValue:Lcom/android/email/Preferences;
    invoke-virtual {v0}, Lcom/android/email/Preferences;->getSplitMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2219
    const/4 v1, 0x1

    .line 2224
    .local v1, splitMode:Z
    :goto_0
    sget-boolean v2, Lcom/android/email/activity/MessageListXL;->mSplitMode:Z

    if-eq v2, v1, :cond_0

    .line 2225
    sput-boolean v1, Lcom/android/email/activity/MessageListXL;->mSplitMode:Z

    .line 2227
    :cond_0
    return-void

    .line 2221
    .end local v1           #splitMode:Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1       #splitMode:Z
    goto :goto_0
.end method

.method private changeTopLineMode_preference()V
    .locals 3

    .prologue
    .line 2207
    sget-object v2, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v0

    .line 2208
    .local v0, settingValue:Lcom/android/email/Preferences;
    invoke-virtual {v0}, Lcom/android/email/Preferences;->getTopLineInfoMode()I

    move-result v1

    .line 2209
    .local v1, topLineMode:I
    sget v2, Lcom/android/email/activity/MessageListXL;->mTopLineMode:I

    if-eq v2, v1, :cond_0

    .line 2210
    sput v1, Lcom/android/email/activity/MessageListXL;->mTopLineMode:I

    .line 2212
    :cond_0
    return-void
.end method

.method private checkITPolicy_AllowPOPIMAP()Z
    .locals 1

    .prologue
    .line 2631
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/SecurityPolicy;->IsAllowPOPIMAPEmailSetted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2635
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->IsEAS()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2636
    const/4 v0, 0x0

    .line 2639
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private clearErrorMessage(J)V
    .locals 2
    .parameter "accountId"

    .prologue
    .line 1943
    iget-wide v0, p0, Lcom/android/email/activity/MessageListXL;->mLastErrorAccountId:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 1944
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->dismissErrorMessage()V

    .line 1946
    :cond_0
    return-void
.end method

.method private dismissErrorMessage()V
    .locals 0

    .prologue
    .line 1953
    return-void
.end method

.method private formatDate(JZ)Ljava/lang/String;
    .locals 2
    .parameter "millis"
    .parameter "withYear"

    .prologue
    .line 3525
    sget-object v1, Lcom/android/email/activity/MessageListXL;->sDateFormat:Ljava/text/DateFormat;

    if-nez v1, :cond_0

    .line 3526
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListXL;->sDateFormat:Ljava/text/DateFormat;

    .line 3528
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 3530
    .local v0, date:Ljava/util/Date;
    sget-object v1, Lcom/android/email/activity/MessageListXL;->sDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getCurrentAccountId()J
    .locals 2

    .prologue
    .line 2107
    sget-wide v0, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    return-wide v0
.end method

.method public static getDateFormat()Ljava/text/DateFormat;
    .locals 1

    .prologue
    .line 2119
    sget-object v0, Lcom/android/email/activity/MessageListXL;->sDateFormat:Ljava/text/DateFormat;

    return-object v0
.end method

.method public static getSearchMarginListLand()I
    .locals 1

    .prologue
    .line 2131
    sget v0, Lcom/android/email/activity/MessageListXL;->sSearchMarginListLand:I

    return v0
.end method

.method public static getSearchMarginViewLand()I
    .locals 1

    .prologue
    .line 2135
    sget v0, Lcom/android/email/activity/MessageListXL;->sSearchMarginViewLand:I

    return v0
.end method

.method public static getSearchSelectionString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2995
    sget-object v0, Lcom/android/email/activity/MessageListXL;->sSearchString:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->getStringWithEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/MessageListXL;->sSearchStrWithEscape:Ljava/lang/String;

    .line 2996
    sget v0, Lcom/android/email/activity/MessageListXL;->sSelectedSearchType:I

    packed-switch v0, :pswitch_data_0

    .line 3014
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND ( displayName like \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/email/activity/MessageListXL;->sSearchStrWithEscape:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\' ESCAPE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR subject like \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/email/activity/MessageListXL;->sSearchStrWithEscape:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\' ESCAPE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR _id IN (SELECT messageKey FROM BodyDatabase.Body WHERE textContent like \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/email/activity/MessageListXL;->sSearchStrWithEscape:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\' ESCAPE \'\\\'))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3028
    :goto_0
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetSearchString "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3029
    return-object v0

    .line 2998
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND ( subject like \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/email/activity/MessageListXL;->sSearchStrWithEscape:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\' ESCAPE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3002
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND ( displayName like \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/email/activity/MessageListXL;->sSearchStrWithEscape:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\' ESCAPE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3006
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND ( timeStamp between "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v1, Lcom/android/email/activity/MessageListXL;->sSearchString_datefrom:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v1, Lcom/android/email/activity/MessageListXL;->sSearchString_dateto:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 3010
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND ( subject like \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/email/activity/MessageListXL;->sSearchStrWithEscape:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\' ESCAPE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2996
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getSearchString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2115
    sget-object v0, Lcom/android/email/activity/MessageListXL;->sSearchString:Ljava/lang/String;

    return-object v0
.end method

.method public static getSelectedSearchType()I
    .locals 1

    .prologue
    .line 2111
    sget v0, Lcom/android/email/activity/MessageListXL;->sSelectedSearchType:I

    return v0
.end method

.method public static getSortType()I
    .locals 1

    .prologue
    .line 2090
    sget v0, Lcom/android/email/activity/MessageListXL;->sSortType:I

    return v0
.end method

.method private getSpinnerOptions()[Lcom/android/email/activity/setup/SpinnerOption;
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x3

    .line 3183
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxId()J

    move-result-wide v0

    .line 3185
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 3186
    long-to-int v0, v0

    .line 3191
    :goto_0
    if-eq v0, v9, :cond_0

    if-eq v0, v5, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    int-to-long v1, v0

    const-wide/16 v3, -0x5

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    int-to-long v0, v0

    const-wide/16 v2, -0x6

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 3194
    :cond_0
    new-array v0, v9, [Lcom/android/email/activity/setup/SpinnerOption;

    new-instance v1, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0802d0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0802ce

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0802ca

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v1, v0, v8

    new-instance v1, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0801ce

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v1, v0, v5

    .line 3208
    :goto_1
    return-object v0

    .line 3188
    :cond_1
    sget-object v0, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v0

    goto :goto_0

    .line 3202
    :cond_2
    new-array v0, v9, [Lcom/android/email/activity/setup/SpinnerOption;

    new-instance v1, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0802d0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0802ce

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0802cd

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v1, v0, v8

    new-instance v1, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0801ce

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v1, v0, v5

    goto :goto_1
.end method

.method public static getSplitMode()Z
    .locals 1

    .prologue
    .line 2147
    sget-boolean v0, Lcom/android/email/activity/MessageListXL;->mSplitMode:Z

    return v0
.end method

.method public static getStringWithEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 2980
    .line 2981
    if-eqz p0, :cond_0

    .line 2982
    const-string v0, "\\\\"

    const-string v1, "\\\\\\\\"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2983
    const-string v1, "\\%"

    const-string v2, "\\\\%"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2984
    const-string v1, "\\_"

    const-string v2, "\\\\_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2985
    const-string v1, "\\\'"

    const-string v2, "\\\\\'\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2989
    :goto_0
    return-object v0

    .line 2987
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static getTimeFormat()Ljava/text/DateFormat;
    .locals 1

    .prologue
    .line 2127
    sget-object v0, Lcom/android/email/activity/MessageListXL;->sTimeFormat:Ljava/text/DateFormat;

    return-object v0
.end method

.method public static getTopLineMode()I
    .locals 1

    .prologue
    .line 2143
    sget v0, Lcom/android/email/activity/MessageListXL;->mTopLineMode:I

    return v0
.end method

.method public static getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 2103
    sget-object v0, Lcom/android/email/activity/MessageListXL;->sTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public static getViewMode()I
    .locals 1

    .prologue
    .line 2099
    sget v0, Lcom/android/email/activity/MessageListXL;->sViewMode:I

    return v0
.end method

.method private handleLeftSplit(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    const/16 v10, 0x7d

    const/4 v9, 0x2

    const/16 v8, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4384
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v3, v6

    .line 4385
    .local v3, pointX:I
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v6

    if-nez v6, :cond_1

    move v0, v4

    .line 4387
    .local v0, canMoveLeftSeparator:Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 4531
    :cond_0
    :goto_1
    sget-boolean v6, Lcom/android/email/activity/MessageListXL;->isLeftSplitPressed:Z

    if-eqz v6, :cond_18

    .line 4534
    :goto_2
    return v4

    .end local v0           #canMoveLeftSeparator:Z
    :cond_1
    move v0, v5

    .line 4385
    goto :goto_0

    .line 4389
    .restart local v0       #canMoveLeftSeparator:Z
    :pswitch_0
    if-eqz v0, :cond_0

    .line 4390
    iput v3, p0, Lcom/android/email/activity/MessageListXL;->mLeftSplitPrevX:I

    .line 4391
    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    sub-int v6, v3, v6

    const/16 v7, 0x1e

    if-ge v6, v7, :cond_2

    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    sub-int v6, v3, v6

    if-gez v6, :cond_3

    :cond_2
    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    sub-int v6, v3, v6

    if-gtz v6, :cond_0

    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    sub-int v6, v3, v6

    const/16 v7, -0x1e

    if-le v6, v7, :cond_0

    .line 4393
    :cond_3
    sput-boolean v4, Lcom/android/email/activity/MessageListXL;->isLeftSplitPressed:Z

    .line 4394
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/email/activity/MailboxListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->invalidateViews()V

    .line 4395
    sput v4, Lcom/android/email/activity/MessageListXL;->sLeftSplitType:I

    .line 4396
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/email/activity/MailboxListFragment;->setListSplit(I)V

    goto :goto_1

    .line 4401
    :pswitch_1
    if-eqz v0, :cond_0

    sget-boolean v6, Lcom/android/email/activity/MessageListXL;->isLeftSplitPressed:Z

    if-eqz v6, :cond_0

    .line 4402
    iget v6, p0, Lcom/android/email/activity/MessageListXL;->mOrientation:I

    if-ne v6, v9, :cond_a

    .line 4403
    const/16 v6, 0xaf

    if-lt v3, v6, :cond_4

    iget v6, p0, Lcom/android/email/activity/MessageListXL;->mLandSplitMaxSize:I

    if-le v3, v6, :cond_5

    .line 4404
    :cond_4
    const/16 v6, 0xaf

    if-ge v3, v6, :cond_0

    .line 4405
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v6, v8}, Lcom/android/email/activity/ThreePaneLayout;->controlLeftSplitBar(I)V

    .line 4406
    sput v8, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    .line 4407
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/email/activity/MailboxListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->invalidateViews()V

    .line 4409
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v6, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 4410
    sput v4, Lcom/android/email/activity/MessageListXL;->sLeftSplitType:I

    .line 4411
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/email/activity/MailboxListFragment;->setListSplit(I)V

    .line 4413
    iput v5, p0, Lcom/android/email/activity/MessageListXL;->mLeftSplitPrevX:I

    goto :goto_1

    .line 4417
    :cond_5
    const/4 v1, 0x0

    .line 4418
    .local v1, needUpdateSplitImage:Z
    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    if-eq v6, v8, :cond_6

    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitType:I

    if-eq v6, v4, :cond_7

    .line 4420
    :cond_6
    const/4 v1, 0x1

    .line 4422
    :cond_7
    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    iget v7, p0, Lcom/android/email/activity/MessageListXL;->mLeftSplitPrevX:I

    sub-int/2addr v7, v3

    neg-int v7, v7

    add-int/2addr v6, v7

    sput v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    .line 4423
    if-eqz v1, :cond_8

    .line 4424
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/email/activity/MailboxListFragment;->setListSplit(I)V

    .line 4427
    :cond_8
    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    if-le v6, v10, :cond_9

    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    iget v7, p0, Lcom/android/email/activity/MessageListXL;->mLandSplitMaxSize:I

    if-ge v6, v7, :cond_9

    .line 4428
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    sget v7, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    invoke-virtual {v6, v7}, Lcom/android/email/activity/ThreePaneLayout;->controlLeftSplitBar(I)V

    .line 4430
    :cond_9
    iput v3, p0, Lcom/android/email/activity/MessageListXL;->mLeftSplitPrevX:I

    .line 4431
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListFragment;->updateMessageCount()V

    goto/16 :goto_1

    .line 4433
    .end local v1           #needUpdateSplitImage:Z
    :cond_a
    if-lt v3, v10, :cond_b

    const/4 v6, -0x1

    if-le v3, v6, :cond_c

    .line 4440
    :cond_b
    if-ge v3, v10, :cond_0

    .line 4441
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v6, v8}, Lcom/android/email/activity/ThreePaneLayout;->controlLeftSplitBar(I)V

    .line 4442
    sput v8, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    .line 4443
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v6}, Lcom/android/email/activity/ThreePaneLayout;->getMeasuredWidth()I

    move-result v6

    sget v7, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    sub-int v2, v6, v7

    .line 4444
    .local v2, newWidth:I
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/email/activity/MessageViewFragment;->setBubbleLayout(I)V

    .line 4445
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v6, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 4446
    sput v4, Lcom/android/email/activity/MessageListXL;->sLeftSplitType:I

    .line 4447
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/email/activity/MailboxListFragment;->setListSplit(I)V

    .line 4449
    iput v5, p0, Lcom/android/email/activity/MessageListXL;->mLeftSplitPrevX:I

    goto/16 :goto_1

    .line 4453
    .end local v2           #newWidth:I
    :cond_c
    const/4 v1, 0x0

    .line 4454
    .restart local v1       #needUpdateSplitImage:Z
    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    if-eq v6, v8, :cond_d

    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitType:I

    if-eq v6, v4, :cond_e

    .line 4456
    :cond_d
    const/4 v1, 0x1

    .line 4458
    :cond_e
    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    iget v7, p0, Lcom/android/email/activity/MessageListXL;->mLeftSplitPrevX:I

    sub-int/2addr v7, v3

    neg-int v7, v7

    add-int/2addr v6, v7

    sput v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    .line 4459
    if-eqz v1, :cond_f

    .line 4460
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/email/activity/MailboxListFragment;->setListSplit(I)V

    .line 4463
    :cond_f
    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    const/16 v7, 0x64

    if-le v6, v7, :cond_10

    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    const/4 v7, -0x1

    if-ge v6, v7, :cond_10

    .line 4470
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    sget v7, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    invoke-virtual {v6, v7}, Lcom/android/email/activity/ThreePaneLayout;->controlLeftSplitBar(I)V

    .line 4472
    :cond_10
    iput v3, p0, Lcom/android/email/activity/MessageListXL;->mLeftSplitPrevX:I

    .line 4473
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListFragment;->updateMessageCount()V

    goto/16 :goto_1

    .line 4478
    .end local v1           #needUpdateSplitImage:Z
    :pswitch_2
    if-eqz v0, :cond_13

    sget-boolean v6, Lcom/android/email/activity/MessageListXL;->isLeftSplitPressed:Z

    if-eqz v6, :cond_13

    .line 4484
    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    if-le v6, v10, :cond_11

    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    const/4 v7, -0x1

    if-ge v6, v7, :cond_11

    .line 4485
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v6}, Lcom/android/email/activity/ThreePaneLayout;->getMeasuredWidth()I

    move-result v6

    sget v7, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    sub-int v2, v6, v7

    .line 4486
    .restart local v2       #newWidth:I
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/email/activity/MessageViewFragment;->setBubbleLayout(I)V

    .line 4488
    .end local v2           #newWidth:I
    :cond_11
    sput-boolean v5, Lcom/android/email/activity/MessageListXL;->isLeftSplitPressed:Z

    .line 4489
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/email/activity/MailboxListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->invalidateViews()V

    .line 4490
    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    if-ne v6, v8, :cond_12

    .line 4491
    sput v9, Lcom/android/email/activity/MessageListXL;->sLeftSplitType:I

    .line 4492
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/android/email/activity/MailboxListFragment;->setListSplit(I)V

    goto/16 :goto_1

    .line 4494
    :cond_12
    sput v5, Lcom/android/email/activity/MessageListXL;->sLeftSplitType:I

    .line 4495
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/email/activity/MailboxListFragment;->setListSplit(I)V

    goto/16 :goto_1

    .line 4497
    :cond_13
    sget-boolean v6, Lcom/android/email/activity/MessageListXL;->isLeftSplitPressed:Z

    if-eqz v6, :cond_0

    .line 4498
    sput-boolean v5, Lcom/android/email/activity/MessageListXL;->isLeftSplitPressed:Z

    .line 4499
    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    if-ne v6, v8, :cond_14

    .line 4500
    sput v9, Lcom/android/email/activity/MessageListXL;->sLeftSplitType:I

    .line 4501
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/android/email/activity/MailboxListFragment;->setListSplit(I)V

    goto/16 :goto_1

    .line 4503
    :cond_14
    sput v5, Lcom/android/email/activity/MessageListXL;->sLeftSplitType:I

    .line 4504
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/email/activity/MailboxListFragment;->setListSplit(I)V

    goto/16 :goto_1

    .line 4509
    :pswitch_3
    if-eqz v0, :cond_16

    sget-boolean v6, Lcom/android/email/activity/MessageListXL;->isLeftSplitPressed:Z

    if-eqz v6, :cond_16

    .line 4510
    sput-boolean v5, Lcom/android/email/activity/MessageListXL;->isLeftSplitPressed:Z

    .line 4511
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/email/activity/MailboxListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->invalidateViews()V

    .line 4512
    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    if-ne v6, v8, :cond_15

    .line 4513
    sput v9, Lcom/android/email/activity/MessageListXL;->sLeftSplitType:I

    .line 4514
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/android/email/activity/MailboxListFragment;->setListSplit(I)V

    goto/16 :goto_1

    .line 4516
    :cond_15
    sput v5, Lcom/android/email/activity/MessageListXL;->sLeftSplitType:I

    .line 4517
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/email/activity/MailboxListFragment;->setListSplit(I)V

    goto/16 :goto_1

    .line 4519
    :cond_16
    sget-boolean v6, Lcom/android/email/activity/MessageListXL;->isLeftSplitPressed:Z

    if-eqz v6, :cond_0

    .line 4520
    sput-boolean v5, Lcom/android/email/activity/MessageListXL;->isLeftSplitPressed:Z

    .line 4521
    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    if-ne v6, v8, :cond_17

    .line 4522
    sput v9, Lcom/android/email/activity/MessageListXL;->sLeftSplitType:I

    .line 4523
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/android/email/activity/MailboxListFragment;->setListSplit(I)V

    goto/16 :goto_1

    .line 4525
    :cond_17
    sput v5, Lcom/android/email/activity/MessageListXL;->sLeftSplitType:I

    .line 4526
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/email/activity/MailboxListFragment;->setListSplit(I)V

    goto/16 :goto_1

    :cond_18
    move v4, v5

    .line 4534
    goto/16 :goto_2

    .line 4387
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private handleRightSplit(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "event"

    .prologue
    const/16 v9, 0x8

    const/4 v3, 0x1

    const/4 v8, 0x2

    const/4 v4, 0x0

    .line 4247
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v2, v5

    .line 4248
    .local v2, pointX:I
    iget v5, p0, Lcom/android/email/activity/MessageListXL;->mOrientation:I

    if-ne v5, v8, :cond_2

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v5

    if-ne v5, v3, :cond_2

    move v0, v3

    .line 4250
    .local v0, canMoveRightSeparator:Z
    :goto_0
    sget v5, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    if-gez v5, :cond_0

    sget-boolean v5, Lcom/android/email/activity/Welcome;->needFull:Z

    if-nez v5, :cond_0

    .line 4251
    sget v5, Lcom/android/email/activity/MessageListXL;->sLeftSplitpointLand:I

    sput v5, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    .line 4253
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 4376
    :cond_1
    :goto_1
    sget-boolean v5, Lcom/android/email/activity/MessageListXL;->isRightSplitPressed:Z

    if-eqz v5, :cond_10

    .line 4379
    :goto_2
    return v3

    .end local v0           #canMoveRightSeparator:Z
    :cond_2
    move v0, v4

    .line 4248
    goto :goto_0

    .line 4255
    .restart local v0       #canMoveRightSeparator:Z
    :pswitch_0
    if-eqz v0, :cond_1

    .line 4256
    iput v2, p0, Lcom/android/email/activity/MessageListXL;->mRightSplitPrevX:I

    .line 4257
    sget v5, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    sub-int v5, v2, v5

    const/16 v6, 0x1e

    if-ge v5, v6, :cond_3

    sget v5, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    sub-int v5, v2, v5

    if-gez v5, :cond_4

    :cond_3
    sget v5, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    sub-int v5, v2, v5

    if-gtz v5, :cond_1

    sget v5, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    sub-int v5, v2, v5

    const/16 v6, -0xf

    if-le v5, v6, :cond_1

    .line 4259
    :cond_4
    sput-boolean v3, Lcom/android/email/activity/MessageListXL;->isRightSplitPressed:Z

    .line 4260
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->invalidateViews()V

    .line 4265
    sput v3, Lcom/android/email/activity/MessageListXL;->sRightSplitType:I

    .line 4266
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/email/activity/MessageListFragment;->setListSplit(I)V

    goto :goto_1

    .line 4272
    :pswitch_1
    if-eqz v0, :cond_1

    sget-boolean v5, Lcom/android/email/activity/MessageListXL;->isRightSplitPressed:Z

    if-eqz v5, :cond_1

    .line 4273
    iget v5, p0, Lcom/android/email/activity/MessageListXL;->mLandSplitMinSize:I

    if-lt v2, v5, :cond_1

    iget v5, p0, Lcom/android/email/activity/MessageListXL;->mLandSplitMaxSize:I

    if-gt v2, v5, :cond_1

    .line 4294
    sget v5, Lcom/android/email/activity/MessageListXL;->sRightSplitType:I

    if-eq v5, v3, :cond_5

    .line 4295
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/email/activity/MessageListFragment;->setListSplit(I)V

    .line 4297
    :cond_5
    sget v5, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    iget v6, p0, Lcom/android/email/activity/MessageListXL;->mRightSplitPrevX:I

    sub-int/2addr v6, v2

    neg-int v6, v6

    add-int/2addr v5, v6

    sput v5, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    .line 4299
    sget v5, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    const/16 v6, 0x7d

    if-le v5, v6, :cond_6

    sget v5, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    iget v6, p0, Lcom/android/email/activity/MessageListXL;->mLandSplitMaxSize:I

    if-ge v5, v6, :cond_6

    .line 4300
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    sget v6, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    invoke-virtual {v5, v6}, Lcom/android/email/activity/ThreePaneLayout;->controlRightSplitBar(I)V

    .line 4302
    :cond_6
    iput v2, p0, Lcom/android/email/activity/MessageListXL;->mRightSplitPrevX:I

    .line 4303
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListFragment;->updateMessageCount()V

    goto/16 :goto_1

    .line 4307
    :pswitch_2
    if-eqz v0, :cond_b

    sget-boolean v5, Lcom/android/email/activity/MessageListXL;->isRightSplitPressed:Z

    if-eqz v5, :cond_b

    .line 4308
    iget v5, p0, Lcom/android/email/activity/MessageListXL;->mOrientation:I

    if-ne v5, v8, :cond_8

    .line 4309
    sget v5, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    const/16 v6, 0xa0

    if-le v5, v6, :cond_7

    sget v5, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    iget v6, p0, Lcom/android/email/activity/MessageListXL;->mLandSplitMaxSize:I

    if-ge v5, v6, :cond_7

    .line 4310
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v5}, Lcom/android/email/activity/ThreePaneLayout;->getMeasuredWidth()I

    move-result v5

    sget v6, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    sub-int v1, v5, v6

    .line 4311
    .local v1, newWidth:I
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/email/activity/MessageViewFragment;->setBubbleLayout(I)V

    .line 4313
    .end local v1           #newWidth:I
    :cond_7
    sput-boolean v4, Lcom/android/email/activity/MessageListXL;->isRightSplitPressed:Z

    .line 4314
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->invalidateViews()V

    .line 4315
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "prefer_split_point"

    sget v7, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4327
    :goto_3
    sget v5, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    if-ne v5, v9, :cond_a

    .line 4328
    sput v8, Lcom/android/email/activity/MessageListXL;->sRightSplitType:I

    .line 4329
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/android/email/activity/MessageListFragment;->setListSplit(I)V

    goto/16 :goto_1

    .line 4318
    :cond_8
    sget v5, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    const/16 v6, 0x64

    if-le v5, v6, :cond_9

    sget v5, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    const/16 v6, 0x212

    if-ge v5, v6, :cond_9

    .line 4319
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v5}, Lcom/android/email/activity/ThreePaneLayout;->getMeasuredWidth()I

    move-result v5

    sget v6, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    sub-int v1, v5, v6

    .line 4320
    .restart local v1       #newWidth:I
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/email/activity/MessageViewFragment;->setBubbleLayout(I)V

    .line 4322
    .end local v1           #newWidth:I
    :cond_9
    sput-boolean v4, Lcom/android/email/activity/MessageListXL;->isRightSplitPressed:Z

    .line 4323
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->invalidateViews()V

    .line 4324
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "prefer_split_point"

    sget v7, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_3

    .line 4331
    :cond_a
    sput v4, Lcom/android/email/activity/MessageListXL;->sRightSplitType:I

    .line 4332
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/email/activity/MessageListFragment;->setListSplit(I)V

    goto/16 :goto_1

    .line 4334
    :cond_b
    sget-boolean v5, Lcom/android/email/activity/MessageListXL;->isRightSplitPressed:Z

    if-eqz v5, :cond_1

    .line 4335
    sput-boolean v4, Lcom/android/email/activity/MessageListXL;->isRightSplitPressed:Z

    .line 4336
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->invalidateViews()V

    .line 4337
    sget v5, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    if-ne v5, v9, :cond_c

    .line 4338
    sput v8, Lcom/android/email/activity/MessageListXL;->sRightSplitType:I

    .line 4339
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/android/email/activity/MessageListFragment;->setListSplit(I)V

    .line 4344
    :goto_4
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "prefer_split_point"

    sget v7, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    .line 4341
    :cond_c
    sput v4, Lcom/android/email/activity/MessageListXL;->sRightSplitType:I

    .line 4342
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/email/activity/MessageListFragment;->setListSplit(I)V

    goto :goto_4

    .line 4349
    :pswitch_3
    if-eqz v0, :cond_e

    sget-boolean v5, Lcom/android/email/activity/MessageListXL;->isRightSplitPressed:Z

    if-eqz v5, :cond_e

    .line 4350
    sput-boolean v4, Lcom/android/email/activity/MessageListXL;->isRightSplitPressed:Z

    .line 4351
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->invalidateViews()V

    .line 4352
    sget v5, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    if-ne v5, v9, :cond_d

    .line 4353
    sput v8, Lcom/android/email/activity/MessageListXL;->sRightSplitType:I

    .line 4354
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/android/email/activity/MessageListFragment;->setListSplit(I)V

    .line 4359
    :goto_5
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "prefer_split_point"

    sget v7, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    .line 4356
    :cond_d
    sput v4, Lcom/android/email/activity/MessageListXL;->sRightSplitType:I

    .line 4357
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/email/activity/MessageListFragment;->setListSplit(I)V

    goto :goto_5

    .line 4361
    :cond_e
    sget-boolean v5, Lcom/android/email/activity/MessageListXL;->isRightSplitPressed:Z

    if-eqz v5, :cond_1

    .line 4362
    sput-boolean v4, Lcom/android/email/activity/MessageListXL;->isRightSplitPressed:Z

    .line 4363
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->invalidateViews()V

    .line 4364
    sget v5, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    if-ne v5, v9, :cond_f

    .line 4365
    sput v8, Lcom/android/email/activity/MessageListXL;->sRightSplitType:I

    .line 4366
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/android/email/activity/MessageListFragment;->setListSplit(I)V

    .line 4371
    :goto_6
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "prefer_split_point"

    sget v7, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    .line 4368
    :cond_f
    sput v4, Lcom/android/email/activity/MessageListXL;->sRightSplitType:I

    .line 4369
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/email/activity/MessageListFragment;->setListSplit(I)V

    goto :goto_6

    :cond_10
    move v3, v4

    .line 4379
    goto/16 :goto_2

    .line 4253
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private initFromIntent()V
    .locals 13

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    const-wide/16 v2, -0x1

    .line 793
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getIntent()Landroid/content/Intent;

    move-result-object v11

    .line 794
    .local v11, i:Landroid/content/Intent;
    const-string v0, "ACCOUNT_ID"

    invoke-virtual {v11, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    .line 795
    const-string v0, "MAILBOX_ID"

    invoke-virtual {v11, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageListXL;->mMailboxId:J

    .line 796
    const-string v0, "MESSAGE_ID"

    invoke-virtual {v11, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageListXL;->mMessageId:J

    .line 801
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FROM_SHORTCUT"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 802
    sget-wide v0, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->isValidId(Landroid/content/Context;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 803
    const v0, 0x7f080270

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 809
    :cond_0
    sget-wide v0, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 810
    sget-object v0, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v12

    .line 811
    .local v12, settingValue:Lcom/android/email/Preferences;
    invoke-virtual {v12}, Lcom/android/email/Preferences;->getAccountId()J

    move-result-wide v9

    .line 812
    .local v9, accountId:J
    cmp-long v0, v9, v2

    if-nez v0, :cond_3

    .line 813
    invoke-static {p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide v0

    sput-wide v0, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    .line 817
    :goto_0
    invoke-virtual {v12}, Lcom/android/email/Preferences;->getMailboxId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageListXL;->mMailboxId:J

    .line 819
    .end local v9           #accountId:J
    .end local v12           #settingValue:Lcom/android/email/Preferences;
    :cond_1
    sget-wide v0, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 820
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    sget-wide v1, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    iget-wide v3, p0, Lcom/android/email/activity/MessageListXL;->mMailboxId:J

    iget-wide v5, p0, Lcom/android/email/activity/MessageListXL;->mMessageId:J

    move v8, v7

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectAccount(JJJZZ)V

    .line 822
    :cond_2
    return-void

    .line 815
    .restart local v9       #accountId:J
    .restart local v12       #settingValue:Lcom/android/email/Preferences;
    :cond_3
    sput-wide v9, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    goto :goto_0
.end method

.method public static isInSearchMode()Z
    .locals 1

    .prologue
    .line 2139
    sget-boolean v0, Lcom/android/email/activity/MessageListXL;->sSearchMode:Z

    return v0
.end method

.method public static isNetworkConnected()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2669
    :try_start_0
    invoke-static {}, Lcom/android/email/Email;->getApplication()Lcom/android/email/Email;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Lcom/android/email/Email;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 2671
    if-nez v0, :cond_0

    .line 2672
    const-string v0, "Email"

    const-string v2, "isNetworkConnected(): info is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2687
    :goto_0
    return v0

    .line 2675
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2676
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    .line 2677
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v2, :cond_1

    .line 2678
    const-string v0, "Email"

    const-string v2, "isNetworkConnected(): network is connected"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2679
    const/4 v0, 0x1

    goto :goto_0

    .line 2682
    :catch_0
    move-exception v0

    .line 2683
    const-string v0, "Email"

    const-string v2, "isNetworkConnected(): exception..."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2686
    :cond_1
    const-string v0, "Email"

    const-string v2, "isNetworkConnected(): network is disconnected"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2687
    goto :goto_0
.end method

.method private loadAccounts()V
    .locals 4

    .prologue
    .line 1962
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lcom/android/email/activity/MessageListXL$4;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageListXL$4;-><init>(Lcom/android/email/activity/MessageListXL;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 1983
    return-void
.end method

.method private moveToNewer()Z
    .locals 4

    .prologue
    .line 1460
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->isMessageSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageOrderManager;->moveToNewer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1462
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageOrderManager;->getCurrentMessageId()J

    move-result-wide v1

    sget v3, Lcom/android/email/activity/MessageListXL;->SELECT_MESSAGE_NEWER:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectMessage(JI)V

    .line 1464
    const/4 v0, 0x1

    .line 1466
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveToOlder()Z
    .locals 4

    .prologue
    .line 1450
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->isMessageSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageOrderManager;->moveToOlder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1452
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageOrderManager;->getCurrentMessageId()J

    move-result-wide v1

    sget v3, Lcom/android/email/activity/MessageListXL;->SELECT_MESSAGE_OLDER:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectMessage(JI)V

    .line 1454
    const/4 v0, 0x1

    .line 1456
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onAccountSettings()Z
    .locals 2

    .prologue
    .line 2792
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->getActualAccountId()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/email/activity/setup/AccountSettingsXL;->actionSettings(Landroid/app/Activity;J)V

    .line 2793
    const/4 v0, 0x1

    return v0
.end method

.method private onBackPressed(Z)Z
    .locals 3
    .parameter "isSystemBackKey"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1223
    sget-boolean v2, Lcom/android/email/activity/Welcome;->needFull:Z

    if-eqz v2, :cond_1

    .line 1224
    sput-boolean v0, Lcom/android/email/activity/Welcome;->needFull:Z

    .line 1225
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 1253
    :cond_0
    :goto_0
    return v0

    .line 1229
    :cond_1
    iget-boolean v2, p0, Lcom/android/email/activity/MessageListXL;->mAnimationStarted:Z

    if-ne v2, v1, :cond_2

    move v0, v1

    .line 1230
    goto :goto_0

    .line 1236
    :cond_2
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v2, p1}, Lcom/android/email/activity/MessageListXLFragmentManager;->onBackPressed(Z)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 1237
    goto :goto_0

    .line 1239
    :cond_3
    if-eqz p1, :cond_0

    .line 1241
    sget-boolean v2, Lcom/android/email/activity/MessageListXL;->sSearchMode:Z

    if-eqz v2, :cond_5

    .line 1243
    sput-boolean v0, Lcom/android/email/activity/MessageListXL;->sSearchMode:Z

    .line 1245
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListXL;->mAnimationStarted:Z

    if-nez v0, :cond_4

    .line 1246
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->onCloseSearch()V

    :cond_4
    move v0, v1

    .line 1249
    goto :goto_0

    .line 1251
    :cond_5
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method private onCompose()Z
    .locals 8

    .prologue
    const-wide/16 v5, -0x1

    const/4 v2, 0x0

    .line 2759
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->IsEAS()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2760
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->getActualAccountId()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/android/email/activity/MessageCompose;->actionCompose(Landroid/content/Context;J)V

    .line 2788
    :goto_0
    const/4 v2, 0x1

    :cond_0
    return v2

    .line 2763
    :cond_1
    sget-wide v3, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-wide v3, p0, Lcom/android/email/activity/MessageListXL;->mMessageId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-wide v3, p0, Lcom/android/email/activity/MessageListXL;->mMailboxId:J

    const-wide/16 v5, -0x2

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    .line 2764
    invoke-static {p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide v0

    .line 2765
    .local v0, accountId:J
    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mController:Lcom/android/email/Controller;

    iget-wide v4, p0, Lcom/android/email/activity/MessageListXL;->mMessageId:J

    invoke-virtual {v3, v0, v1, v4, v5}, Lcom/android/email/Controller;->hasPremiumExpiredAccounts(JJ)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2766
    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageListXLFragmentManager;->isAccountSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2769
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->getActualAccountId()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/android/email/activity/MessageCompose;->actionCompose(Landroid/content/Context;J)V

    goto :goto_0

    .line 2771
    :cond_2
    invoke-static {p0}, Lcom/android/email/combined/common/ExceptionUtil;->showDialogPremiumExpired(Landroid/app/Activity;)V

    goto :goto_0

    .line 2775
    .end local v0           #accountId:J
    :cond_3
    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mController:Lcom/android/email/Controller;

    sget-wide v4, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    iget-wide v6, p0, Lcom/android/email/activity/MessageListXL;->mMessageId:J

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/email/Controller;->hasPremiumExpiredAccounts(JJ)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2776
    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageListXLFragmentManager;->isAccountSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2779
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->getActualAccountId()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/android/email/activity/MessageCompose;->actionCompose(Landroid/content/Context;J)V

    goto :goto_0

    .line 2781
    :cond_4
    invoke-static {p0}, Lcom/android/email/combined/common/ExceptionUtil;->showDialogPremiumExpired(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private onConversationMoveAlways([J[Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1319
    invoke-static {}, Lcom/android/email/activity/MoveMessageToDialog;->hasShowingDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1320
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/email/activity/MoveMessageToDialog;->newInstance(Landroid/app/Activity;[J[Ljava/lang/String;Landroid/app/Fragment;I)Lcom/android/email/activity/MoveMessageToDialog;

    move-result-object v0

    .line 1322
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mMailboxCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MoveMessageToDialog;->setMailboxCursor(Landroid/database/Cursor;)V

    .line 1323
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MoveMessageToDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1325
    :cond_0
    return-void
.end method

.method private onCurrentMessageGone()V
    .locals 3

    .prologue
    .line 1279
    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/Preferences;->getAutoAdvanceDirection()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1296
    :cond_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->moveToOlder()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->moveToNewer()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1297
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v0

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/android/email/activity/MessageViewFragment;->mMessageIdToOpen:J

    .line 1298
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->invalidateOptionsMenu()V

    .line 1300
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->goBackToMailbox()V

    .line 1301
    :cond_2
    :goto_0
    return-void

    .line 1281
    :pswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->moveToNewer()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1283
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->moveToOlder()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1287
    :pswitch_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->moveToOlder()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1289
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->moveToNewer()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1279
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onMoveMessages([J)V
    .locals 3
    .parameter

    .prologue
    .line 1307
    invoke-static {}, Lcom/android/email/activity/MoveMessageToDialog;->hasShowingDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1308
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/email/activity/MoveMessageToDialog;->newInstance(Landroid/app/Activity;[JLandroid/app/Fragment;)Lcom/android/email/activity/MoveMessageToDialog;

    move-result-object v0

    .line 1309
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mMailboxCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MoveMessageToDialog;->setMailboxCursor(Landroid/database/Cursor;)V

    .line 1310
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MoveMessageToDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1312
    :cond_0
    return-void
.end method

.method private onResultSearchClose()V
    .locals 2

    .prologue
    .line 3333
    const-string v0, "Email"

    const-string v1, "onClose "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3334
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/activity/MessageListXL;->sSearchString:Ljava/lang/String;

    .line 3335
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/activity/MessageListXL;->sSearchMode:Z

    .line 3338
    return-void
.end method

.method private refreshActionBarLayout()V
    .locals 14

    .prologue
    const v13, 0x7f0c0100

    const/4 v12, 0x5

    const/4 v9, 0x0

    const/4 v11, 0x4

    const/4 v10, 0x1

    .line 2797
    sget-object v0, Lcom/android/email/activity/MessageListXL;->sSearchBarLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/email/activity/MessageListXL;->sSearchEditFrame:Landroid/view/View;

    if-nez v0, :cond_1

    .line 2912
    :cond_0
    :goto_0
    return-void

    .line 2806
    :cond_1
    sget-object v0, Lcom/android/email/activity/MessageListXL;->sSearchBarLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f1000c4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 2808
    sget-object v1, Lcom/android/email/activity/MessageListXL;->sSearchBarLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f1000c6

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 2811
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v2}, Lcom/android/email/activity/CustomSpinner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 2813
    sget-object v3, Lcom/android/email/activity/MessageListXL;->sSearchBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 2815
    sget-object v4, Lcom/android/email/activity/MessageListXL;->sSearchEditFrame:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 2818
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 2820
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 2823
    iget v7, p0, Lcom/android/email/activity/MessageListXL;->mOrientation:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_6

    .line 2824
    sget-boolean v7, Lcom/android/email/activity/MessageListXL;->mSplitMode:Z

    if-ne v7, v10, :cond_4

    .line 2825
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0104

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2827
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0106

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 2829
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2831
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c010e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2833
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c010b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 2835
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0109

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2837
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v7

    if-eq v7, v12, :cond_2

    .line 2838
    iget-object v7, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v7, v9}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 2856
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 2857
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c00f7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2860
    sget-boolean v7, Lcom/android/email/activity/MessageListXL;->mSplitMode:Z

    if-ne v7, v10, :cond_5

    .line 2861
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c00fb

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2863
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v7

    if-eq v7, v12, :cond_3

    .line 2864
    iget-object v7, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v7, v9}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 2907
    :cond_3
    :goto_2
    iget-object v7, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v7, v2}, Lcom/android/email/activity/CustomSpinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2908
    sget-object v2, Lcom/android/email/activity/MessageListXL;->sSearchBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2909
    sget-object v2, Lcom/android/email/activity/MessageListXL;->sSearchEditFrame:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2910
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2911
    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 2840
    :cond_4
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0103

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2842
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0105

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 2844
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2846
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c010d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2848
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c010b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 2850
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0108

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2852
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v7

    if-eq v7, v11, :cond_2

    sget-boolean v7, Lcom/android/email/activity/Welcome;->fromWidget:Z

    if-nez v7, :cond_2

    .line 2853
    iget-object v7, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v7, v10}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    goto/16 :goto_1

    .line 2866
    :cond_5
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c00fa

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2868
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v7

    if-eq v7, v11, :cond_3

    sget-boolean v7, Lcom/android/email/activity/Welcome;->fromWidget:Z

    if-nez v7, :cond_3

    .line 2869
    iget-object v7, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v7, v10}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    goto/16 :goto_2

    .line 2880
    :cond_6
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0101

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2882
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0102

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 2884
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c00ff

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2886
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c010c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2888
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c010a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 2890
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0107

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2893
    if-eqz v2, :cond_7

    .line 2894
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c00f6

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2896
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c00f9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2900
    :cond_7
    const-string v7, "MessageListXL"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sSearchMode : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/android/email/activity/MessageListXL;->sSearchMode:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "fromWidget : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/android/email/activity/Welcome;->fromWidget:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 2901
    sget-boolean v7, Lcom/android/email/activity/MessageListXL;->sSearchMode:Z

    if-nez v7, :cond_3

    sget-boolean v7, Lcom/android/email/activity/Welcome;->needFull:Z

    if-nez v7, :cond_3

    sget-boolean v7, Lcom/android/email/activity/Welcome;->fromWidget:Z

    if-nez v7, :cond_3

    .line 2902
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v7

    if-eq v7, v11, :cond_3

    .line 2903
    iget-object v7, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v7, v10}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    goto/16 :goto_2
.end method

.method public static setSearchFrameLayout(I)V
    .locals 1
    .parameter "leftMargin"

    .prologue
    .line 2084
    sget-object v0, Lcom/android/email/activity/MessageListXL;->sSearchFrameLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 2085
    sget-object v0, Lcom/android/email/activity/MessageListXL;->sSearchFrameLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    iput p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2087
    :cond_0
    return-void
.end method

.method public static setSearchString(Ljava/lang/String;)V
    .locals 0
    .parameter "searchStr"

    .prologue
    .line 2075
    sput-object p0, Lcom/android/email/activity/MessageListXL;->sSearchString:Ljava/lang/String;

    .line 2076
    return-void
.end method

.method public static setSortType(I)V
    .locals 2
    .parameter

    .prologue
    .line 2068
    sput p0, Lcom/android/email/activity/MessageListXL;->sSortType:I

    .line 2069
    sget-object v0, Lcom/android/email/activity/MessageListXL;->sSharedPrefer:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 2070
    sget-object v0, Lcom/android/email/activity/MessageListXL;->sSharedPrefer:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "prefer_sort_type"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2072
    :cond_0
    return-void
.end method

.method private setupAccountView()V
    .locals 2

    .prologue
    .line 3127
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/CustomSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 3128
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v0, p0}, Lcom/android/email/activity/CustomSpinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3129
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    new-instance v1, Lcom/android/email/activity/MessageListXL$10;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageListXL$10;-><init>(Lcom/android/email/activity/MessageListXL;)V

    invoke-virtual {v0, v1}, Lcom/android/email/activity/CustomSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 3150
    return-void
.end method

.method private setupFollowUpFlagView()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1853
    const v0, 0x7f1001c1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageListXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/CustomSpinner;

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFollowUpFlagViewSpinner:Lcom/android/email/activity/CustomSpinner;

    .line 1854
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 1855
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/android/email/activity/setup/SpinnerOption;

    new-instance v2, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080318

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v2, v1, v6

    new-instance v2, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080317

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v2, v1, v7

    new-instance v2, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080316

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v2, v1, v8

    .line 1861
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x7f04009b

    invoke-direct {v2, v0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/email/activity/MessageListXL;->mFollowUpFlagAdapter:Landroid/widget/ArrayAdapter;

    .line 1863
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFollowUpFlagAdapter:Landroid/widget/ArrayAdapter;

    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1864
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFollowUpFlagViewSpinner:Lcom/android/email/activity/CustomSpinner;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mFollowUpFlagAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/CustomSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1865
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFollowUpFlagViewSpinner:Lcom/android/email/activity/CustomSpinner;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/CustomSpinner;->setSelection(I)V

    .line 1866
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFollowUpFlagViewSpinner:Lcom/android/email/activity/CustomSpinner;

    new-instance v1, Lcom/android/email/activity/MessageListXL$2;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageListXL$2;-><init>(Lcom/android/email/activity/MessageListXL;)V

    invoke-virtual {v0, v1}, Lcom/android/email/activity/CustomSpinner;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1874
    return-void
.end method

.method private setupSearchIndexView()V
    .locals 3

    .prologue
    .line 3213
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mSearchAdapter:Lcom/android/email/activity/SearchTypeSelectorAdapter;

    const v2, 0x7f04009a

    invoke-virtual {v1, v2}, Lcom/android/email/activity/SearchTypeSelectorAdapter;->setDropDownViewResource(I)V

    .line 3214
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mSearchAdapter:Lcom/android/email/activity/SearchTypeSelectorAdapter;

    invoke-virtual {v1, v2}, Lcom/android/email/activity/CustomSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 3215
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    sget v2, Lcom/android/email/activity/MessageListXL;->sSelectedSearchType:I

    invoke-virtual {v1, v2}, Lcom/android/email/activity/CustomSpinner;->setSelection(I)V

    .line 3216
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v1, p0}, Lcom/android/email/activity/CustomSpinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3217
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    new-instance v2, Lcom/android/email/activity/MessageListXL$11;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageListXL$11;-><init>(Lcom/android/email/activity/MessageListXL;)V

    invoke-virtual {v1, v2}, Lcom/android/email/activity/CustomSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 3300
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 3301
    .local v0, c:Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/MessageListXL;->mYear:I

    .line 3302
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/MessageListXL;->mMonth:I

    .line 3303
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/MessageListXL;->mDay:I

    .line 3304
    return-void
.end method

.method private setupSearchView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3036
    new-instance v0, Lcom/android/email/activity/MessageListXL$9;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageListXL$9;-><init>(Lcom/android/email/activity/MessageListXL;)V

    .line 3051
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3052
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mQueryDummyText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3053
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mActionBarCustomView:Landroid/view/View;

    const v1, 0x7f1000c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mCloseButton:Landroid/widget/ImageView;

    .line 3054
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3109
    sget-boolean v0, Lcom/android/email/activity/MessageListXL;->sSearchMode:Z

    if-eqz v0, :cond_0

    .line 3110
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->onOpenSearch()V

    .line 3124
    :goto_0
    return-void

    .line 3112
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/CustomSpinner;->setVisibility(I)V

    .line 3114
    sput-boolean v2, Lcom/android/email/activity/MessageListXL;->sSearchMode:Z

    .line 3115
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3116
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 3117
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v0}, Lcom/android/email/activity/CustomSpinner;->clearFocus()V

    .line 3118
    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageListXL;->setImeVisibility(Z)V

    .line 3119
    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageListXL;->controlSearchVisible(Z)V

    .line 3120
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->updateViewsVisibility()V

    .line 3122
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method private showErrorMessage(Ljava/lang/String;J)V
    .locals 2
    .parameter "rawMessage"
    .parameter "accountId"

    .prologue
    .line 1908
    new-instance v0, Lcom/android/email/activity/MessageListXL$3;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/android/email/activity/MessageListXL$3;-><init>(Lcom/android/email/activity/MessageListXL;JLjava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListXL$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1937
    return-void
.end method

.method private showFollowUpView()V
    .locals 1

    .prologue
    .line 1878
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFollowUpFlagViewSpinner:Lcom/android/email/activity/CustomSpinner;

    if-eqz v0, :cond_0

    .line 1879
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFollowUpFlagViewSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v0}, Lcom/android/email/activity/CustomSpinner;->performClick()Z

    .line 1881
    :cond_0
    return-void
.end method

.method private stopMessageOrderManager()V
    .locals 1

    .prologue
    .line 1418
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    if-eqz v0, :cond_0

    .line 1419
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageOrderManager;->close()V

    .line 1420
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    .line 1422
    :cond_0
    return-void
.end method

.method private updateAccountList(Landroid/database/Cursor;)V
    .locals 7
    .parameter "accountsCursor"

    .prologue
    .line 1986
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 1987
    .local v2, count:I
    if-nez v2, :cond_0

    .line 2017
    :goto_0
    return-void

    .line 1997
    :cond_0
    const/4 v3, 0x0

    .line 1998
    .local v3, defaultSelection:I
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->isAccountSelected()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1999
    const/4 v5, -0x1

    invoke-interface {p1, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2000
    const/4 v4, 0x0

    .line 2001
    .local v4, i:I
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2002
    invoke-static {p1}, Lcom/android/email/activity/AccountSelectorAdapter;->getAccountId(Landroid/database/Cursor;)J

    move-result-wide v0

    .line 2003
    .local v0, accountId:J
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->getUIAccountId()J

    move-result-wide v5

    cmp-long v5, v0, v5

    if-nez v5, :cond_3

    .line 2004
    move v3, v4

    .line 2012
    .end local v0           #accountId:J
    .end local v4           #i:I
    :cond_1
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;

    if-eqz v5, :cond_2

    .line 2013
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;

    invoke-virtual {v5, p1}, Lcom/android/email/activity/AccountSelectorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 2015
    :cond_2
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;

    invoke-virtual {v5, v6}, Lcom/android/email/activity/CustomSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 2016
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v5, v3}, Lcom/android/email/activity/CustomSpinner;->setSelection(I)V

    goto :goto_0

    .line 2007
    .restart local v0       #accountId:J
    .restart local v4       #i:I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 2008
    goto :goto_1
.end method

.method private updateMessageOrderManager()V
    .locals 5

    .prologue
    .line 1384
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->isMailboxSelected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1395
    :cond_0
    :goto_0
    return-void

    .line 1387
    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxId()J

    move-result-wide v0

    .line 1388
    .local v0, mailboxId:J
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageOrderManager;->getMailboxId()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-eqz v2, :cond_3

    .line 1389
    :cond_2
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->stopMessageOrderManager()V

    .line 1390
    new-instance v2, Lcom/android/email/activity/MessageOrderManager;

    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mMessageOrderManagerCallback:Lcom/android/email/activity/MessageListXL$MessageOrderManagerCallback;

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/android/email/activity/MessageOrderManager;-><init>(Landroid/content/Context;JLcom/android/email/activity/MessageOrderManager$Callback;)V

    iput-object v2, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    .line 1392
    :cond_3
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->isMessageSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1393
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/email/activity/MessageOrderManager;->moveTo(J)V

    goto :goto_0
.end method

.method private updateNavigationArrows()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1439
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    if-nez v0, :cond_0

    .line 1441
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->updateMessageCommandButtons(ZZII)V

    .line 1447
    :goto_0
    return-void

    .line 1443
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageOrderManager;->canMoveToNewer()Z

    move-result v1

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageOrderManager;->canMoveToOlder()Z

    move-result v2

    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageOrderManager;->getCurrentPosition()I

    move-result v3

    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageOrderManager;->getTotalMessageCount()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/activity/MessageListXLFragmentManager;->updateMessageCommandButtons(ZZII)V

    goto :goto_0
.end method

.method private updateOrderManager()V
    .locals 1

    .prologue
    .line 1840
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    if-eqz v0, :cond_0

    .line 1841
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageOrderManager;->startTask()V

    .line 1845
    :goto_0
    return-void

    .line 1843
    :cond_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->updateMessageOrderManager()V

    goto :goto_0
.end method

.method private updateViewsVisibility()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 3344
    sget-object v3, Lcom/android/email/activity/MessageListXL;->sSearchEditFrame:Landroid/view/View;

    sget-boolean v0, Lcom/android/email/activity/MessageListXL;->sSearchMode:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3345
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    sget-boolean v3, Lcom/android/email/activity/MessageListXL;->sSearchMode:Z

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/email/activity/CustomSpinner;->setVisibility(I)V

    .line 3346
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3347
    return-void

    :cond_0
    move v0, v2

    .line 3344
    goto :goto_0

    :cond_1
    move v1, v2

    .line 3345
    goto :goto_1
.end method

.method private updatedMailbox_toast(Ljava/lang/Long;)V
    .locals 13
    .parameter

    .prologue
    const-wide/16 v6, 0x0

    const/16 v12, 0x20

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 4699
    sget-object v0, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mDateFormat:Ljava/text/DateFormat;

    .line 4701
    sget-object v0, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mTimeFormat:Ljava/text/DateFormat;

    .line 4705
    new-array v2, v11, [Ljava/lang/String;

    const-string v0, "syncTime"

    aput-object v0, v2, v10

    .line 4708
    const-string v0, "_id=?"

    .line 4709
    sget-object v0, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id=?"

    new-array v4, v11, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 4714
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4715
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4716
    if-eqz v0, :cond_1

    .line 4717
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 4718
    iget-wide v3, p0, Lcom/android/email/activity/MessageListXL;->mLastUpdatedTime:J

    sub-long v3, v0, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v3

    const-wide/16 v8, 0x9c4

    cmp-long v3, v3, v8

    if-gez v3, :cond_2

    .line 4724
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 4736
    :cond_0
    :goto_0
    return-void

    .line 4724
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    move-wide v0, v6

    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 4726
    cmp-long v2, v0, v6

    if-eqz v2, :cond_0

    .line 4728
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 4729
    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mDateFormat:Ljava/text/DateFormat;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mTimeFormat:Ljava/text/DateFormat;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4731
    sget-object v3, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    const v4, 0x7f08030d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v11, [Ljava/lang/Object;

    aput-object v2, v4, v10

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 4734
    const-string v2, "Email"

    const-string v3, "updatedMailbox_toast "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4735
    iput-wide v0, p0, Lcom/android/email/activity/MessageListXL;->mLastUpdatedTime:J

    goto :goto_0
.end method


# virtual methods
.method public changeFontSize()Landroid/app/Dialog;
    .locals 11

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2252
    sget-object v0, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0a001d

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 2254
    sget-object v0, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0a001e

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 2257
    array-length v0, v5

    new-array v6, v0, [F

    .line 2258
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 2259
    :goto_0
    array-length v8, v5

    if-ge v0, v8, :cond_0

    .line 2260
    aget-object v8, v5, v0

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    aput v8, v6, v0

    .line 2262
    new-instance v8, Lcom/android/email/activity/MessageListXL$TextSizeItem;

    aget-object v9, v4, v0

    aget v10, v6, v0

    invoke-direct {v8, p0, v9, v10}, Lcom/android/email/activity/MessageListXL$TextSizeItem;-><init>(Lcom/android/email/activity/MessageListXL;Ljava/lang/String;F)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2259
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2268
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2269
    const v4, 0x7f0801ea

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2273
    iget v4, p0, Lcom/android/email/activity/MessageListXL;->mfontSize:I

    if-ne v4, v2, :cond_1

    .line 2281
    :goto_1
    new-instance v2, Lcom/android/email/activity/MessageListXL$MessageListTextSizeAdapter;

    const v3, 0x7f04009e

    invoke-direct {v2, p0, p0, v3, v7}, Lcom/android/email/activity/MessageListXL$MessageListTextSizeAdapter;-><init>(Lcom/android/email/activity/MessageListXL;Landroid/content/Context;ILjava/util/ArrayList;)V

    new-instance v3, Lcom/android/email/activity/MessageListXL$6;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageListXL$6;-><init>(Lcom/android/email/activity/MessageListXL;)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2307
    const v1, 0x7f080043

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2308
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 2275
    :cond_1
    iget v1, p0, Lcom/android/email/activity/MessageListXL;->mfontSize:I

    if-ne v1, v3, :cond_2

    move v1, v2

    .line 2276
    goto :goto_1

    .line 2277
    :cond_2
    iget v1, p0, Lcom/android/email/activity/MessageListXL;->mfontSize:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    move v1, v3

    .line 2278
    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public checkAvailableMailboxToMove()V
    .locals 2

    .prologue
    .line 1470
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mMailboxCheckTask:Lcom/android/email/activity/MessageListXL$MailboxCheckTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 1471
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mMailboxCheckTask:Lcom/android/email/activity/MessageListXL$MailboxCheckTask;

    .line 1472
    new-instance v0, Lcom/android/email/activity/MessageListXL$MailboxCheckTask;

    invoke-direct {v0, p0, p0}, Lcom/android/email/activity/MessageListXL$MailboxCheckTask;-><init>(Lcom/android/email/activity/MessageListXL;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mMailboxCheckTask:Lcom/android/email/activity/MessageListXL$MailboxCheckTask;

    .line 1473
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mMailboxCheckTask:Lcom/android/email/activity/MessageListXL$MailboxCheckTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListXL$MailboxCheckTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1474
    return-void
.end method

.method public controlAccountSpinnerVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    if-nez v0, :cond_1

    .line 595
    :cond_0
    :goto_0
    return-void

    .line 589
    :cond_1
    if-eqz p1, :cond_2

    .line 590
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/CustomSpinner;->setVisibility(I)V

    goto :goto_0

    .line 592
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v0}, Lcom/android/email/activity/CustomSpinner;->onDetachedFromWindow()V

    .line 593
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/email/activity/CustomSpinner;->setVisibility(I)V

    goto :goto_0
.end method

.method public controlSearchVisible(Z)V
    .locals 4
    .parameter "visible"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 570
    sget-object v0, Lcom/android/email/activity/MessageListXL;->sSearchBarLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    if-nez v0, :cond_1

    .line 583
    :cond_0
    :goto_0
    return-void

    .line 573
    :cond_1
    if-eqz p1, :cond_2

    .line 574
    sget-object v0, Lcom/android/email/activity/MessageListXL;->sSearchBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 575
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    goto :goto_0

    .line 577
    :cond_2
    sget-object v0, Lcom/android/email/activity/MessageListXL;->sSearchBarLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 578
    sget-boolean v0, Lcom/android/email/activity/MessageListXL;->mSplitMode:Z

    if-ne v0, v3, :cond_3

    iget v0, p0, Lcom/android/email/activity/MessageListXL;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 579
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    goto :goto_0

    .line 581
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    goto :goto_0
.end method

.method public createListByDialog()Landroid/app/Dialog;
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x6

    const/4 v1, 0x5

    .line 2414
    .line 2416
    sget-wide v3, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    const-wide/high16 v5, 0x1000

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    .line 2417
    new-array v0, v2, [Ljava/lang/String;

    const v3, 0x7f0801d0

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v7

    const v3, 0x7f0801d1

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v8

    const v3, 0x7f0801d2

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v9

    const/4 v3, 0x3

    const v4, 0x7f0801d3

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x4

    const v4, 0x7f080046

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const v3, 0x7f080062

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 2445
    :goto_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2446
    const v3, 0x7f0801dd

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2447
    sget v3, Lcom/android/email/activity/MessageListXL;->sSortType:I

    .line 2448
    sget-boolean v5, Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z

    if-eqz v5, :cond_6

    .line 2449
    sget v5, Lcom/android/email/activity/MessageListXL;->sSortType:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_3

    .line 2474
    :cond_0
    :goto_1
    new-instance v2, Lcom/android/email/activity/MessageListXL$7;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageListXL$7;-><init>(Lcom/android/email/activity/MessageListXL;)V

    invoke-virtual {v4, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2501
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 2423
    :cond_1
    sget-boolean v0, Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z

    if-eqz v0, :cond_2

    .line 2424
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const v3, 0x7f0801d0

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v7

    const v3, 0x7f0801d1

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v8

    const v3, 0x7f0801d2

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v9

    const/4 v3, 0x3

    const v4, 0x7f0801d3

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x4

    const v4, 0x7f080046

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const v3, 0x7f08031b

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const v3, 0x7f080319

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v3, 0x7

    const v4, 0x7f08031f

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const v4, 0x7f080062

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    goto/16 :goto_0

    .line 2434
    :cond_2
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const v3, 0x7f0801d0

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v7

    const v3, 0x7f0801d1

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v8

    const v3, 0x7f0801d2

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v9

    const/4 v3, 0x3

    const v4, 0x7f0801d3

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x4

    const v4, 0x7f080046

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const v3, 0x7f080061

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const v3, 0x7f080062

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    goto/16 :goto_0

    .line 2451
    :cond_3
    sget v1, Lcom/android/email/activity/MessageListXL;->sSortType:I

    const/16 v5, 0x9

    if-ne v1, v5, :cond_4

    move v1, v2

    .line 2452
    goto/16 :goto_1

    .line 2453
    :cond_4
    sget v1, Lcom/android/email/activity/MessageListXL;->sSortType:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_5

    .line 2454
    const/4 v1, 0x7

    goto/16 :goto_1

    .line 2455
    :cond_5
    sget v1, Lcom/android/email/activity/MessageListXL;->sSortType:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_7

    .line 2456
    const/16 v1, 0x8

    goto/16 :goto_1

    .line 2458
    :cond_6
    sget-wide v5, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    const-wide/high16 v7, 0x1000

    cmp-long v5, v5, v7

    if-nez v5, :cond_8

    .line 2459
    sget v2, Lcom/android/email/activity/MessageListXL;->sSortType:I

    const/16 v5, 0xb

    if-eq v2, v5, :cond_0

    :cond_7
    move v1, v3

    goto/16 :goto_1

    .line 2463
    :cond_8
    sget v1, Lcom/android/email/activity/MessageListXL;->sSortType:I

    const/16 v5, 0xb

    if-ne v1, v5, :cond_7

    move v1, v2

    .line 2464
    goto/16 :goto_1
.end method

.method public createViewModeDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 2152
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const v2, 0x7f0801e6

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f0801e7

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2157
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2158
    const v2, 0x7f08021c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2159
    sget v2, Lcom/android/email/activity/MessageListXL;->sViewMode:I

    new-instance v3, Lcom/android/email/activity/MessageListXL$5;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageListXL$5;-><init>(Lcom/android/email/activity/MessageListXL;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2177
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x3

    const/4 v0, 0x1

    .line 2506
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x42

    if-ne v1, v2, :cond_0

    .line 2507
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/android/email/activity/MessageListXL;->sSelectedSearchType:I

    if-ne v1, v3, :cond_0

    .line 2509
    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageListXL;->showDialog2(I)V

    .line 2513
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 4541
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v1, v3

    .line 4542
    .local v1, pointY:I
    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3}, Landroid/app/ActionBar;->getHeight()I

    move-result v3

    if-le v1, v3, :cond_2

    .line 4543
    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v3}, Lcom/android/email/activity/ThreePaneLayout;->getAnimationStatus()Z

    move-result v3

    if-ne v3, v2, :cond_1

    .line 4588
    :cond_0
    :goto_0
    return v2

    .line 4545
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListXL;->handleLeftSplit(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4547
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListXL;->handleRightSplit(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4551
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 4584
    :cond_3
    :goto_1
    :pswitch_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 4558
    :pswitch_1
    iget-boolean v3, p0, Lcom/android/email/activity/MessageListXL;->mItemCheckboxPressed:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mItem:Lcom/android/email/activity/MessageListItem;

    if-eqz v3, :cond_4

    .line 4559
    iput-boolean v4, p0, Lcom/android/email/activity/MessageListXL;->mItemCheckboxPressed:Z

    .line 4560
    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mItem:Lcom/android/email/activity/MessageListItem;

    iput-boolean v4, v3, Lcom/android/email/activity/MessageListItem;->mCheckboxPressed:Z

    .line 4561
    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mItem:Lcom/android/email/activity/MessageListItem;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageListItem;->invalidate()V

    .line 4563
    :cond_4
    iget-boolean v3, p0, Lcom/android/email/activity/MessageListXL;->mSubItemCheckboxPressed:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mSubItem:Lcom/android/email/activity/MessageListSubTitleItem;

    if-eqz v3, :cond_3

    .line 4564
    iput-boolean v4, p0, Lcom/android/email/activity/MessageListXL;->mSubItemCheckboxPressed:Z

    .line 4565
    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mSubItem:Lcom/android/email/activity/MessageListSubTitleItem;

    iput-boolean v4, v3, Lcom/android/email/activity/MessageListSubTitleItem;->mCheckboxPressed:Z

    .line 4566
    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mSubItem:Lcom/android/email/activity/MessageListSubTitleItem;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageListSubTitleItem;->invalidate()V

    goto :goto_1

    .line 4571
    :pswitch_2
    iget-boolean v3, p0, Lcom/android/email/activity/MessageListXL;->mItemCheckboxPressed:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mItem:Lcom/android/email/activity/MessageListItem;

    if-eqz v3, :cond_5

    .line 4572
    iput-boolean v4, p0, Lcom/android/email/activity/MessageListXL;->mItemCheckboxPressed:Z

    .line 4573
    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mItem:Lcom/android/email/activity/MessageListItem;

    iput-boolean v4, v3, Lcom/android/email/activity/MessageListItem;->mCheckboxPressed:Z

    .line 4574
    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mItem:Lcom/android/email/activity/MessageListItem;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageListItem;->invalidate()V

    .line 4576
    :cond_5
    iget-boolean v3, p0, Lcom/android/email/activity/MessageListXL;->mSubItemCheckboxPressed:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mSubItem:Lcom/android/email/activity/MessageListSubTitleItem;

    if-eqz v3, :cond_3

    .line 4577
    iput-boolean v4, p0, Lcom/android/email/activity/MessageListXL;->mSubItemCheckboxPressed:Z

    .line 4578
    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mSubItem:Lcom/android/email/activity/MessageListSubTitleItem;

    iput-boolean v4, v3, Lcom/android/email/activity/MessageListSubTitleItem;->mCheckboxPressed:Z

    .line 4579
    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mSubItem:Lcom/android/email/activity/MessageListSubTitleItem;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageListSubTitleItem;->invalidate()V

    goto :goto_1

    .line 4585
    :catch_0
    move-exception v0

    .line 4588
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0

    .line 4551
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getListFragmentManager()Lcom/android/email/activity/MessageListXLFragmentManager;
    .locals 1

    .prologue
    .line 2181
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    return-object v0
.end method

.method public onAccountChanged(J)V
    .locals 0
    .parameter "accountId"

    .prologue
    .line 1885
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->invalidateOptionsMenu()V

    .line 1886
    return-void
.end method

.method public onAccountSecurityHold(J)V
    .locals 1
    .parameter "accountId"

    .prologue
    .line 1836
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/email/activity/setup/AccountSecurity;->actionUpdateSecurityIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageListXL;->startActivity(Landroid/content/Intent;)V

    .line 1837
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 4189
    if-ne p1, v0, :cond_0

    .line 4190
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 4191
    if-eqz p3, :cond_0

    .line 4193
    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    const-string v1, "com.android.email.activity.messagelistxl.searchfolderid"

    const-wide/16 v2, -0x1

    invoke-virtual {p3, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectMailbox(JJZZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4203
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/email/activity/MessageViewFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 4204
    return-void

    .line 4195
    :catch_0
    move-exception v0

    .line 4196
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 1143
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageListXL;->onBackPressed(Z)Z

    .line 1144
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1258
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1276
    :cond_0
    :goto_0
    return-void

    .line 1260
    :sswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->dismissErrorMessage()V

    goto :goto_0

    .line 1263
    :sswitch_1
    sget-object v0, Lcom/android/email/activity/MessageListXL;->sSearchString:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1264
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1265
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->onResultSearchRequested()Z

    goto :goto_0

    .line 1267
    :cond_1
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListXL;->mAnimationStarted:Z

    if-nez v0, :cond_0

    .line 1268
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->onCloseSearch()V

    goto :goto_0

    .line 1258
    :sswitch_data_0
    .sparse-switch
        0x7f1000c9 -> :sswitch_1
        0x7f1001c2 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCloseSearch()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3465
    sget-object v0, Lcom/android/email/activity/MessageListXL;->sSearchBarLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 3466
    sput-boolean v1, Lcom/android/email/activity/MessageListXL;->sSearchMode:Z

    .line 3467
    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageListXL;->setLayoutAnim_slideSideToSide(Z)V

    .line 3468
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListXL;->mAnimationStarted:Z

    .line 3471
    :cond_0
    return-void
.end method

.method public onCloseSerachWithoutAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3474
    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageListXL;->controlSearchVisible(Z)V

    .line 3475
    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageListXL;->setImeVisibility(Z)V

    .line 3476
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->updateViewsVisibility()V

    .line 3477
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3478
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 3479
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v0}, Lcom/android/email/activity/CustomSpinner;->clearFocus()V

    .line 3480
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v0}, Lcom/android/email/activity/CustomSpinner;->onDetachedFromWindow()V

    .line 3481
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/CustomSpinner;->setVisibility(I)V

    .line 3483
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->onResultSearchClose()V

    .line 3484
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->invalidateOptionsMenu()V

    .line 3485
    sput-boolean v2, Lcom/android/email/activity/MessageListXL;->sSearchMode:Z

    .line 3486
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListXL;->mAnimationStarted:Z

    .line 3487
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 1148
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/email/activity/MessageListXL;->mOrientation:I

    .line 1150
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1153
    sget v0, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 1154
    iget v0, p0, Lcom/android/email/activity/MessageListXL;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 1155
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "prefer_split_left_port_point"

    sget v2, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1157
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "prefer_split_left_land_point"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/email/activity/MessageListXL;->sDefaultLeftLandSplitPoint:I

    .line 1159
    sget v0, Lcom/android/email/activity/MessageListXL;->sDefaultLeftLandSplitPoint:I

    if-eq v0, v3, :cond_5

    .line 1160
    sget v0, Lcom/android/email/activity/MessageListXL;->sDefaultLeftLandSplitPoint:I

    sput v0, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    .line 1176
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->refreshActionBarLayout()V

    .line 1178
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    if-eqz v0, :cond_1

    .line 1179
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    iget v1, p0, Lcom/android/email/activity/MessageListXL;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->refreshFragment(I)V

    .line 1180
    :cond_1
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListXL;->mIsMenuOpened:Z

    if-eqz v0, :cond_2

    .line 1181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListXL;->mMenuOpenAgain:Z

    .line 1184
    :cond_2
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListXL;->mMenuOpenAgain:Z

    if-eqz v0, :cond_3

    .line 1185
    iput-boolean v4, p0, Lcom/android/email/activity/MessageListXL;->mMenuOpenAgain:Z

    .line 1186
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->closeOptionsMenu()V

    .line 1187
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->openOptionsMenu()V

    .line 1189
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mSearchAdapter:Lcom/android/email/activity/SearchTypeSelectorAdapter;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mSearchAdapter:Lcom/android/email/activity/SearchTypeSelectorAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/SearchTypeSelectorAdapter;->getDropDownItem()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mSearchAdapter:Lcom/android/email/activity/SearchTypeSelectorAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/SearchTypeSelectorAdapter;->getDropDownItem()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1191
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    if-eqz v0, :cond_4

    .line 1192
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v0}, Lcom/android/email/activity/CustomSpinner;->onDetachedFromWindow()V

    .line 1193
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->isMesssageListLeftside()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1194
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/android/email/activity/CustomSpinner;->setLayout(I)V

    .line 1195
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v0}, Lcom/android/email/activity/CustomSpinner;->performClick()Z

    .line 1199
    :cond_4
    iput-boolean v4, p0, Lcom/android/email/activity/MessageListXL;->mAnimationStarted:Z

    .line 1200
    return-void

    .line 1162
    :cond_5
    sget v0, Lcom/android/email/activity/MessageListXL;->sLeftSplitpointLand:I

    sput v0, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    goto :goto_0

    .line 1164
    :cond_6
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "prefer_split_left_land_point"

    sget v2, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1166
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "prefer_split_left_port_point"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/email/activity/MessageListXL;->sDefaultLeftPortSplitPoint:I

    .line 1168
    sget v0, Lcom/android/email/activity/MessageListXL;->sDefaultLeftPortSplitPoint:I

    if-eq v0, v3, :cond_7

    .line 1169
    sget v0, Lcom/android/email/activity/MessageListXL;->sDefaultLeftPortSplitPoint:I

    sput v0, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    goto :goto_0

    .line 1171
    :cond_7
    sget v0, Lcom/android/email/activity/MessageListXL;->sLeftSplitpointPort:I

    sput v0, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/high16 v8, 0x200

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 599
    const-string v1, "Email"

    const-string v2, "MessageListXL onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 603
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->DPMReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/email/activity/MessageListXL;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 607
    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 609
    const v1, 0x7f04007f

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageListXL;->setContentView(I)V

    .line 612
    const-string v1, "AndroidMail.MessageList"

    invoke-virtual {p0, v1, v6}, Lcom/android/email/activity/MessageListXL;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListXL;->sSharedPrefer:Landroid/content/SharedPreferences;

    .line 622
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/email/activity/MessageListXL;->mOrientation:I

    .line 624
    sget-boolean v1, Lcom/android/email/activity/MessageListXL;->sInit:Z

    if-nez v1, :cond_0

    .line 625
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListXL;->sSearchMarginListLand:I

    .line 627
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListXL;->sSearchMarginViewLand:I

    .line 632
    :cond_0
    const-string v1, "AndroidMail.MessageList"

    invoke-virtual {p0, v1, v6}, Lcom/android/email/activity/MessageListXL;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageListXL;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 633
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v2, "prefer_split_left_land_point"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListXL;->sDefaultLeftLandSplitPoint:I

    .line 635
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v2, "prefer_split_left_port_point"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListXL;->sDefaultLeftPortSplitPoint:I

    .line 637
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v2, "prefer_split_point"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListXL;->sDefaultRightSplitPoint:I

    .line 640
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListXL;->sLeftSplitpointLand:I

    .line 641
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListXL;->sLeftSplitpointPort:I

    .line 644
    const v1, 0x7f1001c3

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageListXL;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/ThreePaneLayout;

    iput-object v1, p0, Lcom/android/email/activity/MessageListXL;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    .line 645
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v1, v6}, Lcom/android/email/activity/ThreePaneLayout;->setVisibleMessageSendingProgress(Z)V

    .line 647
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/ThreePaneLayout;->initCurrentPaneState()V

    .line 650
    iget v1, p0, Lcom/android/email/activity/MessageListXL;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 651
    sget v1, Lcom/android/email/activity/MessageListXL;->sDefaultLeftLandSplitPoint:I

    if-eq v1, v4, :cond_1

    .line 652
    sget v1, Lcom/android/email/activity/MessageListXL;->sDefaultLeftLandSplitPoint:I

    sput v1, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    .line 662
    :goto_0
    sget v1, Lcom/android/email/activity/MessageListXL;->sDefaultRightSplitPoint:I

    if-eq v1, v4, :cond_4

    .line 663
    sget v1, Lcom/android/email/activity/MessageListXL;->sDefaultRightSplitPoint:I

    sput v1, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    .line 670
    :goto_1
    const/16 v1, 0x140

    sput v1, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    .line 672
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    .line 673
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04003b

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageListXL;->mActionBarCustomView:Landroid/view/View;

    .line 674
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 675
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v7}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 676
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mActionBarCustomView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 684
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mActionBarCustomView:Landroid/view/View;

    const v2, 0x7f1000c1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    sput-object v1, Lcom/android/email/activity/MessageListXL;->sSearchBarLayout:Landroid/widget/LinearLayout;

    .line 685
    sget-object v1, Lcom/android/email/activity/MessageListXL;->sSearchBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 686
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mActionBarCustomView:Landroid/view/View;

    const v2, 0x7f1000be

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/CustomSpinner;

    iput-object v1, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    .line 687
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mActionBarCustomView:Landroid/view/View;

    const v2, 0x7f1000c5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/CustomSpinner;

    iput-object v1, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    .line 689
    new-instance v1, Lcom/android/email/activity/SearchTypeSelectorAdapter;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f04009b

    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->getSpinnerOptions()[Lcom/android/email/activity/setup/SpinnerOption;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/email/activity/SearchTypeSelectorAdapter;-><init>(Landroid/content/Context;I[Lcom/android/email/activity/setup/SpinnerOption;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageListXL;->mSearchAdapter:Lcom/android/email/activity/SearchTypeSelectorAdapter;

    .line 691
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mSearchAdapter:Lcom/android/email/activity/SearchTypeSelectorAdapter;

    const v2, 0x7f04009a

    invoke-virtual {v1, v2}, Lcom/android/email/activity/SearchTypeSelectorAdapter;->setDropDownViewResource(I)V

    .line 692
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mActionBarCustomView:Landroid/view/View;

    const v2, 0x7f1000c2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListXL;->sSearchEditFrame:Landroid/view/View;

    .line 693
    sget-object v1, Lcom/android/email/activity/MessageListXL;->sSearchEditFrame:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    sput-object v1, Lcom/android/email/activity/MessageListXL;->sSearchFrameLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    .line 694
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mActionBarCustomView:Landroid/view/View;

    const v2, 0x7f1000c7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;

    .line 695
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getImeOptions()I

    move-result v2

    or-int/2addr v2, v8

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 697
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mActionBarCustomView:Landroid/view/View;

    const v2, 0x7f1000c8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/email/activity/MessageListXL;->mQueryDummyText:Landroid/widget/TextView;

    .line 698
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mQueryDummyText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mQueryDummyText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getImeOptions()I

    move-result v2

    or-int/2addr v2, v8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 701
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    iget v2, p0, Lcom/android/email/activity/MessageListXL;->mOrientation:I

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->onActivityViewReady(I)V

    .line 702
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    .line 704
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->setupAccountView()V

    .line 705
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->setupSearchIndexView()V

    .line 706
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->setupSearchView()V

    .line 708
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->setupFollowUpFlagView()V

    .line 710
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageListXL;->mController:Lcom/android/email/Controller;

    .line 711
    invoke-static {p0}, Lcom/android/email/RefreshManager;->getInstance(Landroid/content/Context;)Lcom/android/email/RefreshManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageListXL;->mRefreshManager:Lcom/android/email/RefreshManager;

    .line 712
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mMailRefreshManagerListener:Lcom/android/email/activity/MessageListXL$RefreshListener;

    invoke-virtual {v1, v2}, Lcom/android/email/RefreshManager;->registerListener(Lcom/android/email/RefreshManager$Listener;)V

    .line 715
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    new-instance v2, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;

    invoke-direct {v2, p0, v5}, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;-><init>(Lcom/android/email/activity/MessageListXL;Lcom/android/email/activity/MessageListXL$1;)V

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->setMailboxListFragmentCallback(Lcom/android/email/activity/MailboxListFragment$Callback;)V

    .line 716
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    new-instance v2, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;

    invoke-direct {v2, p0, v5}, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;-><init>(Lcom/android/email/activity/MessageListXL;Lcom/android/email/activity/MessageListXL$1;)V

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->setMessageListFragmentCallback(Lcom/android/email/activity/MessageListFragment$Callback;)V

    .line 717
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    new-instance v2, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;

    invoke-direct {v2, p0, v5}, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;-><init>(Lcom/android/email/activity/MessageListXL;Lcom/android/email/activity/MessageListXL$1;)V

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->setMessageViewFragmentCallback(Lcom/android/email/activity/MessageViewFragment$Callback;)V

    .line 722
    new-instance v1, Lcom/android/email/activity/AccountSelectorAdapter;

    invoke-direct {v1, p0, v5}, Lcom/android/email/activity/AccountSelectorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageListXL;->mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;

    .line 724
    if-eqz p1, :cond_5

    .line 725
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v1, p1}, Lcom/android/email/activity/MessageListXLFragmentManager;->loadState(Landroid/os/Bundle;)V

    .line 729
    :goto_2
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->loadAccounts()V

    .line 735
    const v1, 0x7f1001c2

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageListXL;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/email/activity/MessageListXL;->mErrorMessageView:Landroid/widget/TextView;

    .line 736
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mErrorMessageView:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 739
    new-instance v1, Lcom/android/email/activity/BannerController;

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mErrorMessageView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v1, p0, v2, v3}, Lcom/android/email/activity/BannerController;-><init>(Landroid/content/Context;Landroid/widget/TextView;I)V

    .line 743
    invoke-virtual {p0, v7}, Lcom/android/email/activity/MessageListXL;->setProgressBarIndeterminate(Z)V

    .line 744
    invoke-virtual {p0, v6}, Lcom/android/email/activity/MessageListXL;->setProgressBarIndeterminateVisibility(Z)V

    .line 746
    new-instance v1, Lcom/android/email/ControllerResultUiThreadWrapper;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/email/activity/MessageListXL$ControllerResult;

    invoke-direct {v3, p0, v5}, Lcom/android/email/activity/MessageListXL$ControllerResult;-><init>(Lcom/android/email/activity/MessageListXL;Lcom/android/email/activity/MessageListXL$1;)V

    invoke-direct {v1, v2, v3}, Lcom/android/email/ControllerResultUiThreadWrapper;-><init>(Landroid/os/Handler;Lcom/android/email/Controller$Result;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageListXL;->mControllerResult:Lcom/android/email/Controller$Result;

    .line 748
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mController:Lcom/android/email/Controller;

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mControllerResult:Lcom/android/email/Controller$Result;

    invoke-virtual {v1, v2}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    .line 750
    iput-boolean v7, p0, Lcom/android/email/activity/MessageListXL;->mIsCreated:Z

    .line 755
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/combined/CombinedEmailManager;->getInstance(Landroid/content/Context;)Lcom/android/email/combined/CombinedEmailManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/combined/CombinedEmailManager;->getMessageFacade()Lcom/android/email/combined/MessageFacade;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageListXL;->mMessageFacade:Lcom/android/email/combined/MessageFacade;

    .line 757
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mMessageFacade:Lcom/android/email/combined/MessageFacade;

    invoke-virtual {v1, p0}, Lcom/android/email/combined/MessageFacade;->addListener(Landroid/content/Context;)V

    .line 761
    sget-object v1, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v0

    .line 762
    .local v0, settingValue:Lcom/android/email/Preferences;
    invoke-virtual {v0}, Lcom/android/email/Preferences;->getTextZoom()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/MessageListXL;->mfontSize:I

    .line 763
    invoke-virtual {v0}, Lcom/android/email/Preferences;->getPreViewLine()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/MessageListXL;->mPreviewLineSize:I

    .line 765
    invoke-virtual {v0}, Lcom/android/email/Preferences;->getTopLineInfoMode()I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListXL;->mTopLineMode:I

    .line 767
    invoke-virtual {v0}, Lcom/android/email/Preferences;->getSplitMode()Z

    move-result v1

    sput-boolean v1, Lcom/android/email/activity/MessageListXL;->mSplitMode:Z

    .line 784
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/MessageListXL;->mLandSplitMaxSize:I

    .line 786
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00f5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/MessageListXL;->mLandSplitMinSize:I

    .line 789
    return-void

    .line 654
    .end local v0           #settingValue:Lcom/android/email/Preferences;
    :cond_1
    sget v1, Lcom/android/email/activity/MessageListXL;->sLeftSplitpointLand:I

    sput v1, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    goto/16 :goto_0

    .line 656
    :cond_2
    sget v1, Lcom/android/email/activity/MessageListXL;->sDefaultLeftPortSplitPoint:I

    if-eq v1, v4, :cond_3

    .line 657
    sget v1, Lcom/android/email/activity/MessageListXL;->sDefaultLeftPortSplitPoint:I

    sput v1, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    goto/16 :goto_0

    .line 659
    :cond_3
    sget v1, Lcom/android/email/activity/MessageListXL;->sLeftSplitpointPort:I

    sput v1, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    goto/16 :goto_0

    .line 665
    :cond_4
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v2, "prefer_split_point"

    sget v3, Lcom/android/email/activity/MessageListXL;->sLeftSplitpointLand:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    goto/16 :goto_1

    .line 727
    :cond_5
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->initFromIntent()V

    goto/16 :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter

    .prologue
    .line 2575
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 2578
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0023

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2587
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 2584
    :catch_0
    move-exception v0

    .line 2585
    const-string v1, "MessageListXL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMenuInflater().inflate failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1026
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->DPMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageListXL;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1030
    sget-object v4, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v3

    .line 1031
    .local v3, settingValue:Lcom/android/email/Preferences;
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageListXLFragmentManager;->getUIAccountId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/email/Preferences;->setAccountId(J)V

    .line 1032
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/email/Preferences;->setMailboxId(J)V

    .line 1035
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "prefer_split_point"

    sget v6, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1037
    iget v4, p0, Lcom/android/email/activity/MessageListXL;->mOrientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    .line 1038
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "prefer_split_left_land_point"

    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1044
    :goto_0
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/email/activity/MessageListXL;->mIsCreated:Z

    .line 1045
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mController:Lcom/android/email/Controller;

    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mControllerResult:Lcom/android/email/Controller$Result;

    invoke-virtual {v4, v5}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 1046
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mRefreshTask:Lcom/android/email/activity/MessageListXL$RefreshTask;

    invoke-static {v4}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 1047
    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mRefreshTask:Lcom/android/email/activity/MessageListXL$RefreshTask;

    .line 1048
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mRefreshAllTask:Lcom/android/email/activity/MessageListXL$RefreshAllTask;

    invoke-static {v4}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 1049
    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mRefreshAllTask:Lcom/android/email/activity/MessageListXL$RefreshAllTask;

    .line 1050
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mMessageCheckerTask:Lcom/android/email/activity/MessageListXL$MessageCheckerTask;

    invoke-static {v4}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 1051
    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mMessageCheckerTask:Lcom/android/email/activity/MessageListXL$MessageCheckerTask;

    .line 1052
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mMailboxCheckTask:Lcom/android/email/activity/MessageListXL$MailboxCheckTask;

    invoke-static {v4}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 1053
    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mMailboxCheckTask:Lcom/android/email/activity/MessageListXL$MailboxCheckTask;

    .line 1054
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mMailRefreshManagerListener:Lcom/android/email/activity/MessageListXL$RefreshListener;

    invoke-virtual {v4, v5}, Lcom/android/email/RefreshManager;->unregisterListener(Lcom/android/email/RefreshManager$Listener;)V

    .line 1055
    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mMailRefreshManagerListener:Lcom/android/email/activity/MessageListXL$RefreshListener;

    .line 1057
    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mRefreshManager:Lcom/android/email/RefreshManager;

    .line 1058
    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mSearchAdapter:Lcom/android/email/activity/SearchTypeSelectorAdapter;

    .line 1059
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    if-eqz v4, :cond_0

    .line 1060
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v4, v7}, Lcom/android/email/activity/CustomSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1061
    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    .line 1063
    :cond_0
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;

    invoke-virtual {v4, v7}, Lcom/android/email/activity/AccountSelectorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1064
    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;

    .line 1065
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    if-eqz v4, :cond_1

    .line 1066
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v4, v7}, Lcom/android/email/activity/CustomSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1067
    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    .line 1070
    :cond_1
    sput-object v7, Lcom/android/email/activity/MessageListXL;->mComposeNewLayout:Landroid/widget/LinearLayout;

    .line 1071
    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mFollowUpFlagAdapter:Landroid/widget/ArrayAdapter;

    .line 1072
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mFollowUpFlagViewSpinner:Lcom/android/email/activity/CustomSpinner;

    if-eqz v4, :cond_2

    .line 1073
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mFollowUpFlagViewSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v4, v7}, Lcom/android/email/activity/CustomSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1074
    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mFollowUpFlagViewSpinner:Lcom/android/email/activity/CustomSpinner;

    .line 1076
    :cond_2
    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;

    .line 1077
    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mCloseButton:Landroid/widget/ImageView;

    .line 1078
    sput-object v7, Lcom/android/email/activity/MessageListXL;->sSearchEditFrame:Landroid/view/View;

    .line 1079
    sput-object v7, Lcom/android/email/activity/MessageListXL;->sSearchBarLayout:Landroid/widget/LinearLayout;

    .line 1080
    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mActionBarCustomView:Landroid/view/View;

    .line 1081
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4, v7}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 1082
    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    .line 1083
    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mErrorMessageView:Landroid/widget/TextView;

    .line 1084
    sput-object v7, Lcom/android/email/activity/MessageListXL;->sSearchFrameLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    .line 1091
    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mControllerResult:Lcom/android/email/Controller$Result;

    .line 1092
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    if-eqz v4, :cond_3

    .line 1093
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v4}, Lcom/android/email/activity/ThreePaneLayout;->destroy()V

    .line 1095
    :cond_3
    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    .line 1096
    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mController:Lcom/android/email/Controller;

    .line 1097
    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mItem:Lcom/android/email/activity/MessageListItem;

    .line 1098
    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mSubItem:Lcom/android/email/activity/MessageListSubTitleItem;

    .line 1099
    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mControllerResult:Lcom/android/email/Controller$Result;

    .line 1100
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->stopMessageOrderManager()V

    .line 1101
    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mMessageOrderManagerCallback:Lcom/android/email/activity/MessageListXL$MessageOrderManagerCallback;

    .line 1103
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mMailboxCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mMailboxCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1104
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mMailboxCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1105
    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mMailboxCursor:Landroid/database/Cursor;

    .line 1107
    :cond_4
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v4, v7}, Lcom/android/email/activity/MessageListXLFragmentManager;->setMailboxListFragmentCallback(Lcom/android/email/activity/MailboxListFragment$Callback;)V

    .line 1108
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v4, v7}, Lcom/android/email/activity/MessageListXLFragmentManager;->setMessageListFragmentCallback(Lcom/android/email/activity/MessageListFragment$Callback;)V

    .line 1109
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v4, v7}, Lcom/android/email/activity/MessageListXLFragmentManager;->setMessageViewFragmentCallback(Lcom/android/email/activity/MessageViewFragment$Callback;)V

    .line 1110
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageListXLFragmentManager;->onDestroy()V

    .line 1111
    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    .line 1113
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mMessageFacade:Lcom/android/email/combined/MessageFacade;

    if-eqz v4, :cond_5

    .line 1114
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mMessageFacade:Lcom/android/email/combined/MessageFacade;

    invoke-virtual {v4, p0}, Lcom/android/email/combined/MessageFacade;->removeListener(Landroid/content/Context;)V

    .line 1123
    :cond_5
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mDialog:Landroid/util/SparseArray;

    if-eqz v4, :cond_9

    .line 1124
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mDialog:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1125
    .local v2, num:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_8

    .line 1126
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mDialog:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MessageListXL$ManagedDialog;

    .line 1127
    .local v1, md:Lcom/android/email/activity/MessageListXL$ManagedDialog;
    iget-object v4, v1, Lcom/android/email/activity/MessageListXL$ManagedDialog;->dialog:Lcom/android/email/activity/MessageListXL$MessageListDialog;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageListXL$MessageListDialog;->isActive()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1128
    iget-object v4, v1, Lcom/android/email/activity/MessageListXL$ManagedDialog;->dialog:Lcom/android/email/activity/MessageListXL$MessageListDialog;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageListXL$MessageListDialog;->dismiss()V

    .line 1125
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1040
    .end local v0           #i:I
    .end local v1           #md:Lcom/android/email/activity/MessageListXL$ManagedDialog;
    .end local v2           #num:I
    :cond_7
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "prefer_split_left_port_point"

    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 1131
    .restart local v0       #i:I
    .restart local v2       #num:I
    :cond_8
    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mDialog:Landroid/util/SparseArray;

    .line 1134
    .end local v0           #i:I
    .end local v2           #num:I
    :cond_9
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1135
    return-void
.end method

.method public onFolderFailed(Lcom/android/email/combined/EmailException;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 4744
    return-void
.end method

.method public onFolderFinished(J)V
    .locals 0
    .parameter "accountId"

    .prologue
    .line 4695
    return-void
.end method

.method public onFolderStarted()V
    .locals 0

    .prologue
    .line 4688
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 2519
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 2521
    sparse-switch p1, :sswitch_data_0

    .line 2551
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 2532
    :sswitch_0
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isInSearchMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2533
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->onCloseSearch()V

    goto :goto_0

    .line 2535
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->onOpenSearch()V

    goto :goto_0

    .line 2540
    :sswitch_1
    const/16 v2, 0x1000

    invoke-virtual {p2, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2541
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewFragment;->getMessageWebView()Lcom/android/email/activity/MessageWebView;

    move-result-object v0

    .line 2542
    .local v0, webView:Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 2543
    invoke-virtual {v0}, Landroid/webkit/WebView;->copySelectionSec()Z

    .line 2544
    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->clearSelection()V

    goto :goto_0

    .line 2521
    nop

    :sswitch_data_0
    .sparse-switch
        0x1f -> :sswitch_1
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method public onMailboxChanged(JJ)V
    .locals 0
    .parameter "accountId"
    .parameter "newMailboxId"

    .prologue
    .line 1892
    return-void
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 2556
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListXL;->mIsMenuOpened:Z

    .line 2563
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onMessageFailed(Lcom/android/email/combined/EmailException;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 4654
    return-void
.end method

.method public onMessageFinished(J)V
    .locals 2
    .parameter "accountId"

    .prologue
    .line 4671
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/email/activity/MessageListXL$15;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/email/activity/MessageListXL$15;-><init>(Lcom/android/email/activity/MessageListXL;J)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4679
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4681
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4684
    :goto_0
    return-void

    .line 4682
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onMessageStarted()V
    .locals 0

    .prologue
    .line 4649
    return-void
.end method

.method public onMoveConversationAlwaysToMailboxSelected(JJ[J[Ljava/lang/String;I)V
    .locals 11
    .parameter "targetAccountId"
    .parameter "targetMailboxId"
    .parameter "messageIds"
    .parameter "convIds"
    .parameter "moveType"

    .prologue
    .line 1348
    sget-wide v0, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    const-wide/high16 v2, 0x1000

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1349
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mMessageCheckerTask:Lcom/android/email/activity/MessageListXL$MessageCheckerTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 1350
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mMessageCheckerTask:Lcom/android/email/activity/MessageListXL$MessageCheckerTask;

    .line 1351
    new-instance v0, Lcom/android/email/activity/MessageListXL$MessageCheckerTask;

    move-object v1, p0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/email/activity/MessageListXL$MessageCheckerTask;-><init>(Lcom/android/email/activity/MessageListXL;Landroid/app/Activity;JJ[J[Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mMessageCheckerTask:Lcom/android/email/activity/MessageListXL$MessageCheckerTask;

    .line 1353
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mMessageCheckerTask:Lcom/android/email/activity/MessageListXL$MessageCheckerTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListXL$MessageCheckerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1364
    :cond_0
    :goto_0
    return-void

    .line 1355
    :cond_1
    sget-object v0, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    aget-wide v1, p5, v1

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v10

    .line 1357
    .local v10, mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v10, :cond_0

    .line 1358
    new-instance v1, Ljava/util/HashSet;

    invoke-static/range {p6 .. p6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-wide v6, v10, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    move-object v0, p0

    move-wide v2, p3

    move-wide v4, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/email/activity/MessageListXL;->ConversationMoveAlways(Ljava/util/Set;JJJ)V

    .line 1360
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->onCurrentMessageGone()V

    .line 1361
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->onDeselectAll()V

    goto :goto_0
.end method

.method public onMoveToMailboxSelected(JJ[JI)V
    .locals 10
    .parameter "targetAccountId"
    .parameter "targetMailboxId"
    .parameter "messageIds"
    .parameter "moveType"

    .prologue
    .line 1332
    sget-wide v0, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    const-wide/high16 v2, 0x1000

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1333
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mMessageCheckerTask:Lcom/android/email/activity/MessageListXL$MessageCheckerTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 1334
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mMessageCheckerTask:Lcom/android/email/activity/MessageListXL$MessageCheckerTask;

    .line 1335
    new-instance v0, Lcom/android/email/activity/MessageListXL$MessageCheckerTask;

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p5

    move/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/email/activity/MessageListXL$MessageCheckerTask;-><init>(Lcom/android/email/activity/MessageListXL;Landroid/app/Activity;JJ[J[Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mMessageCheckerTask:Lcom/android/email/activity/MessageListXL$MessageCheckerTask;

    .line 1337
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mMessageCheckerTask:Lcom/android/email/activity/MessageListXL$MessageCheckerTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListXL$MessageCheckerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1343
    :goto_0
    return-void

    .line 1339
    :cond_0
    invoke-static/range {p0 .. p5}, Lcom/android/email/activity/ActivityHelper;->moveMessages(Landroid/app/Activity;JJ[J)V

    .line 1340
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->onCurrentMessageGone()V

    .line 1341
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->onDeselectAll()V

    goto :goto_0
.end method

.method public onMoveToNewer()V
    .locals 0

    .prologue
    .line 1896
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->moveToNewer()Z

    .line 1897
    return-void
.end method

.method public onMoveToOlder()V
    .locals 0

    .prologue
    .line 1901
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->moveToOlder()Z

    .line 1902
    return-void
.end method

.method public onOpenSearch()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 3490
    sget-object v0, Lcom/android/email/activity/MessageListXL;->sSearchBarLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 3522
    :goto_0
    return-void

    .line 3494
    :cond_0
    sget-boolean v0, Lcom/android/email/activity/MessageListXL;->sSearchMode:Z

    if-eqz v0, :cond_1

    .line 3495
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->onCloseSearch()V

    goto :goto_0

    .line 3499
    :cond_1
    sput-boolean v2, Lcom/android/email/activity/MessageListXL;->sSearchMode:Z

    .line 3500
    sget v0, Lcom/android/email/activity/MessageListXL;->sSortType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    .line 3501
    sget v0, Lcom/android/email/activity/MessageListXL;->sSortType:I

    sput v0, Lcom/android/email/activity/MessageListXL;->sPreviousSortType:I

    .line 3502
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    if-eqz v0, :cond_3

    .line 3503
    iget v0, p0, Lcom/android/email/activity/MessageListXL;->mOrientation:I

    if-ne v0, v2, :cond_4

    .line 3504
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/CustomSpinner;->setVisibility(I)V

    .line 3515
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3517
    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageListXL;->setLayoutAnim_slideSideToSide(Z)V

    .line 3518
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListXL;->mAnimationStarted:Z

    .line 3519
    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageListXL;->controlSearchVisible(Z)V

    .line 3520
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->updateViewsVisibility()V

    .line 3521
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->invalidateOptionsMenu()V

    goto :goto_0

    .line 3506
    :cond_4
    sget-object v0, Lcom/android/email/activity/MessageListXL;->sSearchFrameLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_5

    .line 3507
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->isMesssageListLeftside()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3508
    sget-object v0, Lcom/android/email/activity/MessageListXL;->sSearchFrameLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    sget v1, Lcom/android/email/activity/MessageListXL;->sSearchMarginViewLand:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 3512
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/CustomSpinner;->setVisibility(I)V

    goto :goto_1

    .line 3510
    :cond_6
    sget-object v0, Lcom/android/email/activity/MessageListXL;->sSearchFrameLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    sget v1, Lcom/android/email/activity/MessageListXL;->sSearchMarginListLand:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v5, 0x1

    .line 2695
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 2754
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    :goto_0
    return v5

    .line 2704
    :sswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageListXL;->onBackPressed(Z)Z

    move-result v5

    goto :goto_0

    .line 2730
    :sswitch_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->onAccountSettings()Z

    move-result v5

    goto :goto_0

    .line 2742
    :sswitch_2
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageListXL;->showDialog2(I)V

    goto :goto_0

    .line 2746
    :sswitch_3
    sget-wide v0, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2747
    invoke-static {p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide v0

    sput-wide v0, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    .line 2749
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mController:Lcom/android/email/Controller;

    sget-wide v1, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    invoke-static {p0, v0, v1, v2}, Lcom/android/email/activity/ActivityHelper;->clearDocumentsDB(Landroid/content/Context;Lcom/android/email/Controller;J)V

    .line 2750
    sget-wide v1, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    iget-wide v3, p0, Lcom/android/email/activity/MessageListXL;->mMailboxId:J

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/email/activity/EmailDocSearchQuery;->startActivity(Landroid/app/Activity;JJI)V

    goto :goto_0

    .line 2695
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f1002af -> :sswitch_1
        0x7f1002ef -> :sswitch_2
        0x7f1002f1 -> :sswitch_3
    .end sparse-switch
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 2568
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListXL;->mIsMenuOpened:Z

    .line 2569
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 2570
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 999
    const-string v0, "Email"

    const-string v1, "MessageListXL onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/EmailUtility;->getUnreadTotalCount(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/email/BadgeManager;->updateBadgeProvider(Landroid/content/Context;I)V

    .line 1004
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1005
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->onPause()V

    .line 1006
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 2610
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onRefresh()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 2923
    const-string v0, "EMAIL_PERFORMANCE"

    const-string v1, "onRefresh() START"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 2924
    const-wide/16 v0, -0x1

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->getActualAccountId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 2926
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mRefreshTask:Lcom/android/email/activity/MessageListXL$RefreshTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 2927
    iput-object v4, p0, Lcom/android/email/activity/MessageListXL;->mRefreshTask:Lcom/android/email/activity/MessageListXL$RefreshTask;

    .line 2928
    new-instance v0, Lcom/android/email/activity/MessageListXL$RefreshTask;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->getActualAccountId()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxId()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/email/activity/MessageListXL$RefreshTask;-><init>(Landroid/content/Context;JJLcom/android/email/activity/MessageListXLFragmentManager;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mRefreshTask:Lcom/android/email/activity/MessageListXL$RefreshTask;

    .line 2930
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mRefreshTask:Lcom/android/email/activity/MessageListXL$RefreshTask;

    new-array v1, v7, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListXL$RefreshTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2939
    :goto_0
    return-void

    .line 2934
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mRefreshAllTask:Lcom/android/email/activity/MessageListXL$RefreshAllTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 2935
    iput-object v4, p0, Lcom/android/email/activity/MessageListXL;->mRefreshAllTask:Lcom/android/email/activity/MessageListXL$RefreshAllTask;

    .line 2936
    new-instance v0, Lcom/android/email/activity/MessageListXL$RefreshAllTask;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageListXL$RefreshAllTask;-><init>(Landroid/content/Context;Lcom/android/email/activity/MessageListXLFragmentManager;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mRefreshAllTask:Lcom/android/email/activity/MessageListXL$RefreshAllTask;

    .line 2937
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mRefreshAllTask:Lcom/android/email/activity/MessageListXL$RefreshAllTask;

    new-array v1, v7, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListXL$RefreshAllTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onRefreshFromFragment()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2942
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->checkITPolicy_AllowPOPIMAP()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2943
    const v1, 0x7f0803cf

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2976
    :goto_0
    return v0

    .line 2948
    :cond_0
    sget-object v2, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_1

    move v2, v1

    .line 2950
    :goto_1
    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isNetworkConnected()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2951
    const v1, 0x7f080556

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    move v2, v0

    .line 2948
    goto :goto_1

    .line 2958
    :cond_2
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isNetworkConnected()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2959
    sput-boolean v0, Lcom/android/email/activity/MessageListXL;->doesMadUsersRefresh:Z

    .line 2960
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->onRefresh()V

    .line 2967
    :cond_3
    :goto_2
    const-wide/16 v2, -0x1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->getActualAccountId()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_5

    .line 2968
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageListXL;->updatedMailbox_toast(Ljava/lang/Long;)V

    :goto_3
    move v0, v1

    .line 2976
    goto :goto_0

    .line 2961
    :cond_4
    sget-boolean v0, Lcom/android/email/activity/MessageListXL;->doesMadUsersRefresh:Z

    if-nez v0, :cond_3

    .line 2962
    sput-boolean v1, Lcom/android/email/activity/MessageListXL;->doesMadUsersRefresh:Z

    .line 2963
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->onRefresh()V

    goto :goto_2

    .line 2970
    :cond_5
    sget-object v0, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide v2

    .line 2971
    sget-object v0, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getInboxId(Landroid/content/Context;J)J

    move-result-wide v2

    .line 2973
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageListXL;->updatedMailbox_toast(Ljava/lang/Long;)V

    goto :goto_3
.end method

.method public onResultSearchRequested()Z
    .locals 5

    .prologue
    const/4 v4, 0x6

    const/4 v0, 0x0

    .line 3307
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;

    if-nez v1, :cond_0

    .line 3329
    :goto_0
    return v0

    .line 3312
    :cond_0
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "previous sort type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/email/activity/MessageListXL;->sPreviousSortType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3313
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/email/activity/MessageListXL;->sSearchBarLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/email/activity/MessageListXL;->sSearchBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 3315
    :cond_1
    const/4 v1, 0x0

    sput-object v1, Lcom/android/email/activity/MessageListXL;->sSearchString:Ljava/lang/String;

    .line 3316
    sget v1, Lcom/android/email/activity/MessageListXL;->sPreviousSortType:I

    if-ne v1, v4, :cond_3

    .line 3317
    sput v0, Lcom/android/email/activity/MessageListXL;->sPreviousSortType:I

    .line 3318
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    sget v1, Lcom/android/email/activity/MessageListXL;->sPreviousSortType:I

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->onSortBy(I)V

    .line 3319
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->updateOrderManager()V

    .line 3329
    :cond_2
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 3320
    :cond_3
    sget v0, Lcom/android/email/activity/MessageListXL;->sPreviousSortType:I

    sget v1, Lcom/android/email/activity/MessageListXL;->sSortType:I

    if-eq v0, v1, :cond_2

    .line 3321
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    sget v1, Lcom/android/email/activity/MessageListXL;->sPreviousSortType:I

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->onSortBy(I)V

    .line 3322
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->updateOrderManager()V

    goto :goto_1

    .line 3325
    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/MessageListXL;->sSearchString:Ljava/lang/String;

    .line 3326
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageListXLFragmentManager;->onSortBy(I)V

    .line 3327
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->updateOrderManager()V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 12

    .prologue
    const/4 v4, 0x0

    const-wide/16 v10, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 860
    const-string v0, "Email"

    const-string v1, "MessageListXL onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 863
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->changeFontSize_preference()V

    .line 864
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->changePreviewLineSize_preference()V

    .line 865
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->changeTopLineMode_preference()V

    .line 866
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->changeSplitMode_preference()V

    .line 868
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "prefer_view_mode"

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/email/activity/MessageListXL;->sViewMode:I

    .line 870
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mQueryDummyText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 871
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mQueryDummyText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/MessageListXL;->sTypeface:Landroid/graphics/Typeface;

    .line 873
    :cond_0
    sget v0, Lcom/android/email/activity/MessageListXL;->sViewMode:I

    if-ne v0, v7, :cond_9

    .line 874
    const/4 v0, 0x7

    sput v0, Lcom/android/email/activity/MessageListXL;->sSortType:I

    .line 875
    sget v0, Lcom/android/email/activity/MessageListXL;->sSortType:I

    sput v0, Lcom/android/email/activity/MessageListXL;->sPreviousSortType:I

    .line 881
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    iget v1, p0, Lcom/android/email/activity/MessageListXL;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->refreshFragment(I)V

    .line 883
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v0

    if-eq v0, v7, :cond_1

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 886
    :cond_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->refreshActionBarLayout()V

    .line 889
    :cond_2
    sget-boolean v0, Lcom/android/email/activity/Welcome;->fromWidget:Z

    if-eqz v0, :cond_3

    .line 890
    sput-boolean v8, Lcom/android/email/activity/Welcome;->fromWidget:Z

    .line 893
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->onFragmentSetHasOptionMenu()V

    .line 895
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->onResume()V

    .line 897
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isInSearchMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 898
    invoke-virtual {p0, v7}, Lcom/android/email/activity/MessageListXL;->controlSearchVisible(Z)V

    .line 899
    invoke-virtual {p0, v8}, Lcom/android/email/activity/MessageListXL;->controlAccountSpinnerVisible(Z)V

    .line 900
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->onResultSearchRequested()Z

    .line 903
    :cond_4
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "displayName is not \'##snc##\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 907
    if-eqz v9, :cond_5

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_a

    .line 909
    :cond_5
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FROM_SHORTCUT"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 910
    const v0, 0x7f080270

    invoke-static {p0, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 914
    :cond_6
    const-string v0, "Email"

    const-string v1, "[toma] MessageListXL onResume ZERO"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    invoke-static {p0}, Lcom/android/email/activity/Welcome;->actionStart(Landroid/app/Activity;)V

    .line 916
    if-eqz v9, :cond_7

    .line 917
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 919
    :cond_7
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->finish()V

    .line 982
    :goto_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ACCOUNT_ID"

    sget-wide v2, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 993
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_8

    .line 994
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 995
    :cond_8
    :goto_2
    return-void

    .line 877
    :cond_9
    sget-object v0, Lcom/android/email/activity/MessageListXL;->sSharedPrefer:Landroid/content/SharedPreferences;

    const-string v1, "prefer_sort_type"

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/email/activity/MessageListXL;->sSortType:I

    .line 878
    sget v0, Lcom/android/email/activity/MessageListXL;->sSortType:I

    sput v0, Lcom/android/email/activity/MessageListXL;->sPreviousSortType:I

    goto/16 :goto_0

    .line 922
    :cond_a
    sget-wide v0, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    .line 924
    if-eqz v1, :cond_b

    iget-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget v0, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_b

    .line 927
    iget v0, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit16 v0, v0, 0x4000

    if-nez v0, :cond_e

    .line 928
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ACCOUNT_ID"

    sget-wide v2, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 930
    cmp-long v2, v0, v10

    if-eqz v2, :cond_b

    .line 931
    new-instance v2, Lcom/android/email/activity/MessageListXL$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/email/activity/MessageListXL$1;-><init>(Lcom/android/email/activity/MessageListXL;J)V

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListXL$1;->start()V

    .line 955
    :cond_b
    :goto_3
    const/4 v0, -0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 956
    :cond_c
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 957
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 958
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-wide v2, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const-wide/high16 v0, 0x1000

    sget-wide v2, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 960
    :cond_d
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->onResume()V

    .line 961
    if-eqz v9, :cond_8

    .line 962
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 939
    :cond_e
    iget v0, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_b

    .line 940
    sget-object v0, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    sget-wide v2, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    invoke-static {v0, v2, v3, v7}, Lcom/android/email/activity/setup/AccountSecurity;->actionDevicePasswordExpirationIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v5

    .line 942
    sget-object v0, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    const v2, 0x7f080128

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 943
    sget-object v0, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    const v3, 0x7f080129

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 945
    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    .line 946
    sget-object v0, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v0

    .line 947
    const/4 v6, 0x5

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/NotificationController;->postAccountNotification(Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    goto :goto_3

    .line 975
    :cond_f
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 976
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 977
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    move-wide v3, v10

    move-wide v5, v10

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectAccount(JJJZZ)V

    .line 978
    sput-wide v1, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    goto/16 :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 831
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 836
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v1, p1}, Lcom/android/email/activity/MessageListXLFragmentManager;->onSaveInstanceState(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 840
    :goto_1
    return-void

    .line 832
    :catch_0
    move-exception v0

    .line 833
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MessageListXL"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 837
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 838
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "MessageListXL"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onSearchRequested()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3447
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 3461
    :goto_0
    return v2

    .line 3452
    :cond_0
    sget-boolean v0, Lcom/android/email/activity/MessageListXL;->sSearchMode:Z

    if-ne v0, v2, :cond_2

    .line 3453
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListXL;->mAnimationStarted:Z

    if-nez v0, :cond_1

    .line 3454
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->onCloseSearch()V

    .line 3456
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/activity/MessageListXL;->sSearchMode:Z

    goto :goto_0

    .line 3459
    :cond_2
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->onOpenSearch()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 847
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 848
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->onStart()V

    .line 849
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->isMessageSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 850
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->updateMessageOrderManager()V

    .line 853
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/MessageListXL;->sDateFormat:Ljava/text/DateFormat;

    .line 854
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/MessageListXL;->sDayFormat:Ljava/text/DateFormat;

    .line 855
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/MessageListXL;->sTimeFormat:Ljava/text/DateFormat;

    .line 856
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 1013
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1015
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->onStop()V

    .line 1016
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->stopMessageOrderManager()V

    .line 1017
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 4594
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    move v0, v1

    .line 4619
    :goto_1
    return v0

    .line 4596
    :sswitch_0
    sget v2, Lcom/android/email/activity/MessageListXL;->sSelectedSearchType:I

    if-ne v2, v3, :cond_0

    .line 4598
    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageListXL;->showDialog2(I)V

    goto :goto_1

    .line 4603
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 4604
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/CustomSpinner;->playSoundEffect(I)V

    goto :goto_0

    .line 4607
    :sswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 4608
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v2, v1}, Lcom/android/email/activity/CustomSpinner;->playSoundEffect(I)V

    .line 4609
    :cond_1
    iget-boolean v2, p0, Lcom/android/email/activity/MessageListXL;->mAnimationStarted:Z

    if-eqz v2, :cond_0

    goto :goto_1

    .line 4614
    :sswitch_3
    iget-boolean v2, p0, Lcom/android/email/activity/MessageListXL;->mAnimationStarted:Z

    if-eqz v2, :cond_0

    goto :goto_1

    .line 4594
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1000be -> :sswitch_1
        0x7f1000c1 -> :sswitch_3
        0x7f1000c5 -> :sswitch_2
        0x7f1000c8 -> :sswitch_0
    .end sparse-switch
.end method

.method public setAccountVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 2079
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/CustomSpinner;->setVisibility(I)V

    .line 2081
    return-void
.end method

.method public setActionBarCustomForMessageList()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1207
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1208
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSplitMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/email/activity/MessageListXL;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1209
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 1212
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 1213
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mActionBarCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 1214
    return-void

    .line 1211
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    goto :goto_0
.end method

.method public setImeVisibility(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 3350
    const v0, 0x7f1000c7

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageListXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 3351
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageListXL;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 3352
    if-eqz v1, :cond_0

    .line 3353
    if-eqz p1, :cond_1

    .line 3358
    const/4 v0, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputUnchecked(ILandroid/os/ResultReceiver;)V

    .line 3366
    :cond_0
    :goto_0
    return-void

    .line 3362
    :cond_1
    if-eqz v0, :cond_0

    .line 3363
    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method public setLayoutAnim_slideSideToSide(Z)V
    .locals 14
    .parameter "directionToLeft"

    .prologue
    const/high16 v4, 0x3f80

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3370
    sget-object v3, Lcom/android/email/activity/MessageListXL;->sSearchBarLayout:Landroid/widget/LinearLayout;

    if-nez v3, :cond_0

    .line 3443
    :goto_0
    return-void

    .line 3371
    :cond_0
    if-nez p1, :cond_1

    .line 3372
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 3375
    .local v0, ani:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 3376
    new-instance v1, Lcom/android/email/activity/MessageListXL$12;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageListXL$12;-><init>(Lcom/android/email/activity/MessageListXL;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3404
    sget-object v1, Lcom/android/email/activity/MessageListXL;->sSearchBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 3407
    .end local v0           #ani:Landroid/view/animation/Animation;
    :cond_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move-object v5, v0

    move v6, v1

    move v7, v4

    move v8, v1

    move v9, v2

    move v10, v1

    move v11, v2

    move v12, v1

    move v13, v2

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 3410
    .restart local v0       #ani:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 3411
    new-instance v1, Lcom/android/email/activity/MessageListXL$13;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageListXL$13;-><init>(Lcom/android/email/activity/MessageListXL;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3440
    sget-object v1, Lcom/android/email/activity/MessageListXL;->sSearchBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3441
    sget-object v1, Lcom/android/email/activity/MessageListXL;->sSearchBarLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setLeftSplitType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 4207
    sput p1, Lcom/android/email/activity/MessageListXL;->sLeftSplitType:I

    .line 4208
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MailboxListFragment;->setListSplit(I)V

    .line 4209
    return-void
.end method

.method public setRightSplitToPreference(I)V
    .locals 2
    .parameter "width"

    .prologue
    .line 4217
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "prefer_split_point"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4218
    return-void
.end method

.method public setRightSplitType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 4212
    sput p1, Lcom/android/email/activity/MessageListXL;->sRightSplitType:I

    .line 4213
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessageListFragment;->setListSplit(I)V

    .line 4214
    return-void
.end method

.method public setSearchSpinnerOption()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 3170
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mSearchAdapter:Lcom/android/email/activity/SearchTypeSelectorAdapter;

    if-eqz v1, :cond_0

    .line 3171
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->getSpinnerOptions()[Lcom/android/email/activity/setup/SpinnerOption;

    move-result-object v0

    .line 3172
    .local v0, localOption:[Lcom/android/email/activity/setup/SpinnerOption;
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v1, v2}, Lcom/android/email/activity/CustomSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 3173
    iput-object v2, p0, Lcom/android/email/activity/MessageListXL;->mSearchAdapter:Lcom/android/email/activity/SearchTypeSelectorAdapter;

    .line 3174
    new-instance v1, Lcom/android/email/activity/SearchTypeSelectorAdapter;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f04009b

    invoke-direct {v1, v2, v3, v0}, Lcom/android/email/activity/SearchTypeSelectorAdapter;-><init>(Landroid/content/Context;I[Lcom/android/email/activity/setup/SpinnerOption;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageListXL;->mSearchAdapter:Lcom/android/email/activity/SearchTypeSelectorAdapter;

    .line 3176
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mSearchAdapter:Lcom/android/email/activity/SearchTypeSelectorAdapter;

    const v2, 0x7f04009a

    invoke-virtual {v1, v2}, Lcom/android/email/activity/SearchTypeSelectorAdapter;->setDropDownViewResource(I)V

    .line 3177
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mSearchAdapter:Lcom/android/email/activity/SearchTypeSelectorAdapter;

    invoke-virtual {v1, v2}, Lcom/android/email/activity/CustomSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 3178
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    sget v2, Lcom/android/email/activity/MessageListXL;->sSelectedSearchType:I

    invoke-virtual {v1, v2}, Lcom/android/email/activity/CustomSpinner;->setSelection(I)V

    .line 3180
    .end local v0           #localOption:[Lcom/android/email/activity/setup/SpinnerOption;
    :cond_0
    return-void
.end method

.method public showDialog2(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 4747
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mDialog:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 4748
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mDialog:Landroid/util/SparseArray;

    .line 4750
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mDialog:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListXL$ManagedDialog;

    .line 4751
    if-nez v0, :cond_2

    .line 4752
    new-instance v0, Lcom/android/email/activity/MessageListXL$ManagedDialog;

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageListXL$ManagedDialog;-><init>(Lcom/android/email/activity/MessageListXL;Lcom/android/email/activity/MessageListXL$1;)V

    .line 4753
    invoke-static {p1, v1}, Lcom/android/email/activity/MessageListXL$MessageListDialog;->newInstance(ILandroid/os/Bundle;)Lcom/android/email/activity/MessageListXL$MessageListDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/android/email/activity/MessageListXL$ManagedDialog;->dialog:Lcom/android/email/activity/MessageListXL$MessageListDialog;

    .line 4754
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mDialog:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4762
    :goto_0
    iget-object v0, v0, Lcom/android/email/activity/MessageListXL$ManagedDialog;->dialog:Lcom/android/email/activity/MessageListXL$MessageListDialog;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "MessageListXL"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageListXL$MessageListDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 4763
    :cond_1
    return-void

    .line 4755
    :cond_2
    iget-object v1, v0, Lcom/android/email/activity/MessageListXL$ManagedDialog;->dialog:Lcom/android/email/activity/MessageListXL$MessageListDialog;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXL$MessageListDialog;->isActive()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 4758
    iget-object v1, v0, Lcom/android/email/activity/MessageListXL$ManagedDialog;->dialog:Lcom/android/email/activity/MessageListXL$MessageListDialog;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXL$MessageListDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 4759
    const-string v2, "bundle"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 4760
    iget-object v2, v0, Lcom/android/email/activity/MessageListXL$ManagedDialog;->dialog:Lcom/android/email/activity/MessageListXL$MessageListDialog;

    invoke-virtual {v2, v1}, Lcom/android/email/activity/MessageListXL$MessageListDialog;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public showDialog2(ILandroid/os/Bundle;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 4766
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mDialog:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 4767
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mDialog:Landroid/util/SparseArray;

    .line 4769
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mDialog:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListXL$ManagedDialog;

    .line 4770
    if-nez v0, :cond_2

    .line 4771
    new-instance v0, Lcom/android/email/activity/MessageListXL$ManagedDialog;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageListXL$ManagedDialog;-><init>(Lcom/android/email/activity/MessageListXL;Lcom/android/email/activity/MessageListXL$1;)V

    .line 4772
    invoke-static {p1, p2}, Lcom/android/email/activity/MessageListXL$MessageListDialog;->newInstance(ILandroid/os/Bundle;)Lcom/android/email/activity/MessageListXL$MessageListDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/android/email/activity/MessageListXL$ManagedDialog;->dialog:Lcom/android/email/activity/MessageListXL$MessageListDialog;

    .line 4773
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mDialog:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4781
    :goto_0
    iget-object v0, v0, Lcom/android/email/activity/MessageListXL$ManagedDialog;->dialog:Lcom/android/email/activity/MessageListXL$MessageListDialog;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "MessageListXL"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageListXL$MessageListDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 4782
    :cond_1
    return-void

    .line 4774
    :cond_2
    iget-object v1, v0, Lcom/android/email/activity/MessageListXL$ManagedDialog;->dialog:Lcom/android/email/activity/MessageListXL$MessageListDialog;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXL$MessageListDialog;->isActive()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 4777
    iget-object v1, v0, Lcom/android/email/activity/MessageListXL$ManagedDialog;->dialog:Lcom/android/email/activity/MessageListXL$MessageListDialog;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXL$MessageListDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 4778
    const-string v2, "bundle"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4779
    iget-object v2, v0, Lcom/android/email/activity/MessageListXL$ManagedDialog;->dialog:Lcom/android/email/activity/MessageListXL$MessageListDialog;

    invoke-virtual {v2, v1}, Lcom/android/email/activity/MessageListXL$MessageListDialog;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public showFollowUpFlag()V
    .locals 0

    .prologue
    .line 1849
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->showFollowUpView()V

    .line 1850
    return-void
.end method
