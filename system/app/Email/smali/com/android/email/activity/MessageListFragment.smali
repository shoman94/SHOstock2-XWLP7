.class public Lcom/android/email/activity/MessageListFragment;
.super Landroid/app/ListFragment;
.source "MessageListFragment.java"

# interfaces
.implements Landroid/view/View$OnDragListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/android/email/activity/MessagesAdapter$Callback;
.implements Lcom/android/email/activity/MoveMessageToDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageListFragment$PositionScroller;,
        Lcom/android/email/activity/MessageListFragment$ListViewPos;,
        Lcom/android/email/activity/MessageListFragment$State;,
        Lcom/android/email/activity/MessageListFragment$RefreshListener;,
        Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;,
        Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;,
        Lcom/android/email/activity/MessageListFragment$MailboxAccountLoaderCallback;,
        Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;,
        Lcom/android/email/activity/MessageListFragment$MessageOpenTask;,
        Lcom/android/email/activity/MessageListFragment$ShadowBuilder;,
        Lcom/android/email/activity/MessageListFragment$EmptyCallback;,
        Lcom/android/email/activity/MessageListFragment$Callback;
    }
.end annotation


# static fields
.field private static BACKGROUND_GREY:I

.field private static activity_CALLBACK:Lcom/android/email/activity/MessageListFragment$Callback;

.field private static countLoadComment:I

.field private static isCheckNetworkState:Z

.field private static isFavorite:Ljava/lang/Boolean;

.field private static isLoadComment:Z

.field public static mIsEasAccount:Z

.field public static mIsSevenAccount:Z

.field private static mLoadReserved:Z

.field public static mResumed:Z

.field private static sFooterProgressWidth:I

.field private static sListFooterViewHeight:I

.field private static sListFragmentPadding:I

.field private static sListPadding:I

.field private static sMessageListColorBgDarkDarkTheme:I

.field private static sMessageListColorBgDarkWhiteTheme:I

.field private static sMessageListColorBgLightDarkTheme:I

.field private static sMessageListColorBgLightWhiteTheme:I

.field private static sMessageListFooterTextColorDarkTheme:I

.field private static sMessageListFooterTextColorWhiteTheme:I

.field public static sms_selected:I


# instance fields
.field private final BOUNCE:I

.field private final BOUNCE_FLICK_DOWN:I

.field private final POST_DELAY_TIME:I

.field private final VIEW_HEIGHT:I

.field private bEnableFlickUp:Z

.field private bIsDown:Z

.field private bIsLoading:Z

.field private bIsRefreshing:Z

.field private bIsScrollingDown:Z

.field broadcastReceiver:Landroid/content/BroadcastReceiver;

.field composeLayout:Landroid/widget/LinearLayout;

.field composeLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

.field composeMenu:Landroid/view/MenuItem;

.field private count:I

.field ctx:Landroid/content/Context;

.field private hasMailboxToMove:Z

.field private mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

.field private mActivity:Landroid/app/Activity;

.field protected mBase:I

.field private mBgColor:I

.field private mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

.field private mContext:Landroid/content/Context;

.field protected mContextMenu:Landroid/view/View$OnCreateContextMenuListener;

.field private mController:Lcom/android/email/Controller;

.field private mCurrentState:I

.field private mDoAutoRefresh:Z

.field private mExpandFactor:I

.field private mFirstPosition:I

.field private mFooterTextId:I

.field private mFooterTextPadding:I

.field protected mHeightLandscape:I

.field public final mHeightNoBarPortrait:I

.field public final mHeightPortrait:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsKeyDownEvent:Z

.field private mIsRefreshable:Z

.field private mIsSending:Z

.field private mIsVisible:Z

.field protected mItemClick:Landroid/widget/AdapterView$OnItemClickListener;

.field private mLastLoadedMailboxId:J

.field private mLastPos:I

.field private mLastSelectionModeCallback:Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;

.field public mLastSp:I

.field private mListAdapter:Lcom/android/email/activity/MessagesAdapter;

.field private mListFooterCountText:Landroid/widget/TextView;

.field private mListFooterMode:I

.field private mListFooterProgress:Landroid/view/View;

.field private mListFooterText:Landroid/widget/TextView;

.field private mListFooterView:Landroid/view/View;

.field private mListFooterView2:Landroid/view/View;

.field private mListFooterViewLine2:Landroid/widget/ImageView;

.field private mListFooterViewLine3:Landroid/widget/ImageView;

.field private mListFooterViewLineBottom:Landroid/widget/ImageView;

.field private mListFooterViewLineTop:Landroid/widget/ImageView;

.field private mListFooterViewText2:Landroid/widget/TextView;

.field private mListHeaderBottom:Landroid/view/View;

.field private mListHeaderBottomShadow:Landroid/view/View;

.field protected mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

.field private mListHeaderTop:Landroid/view/View;

.field private mListPanel:Landroid/view/View;

.field private mListShadow:Landroid/view/View;

.field private mListView:Landroid/widget/ListView;

.field private final mListViewPos:Lcom/android/email/activity/MessageListFragment$ListViewPos;

.field private mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

.field private mMailboxId:J

.field private mMenuitemRefresh:Landroid/view/MenuItem;

.field private mMessageListColorBgDark:I

.field private mMessageListColorBgLight:I

.field private mMessageListFragment:Landroid/view/View;

.field private mMessageOpenTask:Lcom/android/email/activity/MessageListFragment$MessageOpenTask;

.field private mMultiTouchEnabled:Z

.field private mNeedToFlickDownRefresh:Z

.field private mNoMessagesIcon:Landroid/view/View;

.field private mNoMessagesPanel:Landroid/widget/TextView;

.field private mOpenRequested:Z

.field private mOrientation:I

.field private mPrevRawY:I

.field private mPreviousCursor:Landroid/database/Cursor;

.field private mRefreshListCount:I

.field private mRefreshListener:Lcom/android/email/activity/MessageListFragment$RefreshListener;

.field private mRefreshManager:Lcom/android/email/RefreshManager;

.field private mSavedListState:Lcom/android/emailcommon/utility/Utility$ListStateSaver;

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mScroller:Lcom/android/email/activity/MessageListFragment$PositionScroller;

.field private mSelectedMessageId:J

.field private mSelectionMode:Landroid/view/ActionMode;

.field private mShrinkFactor:I

.field private mTotalCount:I

.field private mTotalCountFromMailbox:I

.field private mUnReadCount:I

.field private mUseFlickDown:Z

.field private mUseFlickUp:Z

.field private final otherListner:Landroid/widget/AbsListView$OnScrollListener;

.field private touchandmove:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 164
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/activity/MessageListFragment;->activity_CALLBACK:Lcom/android/email/activity/MessageListFragment$Callback;

    .line 202
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/MessageListFragment;->isFavorite:Ljava/lang/Boolean;

    .line 233
    sput-boolean v1, Lcom/android/email/activity/MessageListFragment;->mIsSevenAccount:Z

    .line 237
    sput v1, Lcom/android/email/activity/MessageListFragment;->sms_selected:I

    .line 272
    sput v2, Lcom/android/email/activity/MessageListFragment;->sListPadding:I

    .line 274
    sput v2, Lcom/android/email/activity/MessageListFragment;->sListFragmentPadding:I

    .line 318
    sput v1, Lcom/android/email/activity/MessageListFragment;->sFooterProgressWidth:I

    .line 421
    sput-boolean v3, Lcom/android/email/activity/MessageListFragment;->isLoadComment:Z

    .line 423
    sput v1, Lcom/android/email/activity/MessageListFragment;->countLoadComment:I

    .line 425
    sput-boolean v3, Lcom/android/email/activity/MessageListFragment;->isCheckNetworkState:Z

    .line 429
    const/4 v0, 0x2

    sput v0, Lcom/android/email/activity/MessageListFragment;->BACKGROUND_GREY:I

    .line 437
    sput-boolean v1, Lcom/android/email/activity/MessageListFragment;->mLoadReserved:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const-wide/16 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 144
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 162
    sget-object v0, Lcom/android/email/activity/MessageListFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MessageListFragment$Callback;

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    .line 221
    iput-wide v5, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    .line 223
    iput-wide v5, p0, Lcom/android/email/activity/MessageListFragment;->mLastLoadedMailboxId:J

    .line 225
    iput-wide v5, p0, Lcom/android/email/activity/MessageListFragment;->mSelectedMessageId:J

    .line 246
    new-instance v0, Lcom/android/email/activity/MessageListFragment$RefreshListener;

    invoke-direct {v0, p0, v2}, Lcom/android/email/activity/MessageListFragment$RefreshListener;-><init>(Lcom/android/email/activity/MessageListFragment;Lcom/android/email/activity/MessageListFragment$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshListener:Lcom/android/email/activity/MessageListFragment$RefreshListener;

    .line 261
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListFragment;->mMultiTouchEnabled:Z

    .line 263
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListFragment;->mNeedToFlickDownRefresh:Z

    .line 265
    iput v1, p0, Lcom/android/email/activity/MessageListFragment;->mExpandFactor:I

    .line 267
    iput v1, p0, Lcom/android/email/activity/MessageListFragment;->mShrinkFactor:I

    .line 289
    iput-boolean v4, p0, Lcom/android/email/activity/MessageListFragment;->mIsVisible:Z

    .line 308
    iput v1, p0, Lcom/android/email/activity/MessageListFragment;->mUnReadCount:I

    .line 310
    iput v1, p0, Lcom/android/email/activity/MessageListFragment;->mTotalCount:I

    .line 314
    iput v1, p0, Lcom/android/email/activity/MessageListFragment;->mFooterTextPadding:I

    .line 316
    iput-boolean v4, p0, Lcom/android/email/activity/MessageListFragment;->hasMailboxToMove:Z

    .line 336
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListFragment;->mIsSending:Z

    .line 338
    iput v3, p0, Lcom/android/email/activity/MessageListFragment;->mTotalCountFromMailbox:I

    .line 340
    iput v1, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshListCount:I

    .line 342
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListFragment;->mIsKeyDownEvent:Z

    .line 347
    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/email/activity/MessageListFragment;->POST_DELAY_TIME:I

    .line 357
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListFragment;->mUseFlickDown:Z

    .line 359
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListFragment;->mUseFlickUp:Z

    .line 361
    iput v1, p0, Lcom/android/email/activity/MessageListFragment;->mCurrentState:I

    .line 363
    iput-boolean v4, p0, Lcom/android/email/activity/MessageListFragment;->bIsRefreshing:Z

    .line 365
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListFragment;->bIsLoading:Z

    .line 367
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListFragment;->bEnableFlickUp:Z

    .line 369
    iput-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

    .line 373
    const/16 v0, 0x60

    iput v0, p0, Lcom/android/email/activity/MessageListFragment;->VIEW_HEIGHT:I

    .line 375
    iput v1, p0, Lcom/android/email/activity/MessageListFragment;->BOUNCE:I

    .line 377
    iput-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 379
    iput-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mContextMenu:Landroid/view/View$OnCreateContextMenuListener;

    .line 381
    iput-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    .line 389
    iput-boolean v4, p0, Lcom/android/email/activity/MessageListFragment;->touchandmove:Z

    .line 391
    iput-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    .line 393
    const/16 v0, 0x15e

    iput v0, p0, Lcom/android/email/activity/MessageListFragment;->mHeightLandscape:I

    .line 395
    const/16 v0, 0x286

    iput v0, p0, Lcom/android/email/activity/MessageListFragment;->mBase:I

    .line 397
    const/16 v0, 0x286

    iput v0, p0, Lcom/android/email/activity/MessageListFragment;->mHeightPortrait:I

    .line 399
    const/16 v0, 0x2ac

    iput v0, p0, Lcom/android/email/activity/MessageListFragment;->mHeightNoBarPortrait:I

    .line 405
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListFragment;->bIsDown:Z

    .line 407
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListFragment;->bIsScrollingDown:Z

    .line 409
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/email/activity/MessageListFragment;->mLastPos:I

    .line 411
    const/16 v0, 0x20

    iput v0, p0, Lcom/android/email/activity/MessageListFragment;->BOUNCE_FLICK_DOWN:I

    .line 413
    iput v1, p0, Lcom/android/email/activity/MessageListFragment;->mFirstPosition:I

    .line 415
    new-instance v0, Lcom/android/email/activity/MessageListFragment$ListViewPos;

    invoke-direct {v0}, Lcom/android/email/activity/MessageListFragment$ListViewPos;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListViewPos:Lcom/android/email/activity/MessageListFragment$ListViewPos;

    .line 417
    iput-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mScroller:Lcom/android/email/activity/MessageListFragment$PositionScroller;

    .line 419
    iput v3, p0, Lcom/android/email/activity/MessageListFragment;->mLastSp:I

    .line 427
    iput v3, p0, Lcom/android/email/activity/MessageListFragment;->mBgColor:I

    .line 433
    iput v3, p0, Lcom/android/email/activity/MessageListFragment;->count:I

    .line 684
    new-instance v0, Lcom/android/email/activity/MessageListFragment$1;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageListFragment$1;-><init>(Lcom/android/email/activity/MessageListFragment;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 4717
    new-instance v0, Lcom/android/email/activity/MessageListFragment$13;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageListFragment$13;-><init>(Lcom/android/email/activity/MessageListFragment;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->otherListner:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method private IsEAS()Z
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 744
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getAccountId()J

    move-result-wide v0

    .line 746
    .local v0, accoundId:J
    const-wide/16 v7, -0x1

    cmp-long v7, v0, v7

    if-nez v7, :cond_1

    .line 762
    :cond_0
    :goto_0
    return v6

    .line 749
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 750
    .local v3, context:Landroid/content/Context;
    invoke-static {v3, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    .line 752
    .local v2, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v2, :cond_0

    .line 755
    invoke-virtual {v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v4

    .line 758
    .local v4, info:Lcom/android/email/mail/Store$StoreInfo;
    if-eqz v4, :cond_0

    .line 761
    iget-object v5, v4, Lcom/android/email/mail/Store$StoreInfo;->mScheme:Ljava/lang/String;

    .line 762
    .local v5, scheme:Ljava/lang/String;
    const-string v6, "eas"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/email/activity/MessageListFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->count:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/email/activity/MessageListFragment;[JZJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 144
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/activity/MessageListFragment;->onSetMessageRead([JZJ)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/email/activity/MessageListFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput p1, p0, Lcom/android/email/activity/MessageListFragment;->count:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/email/activity/MessageListFragment;[JZJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 144
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/activity/MessageListFragment;->onSetMessageFavorite([JZJ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/email/activity/MessageListFragment;[JIJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 144
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/activity/MessageListFragment;->onSetMessageFollowUpFlag([JIJ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/email/activity/MessageListFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    return-wide v0
.end method

.method static synthetic access$1402(Lcom/android/email/activity/MessageListFragment;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-wide p1, p0, Lcom/android/email/activity/MessageListFragment;->mLastLoadedMailboxId:J

    return-wide p1
.end method

.method static synthetic access$1500(Lcom/android/email/activity/MessageListFragment;)Lcom/android/emailcommon/provider/EmailContent$Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/email/activity/MessageListFragment;Lcom/android/emailcommon/provider/EmailContent$Account;)Lcom/android/emailcommon/provider/EmailContent$Account;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/android/email/activity/MessageListFragment;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/android/email/activity/MessageListFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/android/email/activity/MessageListFragment;->mIsRefreshable:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/email/activity/MessageListFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshListCount:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/email/activity/MessageListFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput p1, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshListCount:I

    return p1
.end method

.method static synthetic access$1808(Lcom/android/email/activity/MessageListFragment;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshListCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshListCount:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/email/activity/MessageListFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mTotalCountFromMailbox:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/MessageListFragment;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/email/activity/MessageListFragment;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mPreviousCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/email/activity/MessageListFragment;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment;->mPreviousCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/email/activity/MessageListFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView2:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewText2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewLine2:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewLine3:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/email/activity/MessageListFragment;)Lcom/android/emailcommon/utility/Utility$ListStateSaver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mSavedListState:Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/email/activity/MessageListFragment;Lcom/android/emailcommon/utility/Utility$ListStateSaver;)Lcom/android/emailcommon/utility/Utility$ListStateSaver;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment;->mSavedListState:Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/android/email/activity/MessageListFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput p1, p0, Lcom/android/email/activity/MessageListFragment;->mUnReadCount:I

    return p1
.end method

.method static synthetic access$2702(Lcom/android/email/activity/MessageListFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput p1, p0, Lcom/android/email/activity/MessageListFragment;->mTotalCount:I

    return p1
.end method

.method static synthetic access$2800(Lcom/android/email/activity/MessageListFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMessageListFragment:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/email/activity/MessageListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->autoRefreshStaleMailbox()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessageListFragment$Callback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/email/activity/MessageListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->addFooterView()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/email/activity/MessageListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->showSendCommandIfNecessary()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/email/activity/MessageListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->showNoMessageTextIfNecessary()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/email/activity/MessageListFragment;ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 144
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageListFragment;->highlightSelectedMessage(ZI)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/email/activity/MessageListFragment;)Landroid/view/ActionMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mSelectionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/email/activity/MessageListFragment;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment;->mSelectionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/android/email/activity/MessageListFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/email/activity/MessageListFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->IsEAS()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/android/email/activity/MessageListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->onConversationIgnore()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/email/activity/MessageListFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mMultiTouchEnabled:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/email/activity/MessageListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->onConversationMoveAlways()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/email/activity/MessageListFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/android/email/activity/MessageListFragment;->mMultiTouchEnabled:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/email/activity/MessageListFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->hasMailboxToMove:Z

    return v0
.end method

.method static synthetic access$4200(Lcom/android/email/activity/MessageListFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Lcom/android/email/activity/MessageListFragment;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageListFragment;->onForward(J)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/email/activity/MessageListFragment;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageListFragment;->updateProgressIcon(J)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/email/activity/MessageListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->updateListFooter()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/email/activity/MessageListFragment;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListFragment;->checkTimeOut(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/email/activity/MessageListFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mFirstPosition:I

    return v0
.end method

.method static synthetic access$4902(Lcom/android/email/activity/MessageListFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput p1, p0, Lcom/android/email/activity/MessageListFragment;->mFirstPosition:I

    return p1
.end method

.method static synthetic access$5000(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/email/activity/MessageListFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/android/email/activity/MessageListFragment;->mNeedToFlickDownRefresh:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/android/email/activity/MessageListFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mCurrentState:I

    return v0
.end method

.method static synthetic access$5102(Lcom/android/email/activity/MessageListFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput p1, p0, Lcom/android/email/activity/MessageListFragment;->mCurrentState:I

    return p1
.end method

.method static synthetic access$5200(Lcom/android/email/activity/MessageListFragment;)Landroid/view/ScaleGestureDetector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessageListFragment$ListViewPos;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListViewPos:Lcom/android/email/activity/MessageListFragment$ListViewPos;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/email/activity/MessageListFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mUseFlickDown:Z

    return v0
.end method

.method static synthetic access$5500(Lcom/android/email/activity/MessageListFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->bIsRefreshing:Z

    return v0
.end method

.method static synthetic access$5600(Lcom/android/email/activity/MessageListFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->bIsDown:Z

    return v0
.end method

.method static synthetic access$5700(Lcom/android/email/activity/MessageListFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mUseFlickUp:Z

    return v0
.end method

.method static synthetic access$5800(Lcom/android/email/activity/MessageListFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mLastPos:I

    return v0
.end method

.method static synthetic access$5802(Lcom/android/email/activity/MessageListFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput p1, p0, Lcom/android/email/activity/MessageListFragment;->mLastPos:I

    return p1
.end method

.method static synthetic access$5900(Lcom/android/email/activity/MessageListFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->bIsScrollingDown:Z

    return v0
.end method

.method static synthetic access$5902(Lcom/android/email/activity/MessageListFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/android/email/activity/MessageListFragment;->bIsScrollingDown:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/email/activity/MessageListFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mExpandFactor:I

    return v0
.end method

.method static synthetic access$6000(Lcom/android/email/activity/MessageListFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->bIsLoading:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/email/activity/MessageListFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput p1, p0, Lcom/android/email/activity/MessageListFragment;->mExpandFactor:I

    return p1
.end method

.method static synthetic access$608(Lcom/android/email/activity/MessageListFragment;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mExpandFactor:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageListFragment;->mExpandFactor:I

    return v0
.end method

.method static synthetic access$6100(Lcom/android/email/activity/MessageListFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->bEnableFlickUp:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/email/activity/MessageListFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mShrinkFactor:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/email/activity/MessageListFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput p1, p0, Lcom/android/email/activity/MessageListFragment;->mShrinkFactor:I

    return p1
.end method

.method static synthetic access$708(Lcom/android/email/activity/MessageListFragment;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mShrinkFactor:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageListFragment;->mShrinkFactor:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    return-object v0
.end method

.method private addFooterView()V
    .locals 2

    .prologue
    .line 3204
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 3205
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 3206
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 3208
    :cond_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->determineFooterMode()V

    .line 3209
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    if-eqz v1, :cond_1

    .line 3211
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 3212
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3214
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    const v1, 0x7f10004f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterProgress:Landroid/view/View;

    .line 3215
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    const v1, 0x7f1001ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterText:Landroid/widget/TextView;

    .line 3216
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    const v1, 0x7f1001bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterCountText:Landroid/widget/TextView;

    .line 3217
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mBgColor:I

    sget v1, Lcom/android/email/activity/MessageListFragment;->BACKGROUND_GREY:I

    if-ne v0, v1, :cond_2

    .line 3218
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterText:Landroid/widget/TextView;

    sget v1, Lcom/android/email/activity/MessageListFragment;->sMessageListFooterTextColorDarkTheme:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3219
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterCountText:Landroid/widget/TextView;

    sget v1, Lcom/android/email/activity/MessageListFragment;->sMessageListFooterTextColorDarkTheme:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3224
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterCountText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterCountText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/email/activity/MessageListFragment;->mFooterTextPadding:I

    .line 3227
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->updateListFooter()V

    .line 3229
    :cond_1
    return-void

    .line 3221
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterText:Landroid/widget/TextView;

    sget v1, Lcom/android/email/activity/MessageListFragment;->sMessageListFooterTextColorWhiteTheme:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3222
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterCountText:Landroid/widget/TextView;

    sget v1, Lcom/android/email/activity/MessageListFragment;->sMessageListFooterTextColorWhiteTheme:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private addHeaderView()V
    .locals 2

    .prologue
    .line 4606
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderTop:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 4607
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 4608
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottom:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 4609
    return-void
.end method

.method private autoRefreshStaleMailbox()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 3052
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 3053
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getAccountId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 3054
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->IsEAS()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    iget v2, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 3095
    :cond_0
    :goto_0
    return-void

    .line 3060
    :cond_1
    iget-boolean v2, p0, Lcom/android/email/activity/MessageListFragment;->mDoAutoRefresh:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/email/activity/MessageListFragment;->mIsRefreshable:Z

    if-eqz v2, :cond_0

    .line 3066
    iput-boolean v5, p0, Lcom/android/email/activity/MessageListFragment;->mDoAutoRefresh:Z

    .line 3067
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-wide v3, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    invoke-virtual {v2, v3, v4}, Lcom/android/email/RefreshManager;->isMailboxStale(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3073
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->IsEAS()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isNetworkConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3089
    :cond_2
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->checkITPolicy_AllowPOPIMAP()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3094
    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageListFragment;->onRefresh(Z)V

    goto :goto_0
.end method

.method private checkITPolicy_AllowPOPIMAP()Z
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/SecurityPolicy;->IsAllowPOPIMAPEmailSetted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 736
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->IsEAS()Z

    move-result v0

    if-nez v0, :cond_0

    .line 737
    const/4 v0, 0x0

    .line 740
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkTimeOut(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 4554
    sget v0, Lcom/android/email/activity/MessageListFragment;->countLoadComment:I

    .line 4555
    const-string v1, "MessageListFragment"

    const-string v2, "checkTimeOut()"

    const-string v3, "Start Timer"

    invoke-static {v1, v2, v3}, Lcom/android/email/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4557
    const-wide/16 v1, 0x2710

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4561
    :goto_0
    sget-boolean v1, Lcom/android/email/activity/MessageListFragment;->isCheckNetworkState:Z

    if-ne v1, v4, :cond_2

    .line 4562
    sget v1, Lcom/android/email/activity/MessageListFragment;->countLoadComment:I

    if-ne v0, v1, :cond_0

    .line 4564
    sget-boolean v0, Lcom/android/email/activity/MessageListFragment;->isLoadComment:Z

    if-nez v0, :cond_1

    .line 4565
    const-string v0, "MessageListFragment"

    const-string v1, "checkTimeOut()"

    const-string v2, "load fail"

    invoke-static {v0, v1, v2}, Lcom/android/email/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4566
    sput-boolean v4, Lcom/android/email/activity/MessageListFragment;->isLoadComment:Z

    .line 4577
    :cond_0
    :goto_1
    return-void

    .line 4558
    :catch_0
    move-exception v1

    .line 4559
    const-string v1, "MessageListFragment"

    const-string v2, "checkTimeOut()"

    const-string v3, "InterruptedException"

    invoke-static {v1, v2, v3}, Lcom/android/email/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4568
    :cond_1
    const-string v0, "MessageListFragment"

    const-string v1, "checkTimeOut()"

    const-string v2, "load success"

    invoke-static {v0, v1, v2}, Lcom/android/email/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4569
    sput-boolean v4, Lcom/android/email/activity/MessageListFragment;->isLoadComment:Z

    goto :goto_1

    .line 4573
    :cond_2
    const-string v0, "MessageListFragment"

    const-string v1, "checkTimeOut()"

    const-string v2, "Network is not connect."

    invoke-static {v0, v1, v2}, Lcom/android/email/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4574
    sput-boolean v4, Lcom/android/email/activity/MessageListFragment;->isCheckNetworkState:Z

    goto :goto_1
.end method

.method private controlFooterVisibility(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    const/4 v2, 0x0

    .line 4451
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 4452
    if-eqz p1, :cond_1

    .line 4454
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4455
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sget v1, Lcom/android/email/activity/MessageListFragment;->sListFooterViewHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4461
    :cond_0
    :goto_0
    return-void

    .line 4457
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4458
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method private determineFooterMode()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 3166
    iput v3, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    .line 3167
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-ne v0, v2, :cond_1

    .line 3201
    :cond_0
    :goto_0
    return-void

    .line 3176
    :cond_1
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSortType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getAccountId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/email/adapter/ProtocolAdapter;->getAccountTransport(J)I

    move-result v0

    if-eq v0, v2, :cond_2

    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->IsEAS()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3178
    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    goto :goto_0

    .line 3181
    :cond_3
    sget-boolean v0, Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/android/email/activity/MessageListFragment;->mIsSevenAccount:Z

    if-nez v0, :cond_6

    .line 3183
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->isOutbox()Z

    move-result v0

    if-ne v0, v4, :cond_5

    .line 3184
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 3185
    iput v2, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    goto :goto_0

    .line 3187
    :cond_4
    iput v3, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    goto :goto_0

    .line 3189
    :cond_5
    iput v4, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    goto :goto_0

    .line 3193
    :cond_6
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->isOutbox()Z

    move-result v0

    if-ne v0, v4, :cond_0

    .line 3194
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_7

    .line 3195
    iput v2, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    goto :goto_0

    .line 3197
    :cond_7
    iput v3, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    goto :goto_0
.end method

.method private disableHeader()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 4781
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottom:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottomShadow:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 4783
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ListBouncingHeaderLayout;->disableHeader()V

    .line 4784
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ListBouncingHeaderLayout;->disableShadow()V

    .line 4785
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->isMesssageListLeftside()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSortType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 4787
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottom:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4788
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottom:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4793
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottomShadow:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4794
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottomShadow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4796
    :cond_1
    return-void

    .line 4790
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottom:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4791
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottom:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/16 v1, 0xe

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method private doFooterClick()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3305
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3306
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0803cf

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3340
    :goto_0
    :pswitch_0
    return-void

    .line 3311
    :cond_0
    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3315
    :pswitch_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->onLoadMoreMessages()V

    goto :goto_0

    .line 3320
    :pswitch_2
    sget-boolean v0, Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z

    if-nez v0, :cond_1

    .line 3321
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->onSearchOnServer()V

    goto :goto_0

    .line 3323
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/high16 v2, 0x4028

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    .line 3326
    const-string v0, "k1001.kim"

    const-string v1, "this is 03 account"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3327
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f080541

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 3330
    :cond_2
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->onSearchOnServer()V

    goto :goto_0

    .line 3335
    :pswitch_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageListFragment;->setSendingProgressFlag(Z)V

    .line 3336
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->onSendPendingMessages()V

    goto :goto_0

    .line 3311
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private enableHeader()V
    .locals 4

    .prologue
    const/16 v3, 0xe

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 4837
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottomShadow:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottom:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 4839
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->setLastUpdateTime()V

    .line 4840
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ListBouncingHeaderLayout;->enableHeader()V

    .line 4841
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottom:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4842
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottom:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4843
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->isMesssageListLeftside()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4844
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottomShadow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4845
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottomShadow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4846
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ListBouncingHeaderLayout;->enableShadow()V

    .line 4853
    :cond_0
    :goto_0
    return-void

    .line 4848
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottomShadow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4849
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottomShadow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4850
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ListBouncingHeaderLayout;->disableShadow()V

    goto :goto_0
.end method

.method private finishSelectionMode()V
    .locals 2

    .prologue
    .line 3700
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->isInSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3701
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mLastSelectionModeCallback:Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mClosedByUser:Z

    .line 3702
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mSelectionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 3704
    :cond_0
    return-void
.end method

.method public static getStartTimeForCreate()Landroid/text/format/Time;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1262
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 1263
    .local v3, time:Landroid/text/format/Time;
    invoke-virtual {v3}, Landroid/text/format/Time;->setToNow()V

    .line 1264
    invoke-virtual {v3, v11}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 1266
    .local v0, millis:J
    iget-wide v6, v3, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v6, v7}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    .line 1267
    .local v2, selectedDay:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, v3, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v6, v7, v8, v9}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v5

    .line 1268
    .local v5, todayJulian:I
    if-ne v2, v5, :cond_0

    .line 1269
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 1270
    .local v4, today:Landroid/text/format/Time;
    invoke-virtual {v4}, Landroid/text/format/Time;->setToNow()V

    .line 1271
    iget v6, v4, Landroid/text/format/Time;->hour:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v3, Landroid/text/format/Time;->hour:I

    .line 1275
    .end local v4           #today:Landroid/text/format/Time;
    :goto_0
    iput v10, v3, Landroid/text/format/Time;->minute:I

    .line 1276
    iput v10, v3, Landroid/text/format/Time;->second:I

    .line 1277
    iput-boolean v10, v3, Landroid/text/format/Time;->allDay:Z

    .line 1278
    invoke-virtual {v3, v11}, Landroid/text/format/Time;->normalize(Z)J

    .line 1279
    return-object v3

    .line 1273
    :cond_0
    const/16 v6, 0x8

    iput v6, v3, Landroid/text/format/Time;->hour:I

    goto :goto_0
.end method

.method private highlightSelectedMessage(ZI)V
    .locals 6
    .parameter "ensureSelectionVisible"
    .parameter "mode"

    .prologue
    .line 4330
    iget-wide v2, p0, Lcom/android/email/activity/MessageListFragment;->mSelectedMessageId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 4332
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->clearChoices()V

    .line 4357
    :goto_0
    return-void

    .line 4336
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    iget-wide v3, p0, Lcom/android/email/activity/MessageListFragment;->mSelectedMessageId:J

    invoke-virtual {v2, v3, v4}, Lcom/android/email/activity/MessagesAdapter;->getRealPositionForCurrentId(J)I

    move-result v1

    .line 4337
    .local v1, position:I
    if-eqz p1, :cond_4

    .line 4338
    sget v2, Lcom/android/email/activity/MessageListXL;->SELECT_MESSAGE_NORMAL:I

    if-ne p2, v2, :cond_1

    .line 4339
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    add-int/lit8 v3, v1, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 4340
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    add-int/lit8 v4, v1, 0x3

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/utility/Utility;->listViewSmoothScrollToPosition(Landroid/app/Activity;Landroid/widget/ListView;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4356
    .end local v1           #position:I
    :goto_1
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_0

    .line 4341
    .restart local v1       #position:I
    :cond_1
    :try_start_1
    sget v2, Lcom/android/email/activity/MessageListXL;->SELECT_MESSAGE_NEWER:I

    if-ne p2, v2, :cond_2

    .line 4342
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 4343
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    add-int/lit8 v4, v1, 0x2

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/utility/Utility;->listViewSmoothScrollToPosition(Landroid/app/Activity;Landroid/widget/ListView;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 4353
    .end local v1           #position:I
    :catch_0
    move-exception v0

    .line 4354
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 4344
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #position:I
    :cond_2
    :try_start_2
    sget v2, Lcom/android/email/activity/MessageListXL;->SELECT_MESSAGE_OLDER:I

    if-ne p2, v2, :cond_3

    .line 4345
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    add-int/lit8 v3, v1, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 4346
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    add-int/lit8 v4, v1, 0x4

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/utility/Utility;->listViewSmoothScrollToPosition(Landroid/app/Activity;Landroid/widget/ListView;I)V

    goto :goto_1

    .line 4348
    :cond_3
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_1

    .line 4351
    :cond_4
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setSelection(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private initScaleGestureDetector()V
    .locals 3

    .prologue
    .line 1650
    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/android/email/activity/MessageListFragment$3;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageListFragment$3;-><init>(Lcom/android/email/activity/MessageListFragment;)V

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 1688
    return-void
.end method

.method private isProgressActive(J)Z
    .locals 3
    .parameter "mailboxId"

    .prologue
    const/4 v0, 0x0

    .line 4274
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    if-nez v1, :cond_1

    .line 4276
    :cond_0
    :goto_0
    return v0

    :cond_1
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    invoke-virtual {v1, p1, p2}, Lcom/android/email/RefreshManager;->isMessageListRefreshing(J)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private measureView(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 4612
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 4614
    if-nez v0, :cond_0

    .line 4615
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 4619
    :cond_0
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v3, v3, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 4620
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4623
    if-lez v0, :cond_1

    .line 4624
    const/high16 v2, 0x4000

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 4628
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 4629
    return-void

    .line 4626
    :cond_1
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0
.end method

.method private noImagelayout()V
    .locals 7

    .prologue
    const v6, 0x7f0c013e

    const v5, 0x7f0c00f2

    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 1454
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mNoMessagesIcon:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1457
    iget v1, p0, Lcom/android/email/activity/MessageListFragment;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1458
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSplitMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1459
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mNoMessagesPanel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00f3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1461
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1463
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListShadow:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1481
    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mNoMessagesIcon:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1482
    return-void

    .line 1465
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mNoMessagesPanel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1467
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1469
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListShadow:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1472
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mNoMessagesPanel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1474
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c013f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1478
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListShadow:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private onConversationIgnore()V
    .locals 4

    .prologue
    .line 2467
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getMailboxId()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    .line 2468
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v1}, Lcom/android/email/activity/MessagesAdapter;->getSelectedTitleSet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/EmailUtility;->toPrimitiveStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    .line 2469
    .local v0, convIds:[Ljava/lang/String;
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-wide v2, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    invoke-direct {p0, v1, v2, v3}, Lcom/android/email/activity/MessageListFragment;->onConversationIgnore(Ljava/util/Set;J)V

    .line 2470
    return-void
.end method

.method private onConversationIgnore(Ljava/util/Set;J)V
    .locals 9
    .parameter
    .parameter "mailboxId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 2760
    .local p1, selectedTitleSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2761
    .local v6, cloneSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, p3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v8

    .line 2762
    .local v8, mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2763
    .local v3, convId:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mController:Lcom/android/email/Controller;

    iget-wide v4, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    move-wide v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/Controller;->moveConversationIgnore(JLjava/lang/String;J)V

    goto :goto_0

    .line 2767
    .end local v3           #convId:Ljava/lang/String;
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 2768
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->onDeselectAll()V

    .line 2770
    return-void
.end method

.method private onConversationMoveAlways()V
    .locals 4

    .prologue
    .line 2477
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v2}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->toPrimitiveLongArray(Ljava/util/Collection;)[J

    move-result-object v1

    .line 2478
    .local v1, messageIds:[J
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v2}, Lcom/android/email/activity/MessagesAdapter;->getSelectedTitleSet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lcom/android/email/EmailUtility;->toPrimitiveStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    .line 2479
    .local v0, convIds:[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    const/4 v3, 0x2

    invoke-interface {v2, v1, v0, v3}, Lcom/android/email/activity/MessageListFragment$Callback;->onConversationMoveAlways([J[Ljava/lang/String;I)V

    .line 2481
    return-void
.end method

.method private onConversationMoveAlways(Ljava/util/Set;J)V
    .locals 11
    .parameter
    .parameter "toMailboxId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 2786
    .local p1, selectedTitleSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2787
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

    .line 2788
    .local v3, convId:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mMailboxKey:J

    iget-object v4, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    const/4 v8, 0x0

    move-wide v6, p2

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/Controller;->moveConversationAlways(JLjava/lang/String;JJI)V

    goto :goto_0

    .line 2791
    .end local v3           #convId:Ljava/lang/String;
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 2793
    return-void
.end method

.method private onDeleteOneItem(J)V
    .locals 4
    .parameter

    .prologue
    .line 2694
    const/4 v0, 0x1

    new-array v0, v0, [J

    .line 2695
    const/4 v1, 0x0

    aput-wide p1, v0, v1

    .line 2697
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2699
    const v2, 0x7f080058

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2700
    const v2, 0x7f080536

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2701
    const v2, 0x7f080042

    new-instance v3, Lcom/android/email/activity/MessageListFragment$9;

    invoke-direct {v3, p0, v0}, Lcom/android/email/activity/MessageListFragment$9;-><init>(Lcom/android/email/activity/MessageListFragment;[J)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2708
    const v0, 0x7f080043

    new-instance v2, Lcom/android/email/activity/MessageListFragment$10;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageListFragment$10;-><init>(Lcom/android/email/activity/MessageListFragment;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2716
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2717
    return-void
.end method

.method private onForward(J)V
    .locals 3
    .parameter

    .prologue
    .line 2740
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/irm/IRMEnforcer;->getInstance(Landroid/content/Context;)Lcom/android/email/irm/IRMEnforcer;

    move-result-object v0

    .line 2741
    invoke-virtual {v0, p1, p2}, Lcom/android/email/irm/IRMEnforcer;->isForwardAllowed(J)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2742
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f080596

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2747
    :goto_0
    return-void

    .line 2746
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/email/activity/MessageListFragment$Callback;->onForward(J)V

    goto :goto_0
.end method

.method private onLoadMoreMessages()V
    .locals 5

    .prologue
    .line 2349
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2350
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0803cf

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2359
    :cond_0
    :goto_0
    return-void

    .line 2355
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getAccountId()J

    move-result-wide v0

    .line 2356
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 2357
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-wide v3, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/email/RefreshManager;->loadMoreMessages(JJ)Z

    goto :goto_0
.end method

.method private onMessageMarkAsReadUnread(ZJ)V
    .locals 3
    .parameter "setAsRead"
    .parameter "messageId"

    .prologue
    .line 2750
    const/4 v1, 0x1

    new-array v0, v1, [J

    .line 2751
    .local v0, messageIds:[J
    const/4 v1, 0x0

    aput-wide p2, v0, v1

    .line 2753
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getAccountId()J

    move-result-wide v1

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/android/email/activity/MessageListFragment;->onSetMessageRead([JZJ)V

    .line 2754
    return-void
.end method

.method private onMessageOpen(JJ)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 2216
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMessageOpenTask:Lcom/android/email/activity/MessageListFragment$MessageOpenTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 2217
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMessageOpenTask:Lcom/android/email/activity/MessageListFragment$MessageOpenTask;

    .line 2218
    new-instance v0, Lcom/android/email/activity/MessageListFragment$MessageOpenTask;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MessageListFragment$MessageOpenTask;-><init>(Lcom/android/email/activity/MessageListFragment;JJ)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMessageOpenTask:Lcom/android/email/activity/MessageListFragment$MessageOpenTask;

    .line 2220
    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMessageOpenTask:Lcom/android/email/activity/MessageListFragment$MessageOpenTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListFragment$MessageOpenTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2224
    :goto_0
    return-void

    .line 2221
    :catch_0
    move-exception v0

    .line 2222
    const-string v1, "MessageListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMessageOpenTask.execute(); failed once : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onMultiDelete(Ljava/util/Set;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2642
    invoke-static {p1}, Lcom/android/emailcommon/utility/Utility;->toPrimitiveLongArray(Ljava/util/Collection;)[J

    move-result-object v0

    .line 2666
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2668
    const v2, 0x7f080058

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2669
    const v2, 0x7f080536

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2670
    const v2, 0x7f080042

    new-instance v3, Lcom/android/email/activity/MessageListFragment$7;

    invoke-direct {v3, p0, v0}, Lcom/android/email/activity/MessageListFragment$7;-><init>(Lcom/android/email/activity/MessageListFragment;[J)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2678
    const v0, 0x7f080043

    new-instance v2, Lcom/android/email/activity/MessageListFragment$8;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageListFragment$8;-><init>(Lcom/android/email/activity/MessageListFragment;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2685
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2690
    return-void
.end method

.method private onMultiToggleFavorite(Ljava/util/Set;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2577
    .local p1, selectedSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v0, Lcom/android/email/activity/MessageListFragment$5;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageListFragment$5;-><init>(Lcom/android/email/activity/MessageListFragment;)V

    invoke-direct {p0, p1, v0}, Lcom/android/email/activity/MessageListFragment;->toggleMultiple(Ljava/util/Set;Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;)I

    .line 2600
    return-void
.end method

.method private onMultiToggleFollowUpFlag(Ljava/util/Set;I)V
    .locals 1
    .parameter
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 2614
    .local p1, selectedSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v0, Lcom/android/email/activity/MessageListFragment$6;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageListFragment$6;-><init>(Lcom/android/email/activity/MessageListFragment;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/android/email/activity/MessageListFragment;->toggleIntMultiple(Ljava/util/Set;Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;I)I

    .line 2638
    return-void
.end method

.method private onMultiToggleRead(Ljava/util/Set;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2546
    .local p1, selectedSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v0, Lcom/android/email/activity/MessageListFragment$4;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageListFragment$4;-><init>(Lcom/android/email/activity/MessageListFragment;)V

    invoke-direct {p0, p1, v0}, Lcom/android/email/activity/MessageListFragment;->toggleMultiple(Ljava/util/Set;Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;)I

    .line 2569
    return-void
.end method

.method private onReply(J)V
    .locals 3
    .parameter

    .prologue
    .line 2720
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/irm/IRMEnforcer;->getInstance(Landroid/content/Context;)Lcom/android/email/irm/IRMEnforcer;

    move-result-object v0

    .line 2721
    invoke-virtual {v0, p1, p2}, Lcom/android/email/irm/IRMEnforcer;->isForwardAllowed(J)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2722
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f080596

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2727
    :goto_0
    return-void

    .line 2726
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/email/activity/MessageListFragment$Callback;->onReply(J)V

    goto :goto_0
.end method

.method private onReplyAll(J)V
    .locals 3
    .parameter

    .prologue
    .line 2730
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/irm/IRMEnforcer;->getInstance(Landroid/content/Context;)Lcom/android/email/irm/IRMEnforcer;

    move-result-object v0

    .line 2731
    invoke-virtual {v0, p1, p2}, Lcom/android/email/irm/IRMEnforcer;->isForwardAllowed(J)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2732
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f080596

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2737
    :goto_0
    return-void

    .line 2736
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/email/activity/MessageListFragment$Callback;->onReplyAll(J)V

    goto :goto_0
.end method

.method private onSearchOnServer()V
    .locals 6

    .prologue
    .line 2457
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getAccountId()J

    move-result-wide v2

    .line 2458
    .local v2, accountId:J
    const-wide/16 v0, -0x1

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    .line 2460
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    iget-wide v4, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/activity/MessageListFragment;->SearchOnServer(Landroid/app/Activity;JJ)V

    .line 2462
    :cond_0
    return-void
.end method

.method private onSetMessageFavorite([JZJ)V
    .locals 1
    .parameter "messageIds"
    .parameter "newFavorite"
    .parameter "accountId"

    .prologue
    .line 2529
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mController:Lcom/android/email/Controller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/email/Controller;->setMessageFavorite([JZJ)Landroid/os/AsyncTask;

    .line 2530
    return-void
.end method

.method private onSetMessageFollowUpFlag([JIJ)V
    .locals 1
    .parameter "messageIds"
    .parameter "newFollowUpFlag"
    .parameter "accountId"

    .prologue
    .line 2534
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mController:Lcom/android/email/Controller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/email/Controller;->setMessageFollowUpFlag([JIJ)Landroid/os/AsyncTask;

    .line 2535
    return-void
.end method

.method private onSetMessageRead([JZJ)V
    .locals 1
    .parameter "messageIds"
    .parameter "newRead"
    .parameter "accountId"

    .prologue
    .line 2525
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mController:Lcom/android/email/Controller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/email/Controller;->setMessageRead([JZJ)Landroid/os/AsyncTask;

    .line 2526
    return-void
.end method

.method static resetNewMessageCount(Landroid/content/Context;JJ)V
    .locals 4
    .parameter "context"
    .parameter "mailboxId"
    .parameter "accountId"

    .prologue
    const-wide/16 v2, -0x1

    .line 3658
    const-wide/16 v0, -0x2

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 3659
    invoke-static {p0, v2, v3}, Lcom/android/email/service/MailService;->resetNewMessageCount(Landroid/content/Context;J)V

    .line 3663
    :cond_0
    :goto_0
    return-void

    .line 3660
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    cmp-long v0, p3, v2

    if-eqz v0, :cond_0

    .line 3661
    invoke-static {p0, p3, p4}, Lcom/android/email/service/MailService;->resetNewMessageCount(Landroid/content/Context;J)V

    goto :goto_0
.end method

.method public static setFavoriteFromWidget(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "setFavorite"

    .prologue
    .line 905
    sput-object p0, Lcom/android/email/activity/MessageListFragment;->isFavorite:Ljava/lang/Boolean;

    .line 907
    return-void
.end method

.method private setLastUpdateTime()V
    .locals 14

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v13, 0x0

    .line 4799
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v8

    .line 4800
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v9

    .line 4801
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v10

    .line 4806
    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "syncTime"

    aput-object v0, v2, v13

    .line 4809
    const-string v0, "_id=?"

    .line 4811
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id=?"

    new-array v4, v4, [Ljava/lang/String;

    iget-wide v11, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v13

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 4816
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4817
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4818
    if-eqz v0, :cond_1

    .line 4819
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 4823
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 4825
    cmp-long v2, v0, v6

    if-nez v2, :cond_0

    .line 4826
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

    invoke-virtual {v0, v5}, Lcom/android/email/activity/ListBouncingHeaderLayout;->setLastUpdate(Ljava/lang/String;)V

    .line 4833
    :goto_1
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    invoke-interface {v0, v8, v9, v10}, Lcom/android/email/activity/MessageListFragment$Callback;->setTimeFormat(Ljava/text/DateFormat;Ljava/text/DateFormat;Ljava/text/DateFormat;)V

    .line 4834
    return-void

    .line 4823
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    .line 4828
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 4829
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4831
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ListBouncingHeaderLayout;->setLastUpdate(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-wide v0, v6

    goto :goto_0
.end method

.method public static setLoadReserved()V
    .locals 1

    .prologue
    .line 891
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/email/activity/MessageListFragment;->mLoadReserved:Z

    .line 892
    return-void
.end method

.method private showNoMessageText(Z)V
    .locals 4
    .parameter "visible"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 3354
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mNoMessagesPanel:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3355
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mNoMessagesIcon:Landroid/view/View;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3356
    return-void

    :cond_0
    move v0, v2

    .line 3354
    goto :goto_0

    :cond_1
    move v1, v2

    .line 3355
    goto :goto_1
.end method

.method private showNoMessageTextIfNecessary()V
    .locals 2

    .prologue
    .line 3359
    iget v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v1}, Lcom/android/email/activity/MessagesAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 3364
    .local v0, noItem:Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageListFragment;->showNoMessageText(Z)V

    .line 3365
    return-void

    .line 3359
    .end local v0           #noItem:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showSendCommand(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 3347
    return-void
.end method

.method private showSendCommandIfNecessary()V
    .locals 1

    .prologue
    .line 3350
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->isOutbox()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageListFragment;->showSendCommand(Z)V

    .line 3351
    return-void

    .line 3350
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startLoading()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 3372
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListFragment;->mOpenRequested:Z

    .line 3373
    sput-boolean v2, Lcom/android/email/activity/MessageListFragment;->mLoadReserved:Z

    .line 3376
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageListFragment;->showNoMessageText(Z)V

    .line 3377
    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageListFragment;->setListShown(Z)V

    .line 3378
    invoke-direct {p0, v6}, Lcom/android/email/activity/MessageListFragment;->showSendCommand(Z)V

    .line 3381
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    .line 3384
    .local v0, lm:Landroid/app/LoaderManager;
    const/4 v1, 0x0

    .line 3385
    .local v1, mailboxChanging:Z
    iget-wide v2, p0, Lcom/android/email/activity/MessageListFragment;->mLastLoadedMailboxId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/android/email/activity/MessageListFragment;->mLastLoadedMailboxId:J

    iget-wide v4, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 3386
    const/4 v1, 0x1

    .line 3387
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->stopLoaders()V

    .line 3389
    :cond_0
    const/4 v2, 0x0

    new-instance v3, Lcom/android/email/activity/MessageListFragment$MailboxAccountLoaderCallback;

    invoke-direct {v3, p0, v1}, Lcom/android/email/activity/MessageListFragment$MailboxAccountLoaderCallback;-><init>(Lcom/android/email/activity/MessageListFragment;Z)V

    invoke-virtual {v0, v6, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 3391
    return-void
.end method

.method private stopLoaders()V
    .locals 2

    .prologue
    .line 3394
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    .line 3395
    .local v0, lm:Landroid/app/LoaderManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 3396
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 3397
    return-void
.end method

.method private testIntMultiple(Ljava/util/Set;II)Z
    .locals 5
    .parameter
    .parameter "column_id"
    .parameter "defaultflag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;II)Z"
        }
    .end annotation

    .prologue
    .local p1, selectedSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v3, 0x0

    .line 2974
    iget-object v4, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v4}, Lcom/android/email/activity/MessagesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 2975
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2987
    :cond_0
    :goto_0
    return v3

    .line 2978
    :cond_1
    const/4 v4, -0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2979
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2980
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v1, v4

    .line 2981
    .local v1, id:J
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2982
    invoke-interface {v0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eq v4, p3, :cond_2

    goto :goto_0

    .line 2987
    .end local v1           #id:J
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private testMultiple(Ljava/util/Set;ILjava/util/Set;)Z
    .locals 5
    .parameter
    .parameter "column_id"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, selectedSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .local p3, selectedTitleSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 2949
    iget-object v4, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v4}, Lcom/android/email/activity/MessagesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 2950
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2962
    :cond_0
    :goto_0
    return v3

    .line 2953
    :cond_1
    const/4 v4, -0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2954
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2955
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v1, v4

    .line 2956
    .local v1, id:J
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2957
    invoke-interface {v0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 2962
    .end local v1           #id:J
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private testMultiple(Ljava/util/Set;IZ)Z
    .locals 7
    .parameter
    .parameter "column_id"
    .parameter "defaultflag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;IZ)Z"
        }
    .end annotation

    .prologue
    .local p1, selectedSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2924
    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v5}, Lcom/android/email/activity/MessagesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 2925
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move v3, v4

    .line 2937
    :goto_0
    return v3

    .line 2928
    :cond_1
    const/4 v5, -0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2929
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2930
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v1, v5

    .line 2931
    .local v1, id:J
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2932
    invoke-interface {v0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz p3, :cond_3

    move v5, v3

    :goto_1
    if-ne v6, v5, :cond_2

    goto :goto_0

    :cond_3
    move v5, v4

    goto :goto_1

    .end local v1           #id:J
    :cond_4
    move v3, v4

    .line 2937
    goto :goto_0
.end method

.method private toggleIntMultiple(Ljava/util/Set;Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;I)I
    .locals 10
    .parameter
    .parameter "helper"
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;",
            "I)I"
        }
    .end annotation

    .prologue
    .local p1, selectedSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v9, 0x0

    .line 2889
    iget-object v8, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v8}, Lcom/android/email/activity/MessagesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 2890
    .local v1, c:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2912
    :cond_0
    :goto_0
    return v9

    .line 2892
    :cond_1
    const/4 v0, 0x0

    .line 2893
    .local v0, anyWereFound:Z
    move v6, p3

    .line 2895
    .local v6, newValue:I
    const/4 v7, 0x0

    .line 2897
    .local v7, numChanged:I
    const/4 v8, -0x1

    :try_start_0
    invoke-interface {v1, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2898
    :cond_2
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2899
    const/4 v8, 0x0

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    int-to-long v3, v8

    .line 2900
    .local v3, id:J
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2901
    const/4 v0, 0x1

    goto :goto_1

    .line 2904
    .end local v3           #id:J
    :cond_3
    if-eqz v0, :cond_4

    .line 2905
    invoke-static {p1}, Lcom/android/emailcommon/utility/Utility;->toPrimitiveLongArray(Ljava/util/Collection;)[J

    move-result-object v5

    .line 2906
    .local v5, messageIds:[J
    invoke-interface {p2, v5, v1, v6}, Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;->setIntField([JLandroid/database/Cursor;I)Z

    .line 2908
    .end local v5           #messageIds:[J
    :cond_4
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->refreshList()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2909
    :catch_0
    move-exception v2

    .line 2910
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private toggleMultiSelection(IZ)V
    .locals 1
    .parameter "index"
    .parameter "isChecked"

    .prologue
    .line 2199
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/activity/MessagesAdapter;->toggleMultiSelected(IZ)V

    .line 2200
    return-void
.end method

.method private toggleMultiple(Ljava/util/Set;Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;)I
    .locals 11
    .parameter
    .parameter "helper"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;",
            ")I"
        }
    .end annotation

    .prologue
    .local p1, selectedSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v9, 0x0

    .line 2849
    iget-object v10, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v10}, Lcom/android/email/activity/MessagesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 2850
    .local v2, c:Landroid/database/Cursor;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2875
    :cond_0
    :goto_0
    return v9

    .line 2852
    :cond_1
    const/4 v1, 0x0

    .line 2853
    .local v1, anyWereFound:Z
    const/4 v0, 0x1

    .line 2854
    .local v0, allWereSet:Z
    const/4 v8, 0x0

    .line 2856
    .local v8, numChanged:I
    const/4 v10, -0x1

    :try_start_0
    invoke-interface {v2, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2857
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2858
    const/4 v10, 0x0

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    int-to-long v4, v10

    .line 2859
    .local v4, id:J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {p1, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2860
    const/4 v1, 0x1

    .line 2861
    invoke-interface {p2, v4, v5, v2}, Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;->getField(JLandroid/database/Cursor;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 2862
    const/4 v0, 0x0

    .line 2867
    .end local v4           #id:J
    :cond_3
    if-eqz v1, :cond_0

    .line 2868
    if-nez v0, :cond_4

    const/4 v7, 0x1

    .line 2869
    .local v7, newValue:Z
    :goto_1
    invoke-static {p1}, Lcom/android/emailcommon/utility/Utility;->toPrimitiveLongArray(Ljava/util/Collection;)[J

    move-result-object v6

    .line 2870
    .local v6, messageIds:[J
    invoke-interface {p2, v6, v2, v7}, Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;->setField([JLandroid/database/Cursor;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2872
    .end local v6           #messageIds:[J
    .end local v7           #newValue:Z
    :catch_0
    move-exception v3

    .line 2873
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v3           #e:Ljava/lang/Exception;
    :cond_4
    move v7, v9

    .line 2868
    goto :goto_1
.end method

.method private toggleSelection(Lcom/android/email/activity/MessageListItem;I)V
    .locals 1
    .parameter "itemView"
    .parameter "parentIndex"

    .prologue
    .line 2203
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/activity/MessagesAdapter;->toggleSelected(Lcom/android/email/activity/MessageListItem;I)V

    .line 2204
    return-void
.end method

.method private updateListFooter()V
    .locals 8

    .prologue
    const v3, 0x7f0802fa

    const/4 v4, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 3236
    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    if-eqz v0, :cond_1

    .line 3237
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 3240
    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    packed-switch v0, :pswitch_data_0

    .line 3271
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterCountText:Landroid/widget/TextView;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3272
    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mFooterTextId:I

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3275
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3287
    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mTotalCount:I

    if-nez v0, :cond_a

    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    if-ne v0, v4, :cond_a

    .line 3288
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewLineTop:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3293
    :cond_1
    :goto_1
    return-void

    .line 3242
    :pswitch_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-wide v6, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    invoke-virtual {v0, v6, v7}, Lcom/android/email/RefreshManager;->isMessageListRefreshing(J)Z

    move-result v3

    .line 3243
    if-eqz v3, :cond_2

    const v0, 0x7f0800b3

    :goto_2
    iput v0, p0, Lcom/android/email/activity/MessageListFragment;->mFooterTextId:I

    .line 3245
    iget-object v6, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterProgress:Landroid/view/View;

    if-eqz v3, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3243
    :cond_2
    const v0, 0x7f0800b5

    goto :goto_2

    :cond_3
    move v0, v2

    .line 3245
    goto :goto_3

    .line 3249
    :pswitch_1
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-wide v6, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    invoke-virtual {v0, v6, v7}, Lcom/android/email/RefreshManager;->isMessageListRefreshing(J)Z

    move-result v0

    .line 3250
    if-eqz v0, :cond_4

    :cond_4
    iput v3, p0, Lcom/android/email/activity/MessageListFragment;->mFooterTextId:I

    .line 3252
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterProgress:Landroid/view/View;

    if-eqz v0, :cond_5

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3254
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-ne v0, v2, :cond_0

    .line 3255
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 3256
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 3257
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    goto :goto_0

    :cond_5
    move v0, v2

    .line 3252
    goto :goto_4

    .line 3262
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mIsSending:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-wide v6, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    invoke-virtual {v0, v6, v7}, Lcom/android/email/RefreshManager;->isMessageListRefreshing(J)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    move v3, v4

    .line 3263
    :goto_5
    if-eqz v3, :cond_8

    const v0, 0x7f0800b7

    :goto_6
    iput v0, p0, Lcom/android/email/activity/MessageListFragment;->mFooterTextId:I

    .line 3265
    iget-object v6, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterProgress:Landroid/view/View;

    if-eqz v3, :cond_9

    move v0, v1

    :goto_7
    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    move v3, v1

    .line 3262
    goto :goto_5

    .line 3263
    :cond_8
    const v0, 0x7f0801be

    goto :goto_6

    :cond_9
    move v0, v2

    .line 3265
    goto :goto_7

    .line 3290
    :cond_a
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewLineTop:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 3240
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateProgressIcon(J)V
    .locals 2
    .parameter

    .prologue
    .line 4262
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMenuitemRefresh:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 4263
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageListFragment;->isProgressActive(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4265
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMenuitemRefresh:Landroid/view/MenuItem;

    const v1, 0x7f04003d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 4270
    :cond_0
    :goto_0
    return-void

    .line 4267
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMenuitemRefresh:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private updateSelectionModeView()V
    .locals 1

    .prologue
    .line 3708
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mSelectionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 3709
    return-void
.end method


# virtual methods
.method public SearchOnServer(Landroid/app/Activity;JJ)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 2425
    invoke-static {p2, p3}, Lcom/android/email/adapter/ProtocolAdapter;->getAccountTransport(J)I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 2426
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSearchString()Ljava/lang/String;

    move-result-object v6

    move-object v0, p1

    move-wide v1, p2

    move-wide v3, p4

    .line 2427
    invoke-static/range {v0 .. v6}, Lcom/android/email/activity/CustomizeDate;->startActivity(Landroid/app/Activity;JJILjava/lang/String;)V

    .line 2453
    :goto_0
    return-void

    .line 2432
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSearchString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 2434
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 2435
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSelectedSearchType()I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 2436
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " SUBJECT {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "}\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2448
    :goto_1
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mController:Lcom/android/email/Controller;

    invoke-virtual {v1, p4, p5, v0}, Lcom/android/email/Controller;->searchOnServer(JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2449
    :catch_0
    move-exception v0

    .line 2450
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2437
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSelectedSearchType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 2438
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    iget-wide v3, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v2

    .line 2439
    const/4 v3, 0x5

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 2441
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " TO {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "}\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2443
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " FROM {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "}\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2446
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " TEXT {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "}\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method public clearContent()V
    .locals 2

    .prologue
    .line 1521
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    .line 1522
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->stopLoaders()V

    .line 1523
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->onDeselectAll()V

    .line 1524
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    if-eqz v0, :cond_0

    .line 1525
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessagesAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1526
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->initAdapter()V

    .line 1528
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageListFragment;->setListShownNoAnimation(Z)V

    .line 1529
    return-void
.end method

.method public clearSelection()V
    .locals 1

    .prologue
    .line 4386
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 4387
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedTitleSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 4388
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->unCheckAllSubTitleCheckBox()V

    .line 4389
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->finishSelectionMode()V

    .line 4390
    return-void
.end method

.method public doAutoRefresh()V
    .locals 1

    .prologue
    .line 3038
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mDoAutoRefresh:Z

    .line 3039
    return-void
.end method

.method public doesSelectionContainFlaggedMessage(I)Z
    .locals 2
    .parameter "defaultflag"

    .prologue
    .line 3005
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    const/16 v1, 0xd

    invoke-direct {p0, v0, v1, p1}, Lcom/android/email/activity/MessageListFragment;->testIntMultiple(Ljava/util/Set;II)Z

    move-result v0

    return v0
.end method

.method public doesSelectionContainNonStarredMessage()Z
    .locals 3

    .prologue
    .line 2994
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/email/activity/MessageListFragment;->testMultiple(Ljava/util/Set;IZ)Z

    move-result v0

    return v0
.end method

.method public doesSelectionContainOnlyConversation()Z
    .locals 3

    .prologue
    .line 3026
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    const/16 v1, 0x12

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v2}, Lcom/android/email/activity/MessagesAdapter;->getSelectedTitleSet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/email/activity/MessageListFragment;->testMultiple(Ljava/util/Set;ILjava/util/Set;)Z

    move-result v0

    return v0
.end method

.method public doesSelectionContainReadMessage()Z
    .locals 3

    .prologue
    .line 3001
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/email/activity/MessageListFragment;->testMultiple(Ljava/util/Set;IZ)Z

    move-result v0

    return v0
.end method

.method public doseSelectionContainFlaggedMessage()I
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x2

    .line 3013
    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageListFragment;->doesSelectionContainFlaggedMessage(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3022
    :cond_0
    :goto_0
    return v0

    .line 3015
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageListFragment;->doesSelectionContainFlaggedMessage(I)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 3016
    goto :goto_0

    .line 3017
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageListFragment;->doesSelectionContainFlaggedMessage(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    .line 3018
    goto :goto_0
.end method

.method public dropItemsFinish()V
    .locals 0

    .prologue
    .line 3124
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->onDeselectAll()V

    .line 3125
    return-void
.end method

.method public getAccountId()J
    .locals 2

    .prologue
    .line 1591
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    goto :goto_0
.end method

.method public getMailboxId()J
    .locals 2

    .prologue
    .line 1600
    iget-wide v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    return-wide v0
.end method

.method public getSelectedCount()I
    .locals 1

    .prologue
    .line 1615
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public getState()Lcom/android/email/activity/MessageListFragment$State;
    .locals 2

    .prologue
    .line 4323
    new-instance v0, Lcom/android/email/activity/MessageListFragment$State;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageListFragment$State;-><init>(Lcom/android/email/activity/MessageListFragment;Lcom/android/email/activity/MessageListFragment$1;)V

    return-object v0
.end method

.method public initListAdapter()V
    .locals 2

    .prologue
    .line 1510
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    if-eqz v0, :cond_0

    .line 1511
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessagesAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1512
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->initAdapter()V

    .line 1514
    :cond_0
    return-void
.end method

.method public isInSelectionMode()Z
    .locals 1

    .prologue
    .line 1622
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mSelectionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMagicMailbox()Z
    .locals 4

    .prologue
    .line 1608
    iget-wide v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOutbox()Z
    .locals 4

    .prologue
    .line 2498
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getMailboxId()J

    move-result-wide v0

    const-wide/16 v2, -0x6

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method loadState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessagesAdapter;->loadState(Landroid/os/Bundle;)V

    .line 1037
    const-string v0, "MessageListFragment.state.listState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mSavedListState:Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    .line 1038
    const-string v0, "messageListFragment.state.listState.selected_message_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageListFragment;->mSelectedMessageId:J

    .line 1039
    const-string v0, "MessageListFragment.state.sortType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->setSortType(I)V

    .line 1040
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const v7, 0x7f0201ec

    const/4 v6, 0x1

    const v5, 0x7f0201eb

    const/4 v4, 0x0

    .line 786
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 788
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    .line 789
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    .line 790
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 791
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 792
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 793
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 794
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 795
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 797
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    const v1, 0x7f020237

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(I)V

    .line 798
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageListFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 799
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 801
    sget v0, Lcom/android/email/activity/MessageListFragment;->sListPadding:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 802
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/email/activity/MessageListFragment;->sListPadding:I

    .line 804
    :cond_0
    new-instance v0, Lcom/android/email/activity/MessagesAdapter;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/android/email/activity/MessagesAdapter;-><init>(Landroid/content/Context;Lcom/android/email/activity/MessagesAdapter$Callback;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    .line 805
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04007c

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    .line 807
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    const v1, 0x7f1001b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewLineTop:Landroid/widget/ImageView;

    .line 809
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    const v1, 0x7f1001bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewLineBottom:Landroid/widget/ImageView;

    .line 811
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04007d

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView2:Landroid/view/View;

    .line 813
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView2:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 814
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView2:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    .line 815
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04007e

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottom:Landroid/view/View;

    .line 817
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottom:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 818
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottom:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    .line 819
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottom:Landroid/view/View;

    const v1, 0x7f1001c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottomShadow:Landroid/view/View;

    .line 820
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView2:Landroid/view/View;

    const v1, 0x7f1001be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewText2:Landroid/widget/TextView;

    .line 821
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mBgColor:I

    sget v1, Lcom/android/email/activity/MessageListFragment;->BACKGROUND_GREY:I

    if-ne v0, v1, :cond_3

    .line 822
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewText2:Landroid/widget/TextView;

    sget v1, Lcom/android/email/activity/MessageListFragment;->sMessageListFooterTextColorDarkTheme:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 826
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView2:Landroid/view/View;

    const v1, 0x7f1001bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewLine2:Landroid/widget/ImageView;

    .line 827
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView2:Landroid/view/View;

    const v1, 0x7f1001bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewLine3:Landroid/widget/ImageView;

    .line 828
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 829
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->ctx:Landroid/content/Context;

    .line 830
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->ctx:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 832
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->initScaleGestureDetector()V

    .line 833
    if-eqz p1, :cond_1

    .line 835
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageListFragment;->loadState(Landroid/os/Bundle;)V

    .line 840
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->ctx:Landroid/content/Context;

    .line 841
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->ctx:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    .line 842
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->ctx:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 843
    new-instance v0, Lcom/android/email/activity/MessageListFragment$PositionScroller;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageListFragment$PositionScroller;-><init>(Lcom/android/email/activity/MessageListFragment;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mScroller:Lcom/android/email/activity/MessageListFragment$PositionScroller;

    .line 844
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0400a3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderTop:Landroid/view/View;

    .line 845
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderTop:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 846
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderTop:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    .line 847
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderTop:Landroid/view/View;

    const-string v1, "header"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 848
    new-instance v0, Lcom/android/email/activity/ListBouncingHeaderLayout;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mInflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/android/email/activity/MessageListFragment;->mBgColor:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/activity/ListBouncingHeaderLayout;-><init>(Landroid/app/Activity;Landroid/view/LayoutInflater;I)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

    .line 849
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

    invoke-virtual {v0, v4}, Lcom/android/email/activity/ListBouncingHeaderLayout;->setFocusable(Z)V

    .line 850
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

    invoke-virtual {v0, v4}, Lcom/android/email/activity/ListBouncingHeaderLayout;->setSelected(Z)V

    .line 851
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

    const-string v1, "header"

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ListBouncingHeaderLayout;->setTag(Ljava/lang/Object;)V

    .line 852
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->addHeaderView()V

    .line 853
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    .line 854
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 855
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 858
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageListFragment;->measureView(Landroid/view/View;)V

    .line 859
    const v0, 0x7f08009b

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageListFragment;->setEmptyMessage(I)V

    .line 860
    invoke-virtual {p0, v6}, Lcom/android/email/activity/MessageListFragment;->useFlickDown(Z)V

    .line 861
    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageListFragment;->useFlickUp(Z)V

    .line 862
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->onDisableFooter()V

    .line 863
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 864
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mContextMenu:Landroid/view/View$OnCreateContextMenuListener;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageListFragment;->setListener(Landroid/view/View$OnCreateContextMenuListener;Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 869
    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->isPhoneMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 870
    invoke-virtual {p0, v6}, Lcom/android/email/activity/MessageListFragment;->setListViewPadding(Z)V

    .line 873
    :cond_2
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mBgColor:I

    sget v1, Lcom/android/email/activity/MessageListFragment;->BACKGROUND_GREY:I

    if-ne v0, v1, :cond_4

    .line 874
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewLineTop:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 876
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewLineBottom:Landroid/widget/ImageView;

    const v1, 0x7f02004a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 878
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewLine2:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 880
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewLine3:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 888
    :goto_1
    return-void

    .line 824
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewText2:Landroid/widget/TextView;

    sget v1, Lcom/android/email/activity/MessageListFragment;->sMessageListFooterTextColorWhiteTheme:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 883
    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewLineTop:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 884
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewLineBottom:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 885
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewLine2:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 886
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewLine3:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public onAdapterFavoriteChanged(Lcom/android/email/activity/MessageListItem;Z)V
    .locals 4
    .parameter "itemView"
    .parameter "newFavorite"

    .prologue
    .line 3100
    const/4 v1, 0x1

    new-array v0, v1, [J

    .line 3101
    .local v0, messageIds:[J
    const/4 v1, 0x0

    iget-wide v2, p1, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    aput-wide v2, v0, v1

    .line 3102
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getAccountId()J

    move-result-wide v1

    invoke-direct {p0, v0, p2, v1, v2}, Lcom/android/email/activity/MessageListFragment;->onSetMessageFavorite([JZJ)V

    .line 3103
    return-void
.end method

.method public onAdapterFollowUpChanged(Lcom/android/email/activity/MessageListItem;I)V
    .locals 4
    .parameter "itemView"
    .parameter "newFollowUpFlag"

    .prologue
    .line 3155
    const/4 v1, 0x1

    new-array v0, v1, [J

    .line 3156
    .local v0, messageIds:[J
    const/4 v1, 0x0

    iget-wide v2, p1, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    aput-wide v2, v0, v1

    .line 3157
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getAccountId()J

    move-result-wide v1

    invoke-direct {p0, v0, p2, v1, v2}, Lcom/android/email/activity/MessageListFragment;->onSetMessageFollowUpFlag([JIJ)V

    .line 3158
    return-void
.end method

.method public onAdapterSelectedAllChanged()V
    .locals 0

    .prologue
    .line 3108
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->updateSelectionMode()V

    .line 3109
    return-void
.end method

.method public onAdapterSelectedChanged(Lcom/android/email/activity/MessageListItem;ZI)V
    .locals 1
    .parameter "itemView"
    .parameter "newSelected"
    .parameter "mSelectedCount"

    .prologue
    .line 3142
    iget-boolean v0, p1, Lcom/android/email/activity/MessageListItem;->isSms:Z

    if-eqz v0, :cond_0

    .line 3143
    if-eqz p2, :cond_1

    .line 3144
    sget v0, Lcom/android/email/activity/MessageListFragment;->sms_selected:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/email/activity/MessageListFragment;->sms_selected:I

    .line 3149
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->updateSelectionMode()V

    .line 3150
    return-void

    .line 3146
    :cond_1
    sget v0, Lcom/android/email/activity/MessageListFragment;->sms_selected:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/email/activity/MessageListFragment;->sms_selected:I

    goto :goto_0
.end method

.method public onBackPress(Z)Z
    .locals 12
    .parameter "isSystemBackKey"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1532
    sget-boolean v0, Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z

    if-eqz v0, :cond_1

    .line 1533
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->isInSelectionMode()Z

    move-result v0

    if-ne v0, v11, :cond_0

    move v0, v10

    .line 1546
    :goto_0
    return v0

    .line 1535
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    iget-wide v1, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 1537
    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v9

    .line 1538
    .local v9, inbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXL;->getListFragmentManager()Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    iget-wide v1, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const-wide/16 v3, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectMailbox(JJZZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v11

    .line 1539
    goto :goto_0

    .line 1540
    .end local v9           #inbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :catch_0
    move-exception v8

    .local v8, e:Ljava/lang/Exception;
    move v0, v10

    .line 1541
    goto :goto_0

    .end local v8           #e:Ljava/lang/Exception;
    :cond_1
    move v0, v10

    .line 1546
    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 2035
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/email/activity/MessageListFragment;->mOrientation:I

    .line 2037
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->noImagelayout()V

    .line 2039
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->isInSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2040
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->finishSelectionMode()V

    .line 2041
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->updateSelectionMode()V

    .line 2044
    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2045
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1365
    const-string v0, "Email"

    const-string v1, "MessageListFragment onContextItemSelected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    const v1, 0x7f1002e2

    if-eq v0, v1, :cond_0

    .line 1397
    :goto_0
    return v4

    .line 1371
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 1374
    iget-object v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    check-cast v0, Lcom/android/email/activity/MessageListItem;

    .line 1376
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1378
    :pswitch_0
    iget-wide v0, v0, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageListFragment;->onDeleteOneItem(J)V

    goto :goto_0

    .line 1381
    :pswitch_1
    iget-wide v0, v0, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageListFragment;->onReply(J)V

    goto :goto_0

    .line 1384
    :pswitch_2
    iget-wide v0, v0, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageListFragment;->onReplyAll(J)V

    goto :goto_0

    .line 1387
    :pswitch_3
    iget-wide v0, v0, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageListFragment;->onForward(J)V

    goto :goto_0

    .line 1390
    :pswitch_4
    const/4 v1, 0x1

    iget-wide v2, v0, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-direct {p0, v1, v2, v3}, Lcom/android/email/activity/MessageListFragment;->onMessageMarkAsReadUnread(ZJ)V

    goto :goto_0

    .line 1393
    :pswitch_5
    iget-wide v0, v0, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-direct {p0, v4, v0, v1}, Lcom/android/email/activity/MessageListFragment;->onMessageMarkAsReadUnread(ZJ)V

    goto :goto_0

    .line 1376
    nop

    :pswitch_data_0
    .packed-switch 0x7f1002e3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 632
    const-string v2, "Email"

    const-string v3, "MessageListFragment onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 635
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    .line 638
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mController:Lcom/android/email/Controller;

    .line 639
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/email/RefreshManager;->getInstance(Landroid/content/Context;)Lcom/android/email/RefreshManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    .line 640
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshListener:Lcom/android/email/activity/MessageListFragment$RefreshListener;

    invoke-virtual {v2, v3}, Lcom/android/email/RefreshManager;->registerListener(Lcom/android/email/RefreshManager$Listener;)V

    .line 642
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.EMAILSEARCH_COMPLETED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 643
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 645
    sget v2, Lcom/android/email/activity/MessageListFragment;->sListFragmentPadding:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 646
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0048

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/android/email/activity/MessageListFragment;->sListFragmentPadding:I

    .line 648
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0040

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/android/email/activity/MessageListFragment;->sFooterProgressWidth:I

    .line 650
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b005b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/android/email/activity/MessageListFragment;->sMessageListColorBgLightWhiteTheme:I

    .line 652
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b005e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/android/email/activity/MessageListFragment;->sMessageListColorBgDarkWhiteTheme:I

    .line 654
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00a3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/android/email/activity/MessageListFragment;->sMessageListFooterTextColorWhiteTheme:I

    .line 656
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 657
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0075

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/android/email/activity/MessageListFragment;->sMessageListColorBgLightDarkTheme:I

    .line 659
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0078

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/android/email/activity/MessageListFragment;->sMessageListColorBgDarkDarkTheme:I

    .line 661
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00a6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/android/email/activity/MessageListFragment;->sMessageListFooterTextColorDarkTheme:I

    .line 666
    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v1

    .line 667
    .local v1, settingValue:Lcom/android/email/Preferences;
    invoke-virtual {v1}, Lcom/android/email/Preferences;->getBGColor()I

    move-result v2

    iput v2, p0, Lcom/android/email/activity/MessageListFragment;->mBgColor:I

    .line 668
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/email/activity/MessageListFragment;->mBgColor:I

    sget v3, Lcom/android/email/activity/MessageListFragment;->BACKGROUND_GREY:I

    if-ne v2, v3, :cond_1

    .line 669
    sget v2, Lcom/android/email/activity/MessageListFragment;->sMessageListColorBgLightDarkTheme:I

    iput v2, p0, Lcom/android/email/activity/MessageListFragment;->mMessageListColorBgLight:I

    .line 670
    sget v2, Lcom/android/email/activity/MessageListFragment;->sMessageListColorBgDarkDarkTheme:I

    iput v2, p0, Lcom/android/email/activity/MessageListFragment;->mMessageListColorBgDark:I

    .line 677
    :goto_0
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0041

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/android/email/activity/MessageListFragment;->sListFooterViewHeight:I

    .line 680
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/email/activity/MessageListFragment;->mOrientation:I

    .line 681
    return-void

    .line 672
    :cond_1
    sget v2, Lcom/android/email/activity/MessageListFragment;->sMessageListColorBgLightWhiteTheme:I

    iput v2, p0, Lcom/android/email/activity/MessageListFragment;->mMessageListColorBgLight:I

    .line 673
    sget v2, Lcom/android/email/activity/MessageListFragment;->sMessageListColorBgDarkWhiteTheme:I

    iput v2, p0, Lcom/android/email/activity/MessageListFragment;->mMessageListColorBgDark:I

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const v9, 0x7f1002e8

    const v7, 0x7f1002e7

    const v3, 0x7f0801e9

    const/4 v2, 0x0

    const/4 v8, 0x1

    .line 1284
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1285
    const-string v0, "Email"

    const-string v1, "MessageListFragment onCreateContextMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 1289
    iget-object v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/email/activity/MessageListItem;

    if-nez v0, :cond_1

    .line 1361
    :cond_0
    :goto_0
    return-void

    .line 1292
    :cond_1
    iget-object v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    check-cast v0, Lcom/android/email/activity/MessageListItem;

    .line 1294
    const-string v1, " "

    .line 1296
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getTopLineMode()I

    move-result v1

    if-nez v1, :cond_8

    .line 1297
    iget-object v1, v0, Lcom/android/email/activity/MessageListItem;->mMainText:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/android/email/activity/MessageListItem;->mMainText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 1298
    iget-object v1, v0, Lcom/android/email/activity/MessageListItem;->mMainText:Ljava/lang/String;

    .line 1309
    :goto_1
    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1311
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 1312
    const v3, 0x7f0f001e

    invoke-virtual {v1, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1315
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1316
    iget-wide v3, v0, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-static {v1, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    .line 1317
    if-eqz v1, :cond_c

    .line 1318
    iget-object v3, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v3

    invoke-static {v3}, Lcom/android/emailcommon/mail/Address;->toFriendly1([Lcom/android/emailcommon/mail/Address;)I

    move-result v3

    .line 1319
    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->toFriendly1([Lcom/android/emailcommon/mail/Address;)I

    move-result v1

    .line 1320
    add-int/2addr v1, v3

    .line 1323
    :goto_2
    const v3, 0x7f1002e4

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1324
    const v4, 0x7f1002e5

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1325
    const v5, 0x7f1002e6

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1326
    const v6, 0x7f1002e2

    invoke-interface {p1, v6, v8}, Landroid/view/ContextMenu;->setGroupEnabled(IZ)V

    .line 1327
    const v6, 0x7f1002e3

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1329
    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1330
    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1332
    if-le v1, v8, :cond_a

    .line 1333
    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1338
    :goto_3
    iget-boolean v1, v0, Lcom/android/email/activity/MessageListItem;->mRead:Z

    if-eqz v1, :cond_b

    .line 1339
    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1340
    invoke-interface {p1, v9}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1346
    :goto_4
    :try_start_0
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/irm/IRMEnforcer;->getInstance(Landroid/content/Context;)Lcom/android/email/irm/IRMEnforcer;

    move-result-object v1

    iget-wide v6, v0, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-virtual {v1, v6, v7}, Lcom/android/email/irm/IRMEnforcer;->getIRMLicenseFlag(J)I

    move-result v0

    .line 1347
    invoke-static {v0}, Lcom/android/email/irm/IRMEnforcer;->isReplyAllowed(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v1}, Lcom/android/email/activity/MessagesAdapter;->isReplyBlock()Z

    move-result v1

    if-ne v1, v8, :cond_3

    .line 1348
    :cond_2
    const/4 v1, 0x0

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1350
    :cond_3
    invoke-static {v0}, Lcom/android/email/irm/IRMEnforcer;->isReplyAllAllowed(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v1}, Lcom/android/email/activity/MessagesAdapter;->isReplyAllBlock()Z

    move-result v1

    if-ne v1, v8, :cond_5

    .line 1352
    :cond_4
    const/4 v1, 0x0

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1354
    :cond_5
    invoke-static {v0}, Lcom/android/email/irm/IRMEnforcer;->isForwardAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->isForwardBlock()Z

    move-result v0

    if-ne v0, v8, :cond_0

    .line 1356
    :cond_6
    const/4 v0, 0x0

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1358
    :catch_0
    move-exception v0

    .line 1359
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1300
    :cond_7
    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 1304
    :cond_8
    iget-object v1, v0, Lcom/android/email/activity/MessageListItem;->mSubText:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/android/email/activity/MessageListItem;->mSubText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_9

    .line 1305
    iget-object v1, v0, Lcom/android/email/activity/MessageListItem;->mSubText:Ljava/lang/String;

    goto/16 :goto_1

    .line 1307
    :cond_9
    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 1335
    :cond_a
    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 1342
    :cond_b
    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1343
    invoke-interface {p1, v9}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4

    :cond_c
    move v1, v2

    goto/16 :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x10

    const/4 v5, 0x0

    .line 1044
    const v0, 0x7f0f001f

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1045
    const-string v0, "Email"

    const-string v1, "MessageListFragment onCreateOptionsMenu1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    const v0, 0x7f1002a9

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->composeMenu:Landroid/view/MenuItem;

    .line 1049
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->composeMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->composeMenu:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1051
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->composeMenu:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1000b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1053
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1056
    iget v2, p0, Lcom/android/email/activity/MessageListFragment;->mOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 1057
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSplitMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1058
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    iget-wide v3, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    iget-wide v3, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    iget-wide v3, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    .line 1061
    :cond_0
    const/16 v2, 0xfa

    invoke-virtual {v1, v6, v5, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1071
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1073
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->composeMenu:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/email/activity/MessageListFragment$2;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageListFragment$2;-><init>(Lcom/android/email/activity/MessageListFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1082
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1083
    return-void

    .line 1063
    :cond_2
    const/16 v2, 0x2a

    invoke-virtual {v1, v6, v5, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 1066
    :cond_3
    const/16 v2, 0x26

    const/16 v3, 0xf

    invoke-virtual {v1, v2, v5, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 1069
    :cond_4
    const/16 v2, 0xe

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v5, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 772
    const v0, 0x7f04007b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMessageListFragment:Landroid/view/View;

    .line 773
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMessageListFragment:Landroid/view/View;

    const v1, 0x7f1001b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListPanel:Landroid/view/View;

    .line 774
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMessageListFragment:Landroid/view/View;

    const v1, 0x7f1001b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListShadow:Landroid/view/View;

    .line 775
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMessageListFragment:Landroid/view/View;

    const v1, 0x7f1001b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mNoMessagesPanel:Landroid/widget/TextView;

    .line 776
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMessageListFragment:Landroid/view/View;

    const v1, 0x7f1001b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mNoMessagesIcon:Landroid/view/View;

    .line 777
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMessageListFragment:Landroid/view/View;

    return-object v0
.end method

.method public onDeselectAll()V
    .locals 2

    .prologue
    .line 2326
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v1}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 2342
    :cond_0
    :goto_0
    return-void

    .line 2330
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v1}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 2331
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v1}, Lcom/android/email/activity/MessagesAdapter;->getSelectedTitleSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 2332
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v1}, Lcom/android/email/activity/MessagesAdapter;->unCheckAllSubTitleCheckBox()V

    .line 2334
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v1}, Lcom/android/email/activity/MessagesAdapter;->clearBlockCounter()V

    .line 2335
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    .line 2336
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->isInSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2337
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->finishSelectionMode()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2339
    :catch_0
    move-exception v0

    .line 2340
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 958
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mMessageOpenTask:Lcom/android/email/activity/MessageListFragment$MessageOpenTask;

    invoke-static {v1}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 960
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 962
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageListFragment;->unregisterForContextMenu(Landroid/view/View;)V

    .line 963
    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mMessageOpenTask:Lcom/android/email/activity/MessageListFragment$MessageOpenTask;

    .line 964
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshListener:Lcom/android/email/activity/MessageListFragment$RefreshListener;

    invoke-virtual {v1, v2}, Lcom/android/email/RefreshManager;->unregisterListener(Lcom/android/email/RefreshManager$Listener;)V

    .line 965
    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    .line 967
    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mMenuitemRefresh:Landroid/view/MenuItem;

    .line 971
    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mListShadow:Landroid/view/View;

    .line 972
    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mNoMessagesPanel:Landroid/widget/TextView;

    .line 973
    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mNoMessagesIcon:Landroid/view/View;

    .line 974
    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewText2:Landroid/widget/TextView;

    .line 975
    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewLine2:Landroid/widget/ImageView;

    .line 976
    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewLine3:Landroid/widget/ImageView;

    .line 978
    :try_start_0
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 979
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 980
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    .line 982
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView2:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 983
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView2:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 984
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView2:Landroid/view/View;

    .line 986
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottom:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 987
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottom:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 988
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottom:Landroid/view/View;

    .line 990
    :cond_2
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->stopLoaders()V

    .line 991
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    if-eqz v1, :cond_3

    .line 992
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v1}, Lcom/android/email/activity/MessagesAdapter;->initAdapter()V

    .line 993
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessagesAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 994
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    .line 996
    :cond_3
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_4

    .line 997
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 999
    :cond_4
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mPreviousCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mPreviousCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1000
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mPreviousCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1001
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mPreviousCursor:Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1007
    :cond_5
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 1008
    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    .line 1009
    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mListPanel:Landroid/view/View;

    .line 1010
    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mSavedListState:Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    .line 1011
    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 1012
    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    .line 1013
    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    .line 1014
    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mController:Lcom/android/email/Controller;

    .line 1015
    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshListener:Lcom/android/email/activity/MessageListFragment$RefreshListener;

    .line 1016
    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 1017
    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mSelectionMode:Landroid/view/ActionMode;

    .line 1018
    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mLastSelectionModeCallback:Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;

    .line 1019
    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mMessageListFragment:Landroid/view/View;

    .line 1020
    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    .line 1021
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    .line 1022
    return-void

    .line 1003
    :catch_0
    move-exception v0

    .line 1004
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onDisableFooter()V
    .locals 1

    .prologue
    .line 4594
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->bEnableFlickUp:Z

    .line 4595
    return-void
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "event"

    .prologue
    .line 1954
    const/4 v0, 0x0

    return v0
.end method

.method public onEnableFooter()V
    .locals 1

    .prologue
    .line 4986
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->bEnableFlickUp:Z

    .line 4987
    return-void
.end method

.method public onFlickDown()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4526
    iput-boolean v3, p0, Lcom/android/email/activity/MessageListFragment;->bIsLoading:Z

    .line 4527
    iput-boolean v3, p0, Lcom/android/email/activity/MessageListFragment;->bIsRefreshing:Z

    .line 4529
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->enableHeader()V

    .line 4530
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

    const/16 v1, 0xe

    invoke-virtual {v0, v2, v1, v2, v2}, Lcom/android/email/activity/ListBouncingHeaderLayout;->setPadding(IIII)V

    .line 4531
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ListBouncingHeaderLayout;->displayUpdate()V

    .line 4532
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->onDisableFooter()V

    .line 4533
    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageListFragment;->setSelection(I)V

    .line 4534
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    .line 4536
    const-string v0, "MessageListFragment"

    const-string v1, "onFlickDown() FlickDown is fired!!"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 4538
    sget v0, Lcom/android/email/activity/MessageListFragment;->countLoadComment:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/email/activity/MessageListFragment;->countLoadComment:I

    .line 4539
    sput-boolean v2, Lcom/android/email/activity/MessageListFragment;->isLoadComment:Z

    .line 4541
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/email/activity/MessageListFragment$11;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageListFragment$11;-><init>(Lcom/android/email/activity/MessageListFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4547
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4548
    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageListFragment;->onRefresh(Z)V

    .line 4549
    return-void
.end method

.method public onFlickDownComplete(Z)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 4941
    :try_start_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->disableHeader()V

    .line 4942
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

    if-eqz v0, :cond_0

    .line 4943
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/activity/ListBouncingHeaderLayout;->setPadding(IIII)V

    .line 4944
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

    iget v1, p0, Lcom/android/email/activity/MessageListFragment;->mLastSp:I

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ListBouncingHeaderLayout;->displayRelease(I)V

    .line 4946
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageListFragment;->controlFooterVisibility(Z)V

    .line 4948
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->bIsRefreshing:Z

    .line 4954
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->bIsLoading:Z

    .line 4956
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4957
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 4959
    if-ne p1, v5, :cond_1

    .line 4960
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->onEnableFooter()V

    .line 4964
    :goto_0
    const-string v1, "MessageListFragment"

    const-string v2, "onRefreshCompleted()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/android/email/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4968
    :goto_1
    return-void

    .line 4962
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->onDisableFooter()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4965
    :catch_0
    move-exception v0

    .line 4966
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onFlickUp()V
    .locals 3

    .prologue
    .line 4859
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->bIsLoading:Z

    .line 4860
    const-string v0, "MessageListFragment"

    const-string v1, "onFlickUp()"

    const-string v2, "Flick Up is fired!!"

    invoke-static {v0, v1, v2}, Lcom/android/email/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4861
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1630
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialogCancelled:Z

    .line 1631
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/email/activity/MessageListItem;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1632
    check-cast p2, Lcom/android/email/activity/MessageListItem;

    .line 1633
    iget-boolean v0, p2, Lcom/android/email/activity/MessageListItem;->isSms:Z

    sput-boolean v0, Lcom/android/email/activity/MessageView;->isSms:Z

    .line 1634
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mMultiTouchEnabled:Z

    if-nez v0, :cond_0

    .line 1635
    iget-wide v0, p2, Lcom/android/email/activity/MessageListItem;->mMailboxId:J

    iget-wide v2, p2, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/email/activity/MessageListFragment;->onMessageOpen(JJ)V

    .line 1646
    :cond_0
    :goto_0
    return-void

    .line 1640
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/email/activity/MessageListSubTitleItem;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1641
    check-cast p2, Lcom/android/email/activity/MessageListSubTitleItem;

    .line 1642
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    iget v1, p2, Lcom/android/email/activity/MessageListSubTitleItem;->mSubTitleIndex:I

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessagesAdapter;->updateArrow(I)V

    goto :goto_0

    .line 1643
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    if-ne p2, v0, :cond_0

    .line 1644
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->doFooterClick()V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2135
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/android/email/activity/MessageListItem;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2136
    check-cast p2, Lcom/android/email/activity/MessageListItem;

    .line 2138
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->checkITPolicy_AllowPOPIMAP()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2195
    :cond_0
    :goto_0
    return v0

    .line 2145
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    if-eqz v1, :cond_0

    .line 2147
    iget-wide v1, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    iget-wide v2, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->canMoveFrom(Landroid/content/Context;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2149
    :cond_2
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->isMesssageListLeftside()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2154
    iget-boolean v1, p0, Lcom/android/email/activity/MessageListFragment;->mIsKeyDownEvent:Z

    if-nez v1, :cond_0

    .line 2158
    iget-boolean v0, p2, Lcom/android/email/activity/MessageListItem;->isSms:Z

    sput-boolean v0, Lcom/android/email/activity/MessageView;->isSms:Z

    .line 2159
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0, p2}, Lcom/android/email/activity/MessagesAdapter;->isSelected(Lcom/android/email/activity/MessageListItem;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2160
    iget v0, p2, Lcom/android/email/activity/MessageListItem;->mParentIndex:I

    invoke-direct {p0, p2, v0}, Lcom/android/email/activity/MessageListFragment;->toggleSelection(Lcom/android/email/activity/MessageListItem;I)V

    .line 2163
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.android.email.MESSAGE_LIST_ITEMS"

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    iget-wide v3, p2, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "mailboxId"

    iget-wide v4, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v1

    .line 2172
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    .line 2175
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 2176
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-wide v5, p2, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    .line 2177
    new-instance v3, Landroid/content/ClipData$Item;

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v1, v3}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    goto :goto_1

    .line 2181
    :cond_5
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2182
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 2183
    invoke-virtual {p2, v0}, Lcom/android/email/activity/MessageListItem;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2186
    invoke-virtual {p2, p0}, Lcom/android/email/activity/MessageListItem;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 2193
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x3e

    const/16 v4, 0x14

    const/16 v3, 0x13

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2049
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    move v0, v2

    .line 2130
    :goto_1
    return v0

    .line 2051
    :pswitch_0
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListFragment;->mIsKeyDownEvent:Z

    .line 2053
    if-ne p2, v5, :cond_1

    move v0, v1

    .line 2054
    goto :goto_1

    .line 2057
    :cond_1
    const/16 v0, 0x70

    if-ne p2, v0, :cond_3

    .line 2058
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 2059
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2060
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 2061
    if-eqz v0, :cond_2

    .line 2062
    const-class v2, Lcom/android/email/activity/MessageListItem;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2063
    check-cast v0, Lcom/android/email/activity/MessageListItem;

    .line 2064
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 2065
    iget-wide v3, v0, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2066
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageListFragment;->onMultiDelete(Ljava/util/Set;)V

    :cond_2
    move v0, v1

    .line 2071
    goto :goto_1

    .line 2074
    :cond_3
    if-eq p2, v4, :cond_4

    const/16 v0, 0x16

    if-ne p2, v0, :cond_5

    .line 2075
    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView2:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 2076
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView2:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    .line 2077
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 2081
    :cond_5
    if-ne p2, v3, :cond_6

    .line 2082
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView2:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_6

    .line 2083
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView2:Landroid/view/View;

    if-ne v0, v1, :cond_6

    .line 2084
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 2089
    :cond_6
    if-ne p2, v4, :cond_0

    .line 2090
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    if-eqz v0, :cond_0

    .line 2091
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2092
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderTop:Landroid/view/View;

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottom:Landroid/view/View;

    if-ne v0, v1, :cond_0

    .line 2095
    :cond_7
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_0

    .line 2102
    :pswitch_1
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListFragment;->mIsKeyDownEvent:Z

    .line 2104
    if-ne p2, v5, :cond_a

    .line 2105
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_a

    .line 2106
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 2107
    if-eqz v0, :cond_a

    .line 2108
    const-class v2, Lcom/android/email/activity/MessageListItem;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2109
    check-cast v0, Lcom/android/email/activity/MessageListItem;

    .line 2110
    iget v2, v0, Lcom/android/email/activity/MessageListItem;->mParentIndex:I

    invoke-direct {p0, v0, v2}, Lcom/android/email/activity/MessageListFragment;->toggleSelection(Lcom/android/email/activity/MessageListItem;I)V

    :cond_8
    :goto_2
    move v0, v1

    .line 2116
    goto/16 :goto_1

    .line 2111
    :cond_9
    const-class v2, Lcom/android/email/activity/MessageListSubTitleItem;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2113
    check-cast v0, Lcom/android/email/activity/MessageListSubTitleItem;

    .line 2114
    iget v2, v0, Lcom/android/email/activity/MessageListSubTitleItem;->mSubTitleIndex:I

    iget-boolean v0, v0, Lcom/android/email/activity/MessageListSubTitleItem;->mIsChecked:Z

    invoke-direct {p0, v2, v0}, Lcom/android/email/activity/MessageListFragment;->toggleMultiSelection(IZ)V

    goto :goto_2

    .line 2121
    :cond_a
    if-ne p2, v3, :cond_0

    .line 2122
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    if-eqz v0, :cond_0

    .line 2123
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v1}, Lcom/android/email/activity/MessagesAdapter;->getFirstListItem()Landroid/view/View;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2125
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_0

    .line 2049
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onMoveConversationAlwaysToMailboxSelected(JJ[J[Ljava/lang/String;I)V
    .locals 2
    .parameter "targetAccountId"
    .parameter "targetMailboxId"
    .parameter "messageIds"
    .parameter "convIds"
    .parameter "moveType"

    .prologue
    .line 2486
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0, p3, p4}, Lcom/android/email/activity/MessageListFragment;->onConversationMoveAlways(Ljava/util/Set;J)V

    .line 2491
    return-void
.end method

.method public onMoveToMailboxSelected(JJ[JI)V
    .locals 0
    .parameter "targetAccountId"
    .parameter "newMailboxId"
    .parameter "messageIds"
    .parameter "moveType"

    .prologue
    .line 2306
    return-void
.end method

.method public onMultiDelete()V
    .locals 1

    .prologue
    .line 2282
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageListFragment;->onMultiDelete(Ljava/util/Set;)V

    .line 2283
    return-void
.end method

.method public onMultiFollowUpFlag(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 2608
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/email/activity/MessageListFragment;->onMultiToggleFollowUpFlag(Ljava/util/Set;I)V

    .line 2609
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->onDeselectAll()V

    .line 2610
    return-void
.end method

.method public onMultiMove()V
    .locals 2

    .prologue
    .line 2290
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v1}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/utility/Utility;->toPrimitiveLongArray(Ljava/util/Collection;)[J

    move-result-object v0

    .line 2291
    .local v0, messageIds:[J
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    invoke-interface {v1, v0}, Lcom/android/email/activity/MessageListFragment$Callback;->onMoveMessages([J)V

    .line 2296
    return-void
.end method

.method public onMultiToggleFavorite()V
    .locals 1

    .prologue
    .line 2270
    sget-boolean v0, Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z

    if-eqz v0, :cond_0

    .line 2271
    sget-object v0, Lcom/android/email/activity/MessageListFragment;->activity_CALLBACK:Lcom/android/email/activity/MessageListFragment$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageListFragment$Callback;->onFollowUpViewShown()V

    .line 2279
    :goto_0
    return-void

    .line 2274
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageListFragment;->onMultiToggleFavorite(Ljava/util/Set;)V

    .line 2275
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->onDeselectAll()V

    goto :goto_0
.end method

.method public onMultiToggleRead()V
    .locals 1

    .prologue
    .line 2265
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageListFragment;->onMultiToggleRead(Ljava/util/Set;)V

    .line 2266
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->onDeselectAll()V

    .line 2267
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1206
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v3, "input_method"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1208
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    move v0, v2

    .line 1258
    :goto_0
    return v0

    .line 1210
    :sswitch_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageListFragment$Callback;->onComposeFromMessageListFragment()V

    move v0, v1

    .line 1211
    goto :goto_0

    .line 1213
    :sswitch_1
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageListFragment$Callback;->onRefreshFromMessageListFragment()V

    move v0, v1

    .line 1214
    goto :goto_0

    .line 1216
    :sswitch_2
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1217
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1218
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->closeOptionsMenu()V

    .line 1219
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageListFragment$Callback;->onMailBoxList()V

    move v0, v1

    .line 1221
    goto :goto_0

    .line 1223
    :sswitch_3
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageListFragment$Callback;->onSearchFromMessageListFragment()V

    move v0, v1

    .line 1224
    goto :goto_0

    .line 1227
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListXL;->showDialog2(I)V

    move v0, v1

    .line 1228
    goto :goto_0

    .line 1231
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListXL;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageListXL;->showDialog2(I)V

    move v0, v1

    .line 1232
    goto :goto_0

    .line 1234
    :sswitch_6
    invoke-static {}, Lcom/android/email/activity/MessageListFragment;->getStartTimeForCreate()Landroid/text/format/Time;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    .line 1235
    const-wide/32 v5, 0x36ee80

    add-long/2addr v5, v3

    .line 1236
    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.intent.action.EDIT"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1242
    const-string v7, "vnd.android.cursor.item/event"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1243
    const-string v7, "beginTime"

    invoke-virtual {v0, v7, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1244
    const-string v3, "endTime"

    invoke-virtual {v0, v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1245
    const-string v3, "isAllday"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1247
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageListFragment;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 1248
    goto :goto_0

    .line 1251
    :sswitch_7
    iget-wide v2, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 1252
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    invoke-static {v0, v2, v3}, Lcom/android/email/activity/setup/MailboxSettings;->start(Landroid/app/Activity;J)V

    :cond_1
    move v0, v1

    .line 1256
    goto/16 :goto_0

    .line 1208
    :sswitch_data_0
    .sparse-switch
        0x7f1002a9 -> :sswitch_0
        0x7f1002cc -> :sswitch_7
        0x7f1002d0 -> :sswitch_1
        0x7f1002e9 -> :sswitch_3
        0x7f1002ea -> :sswitch_2
        0x7f1002ec -> :sswitch_4
        0x7f1002ee -> :sswitch_5
        0x7f1002f0 -> :sswitch_6
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 939
    const-string v0, "Email"

    const-string v1, "MessageListFragment onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/activity/MessageListFragment;->mResumed:Z

    .line 941
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 942
    new-instance v0, Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/emailcommon/utility/Utility$ListStateSaver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mSavedListState:Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    .line 943
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 10
    .parameter

    .prologue
    const v4, 0x7f1002e9

    const v9, 0x7f1002eb

    const v8, 0x7f1002ed

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1087
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 1089
    const-string v0, "Email"

    const-string v3, "MessageListFragment onPrepareOptionsMenu"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    const v0, 0x7f1002a9

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1091
    const v0, 0x7f1002d0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMenuitemRefresh:Landroid/view/MenuItem;

    .line 1092
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isInSearchMode()Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1096
    const v0, 0x7f1002f1

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1097
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->IsEAS()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1099
    const-wide/16 v3, 0x0

    .line 1100
    iget-object v6, p0, Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v6, :cond_0

    .line 1101
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 1103
    :cond_0
    const-wide/high16 v6, 0x4028

    cmpg-double v3, v3, v6

    if-gez v3, :cond_9

    .line 1104
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1105
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1114
    :goto_1
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isInSearchMode()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1115
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSplitMode()Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mOrientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_b

    .line 1116
    invoke-interface {v5, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1124
    :goto_2
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMenuitemRefresh:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 1125
    iget-wide v3, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    invoke-direct {p0, v3, v4}, Lcom/android/email/activity/MessageListFragment;->updateProgressIcon(J)V

    .line 1127
    :cond_1
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getViewMode()I

    move-result v0

    if-ne v0, v1, :cond_e

    .line 1128
    invoke-interface {p1, v9, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 1129
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isInSearchMode()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1130
    invoke-interface {p1, v8, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 1143
    :goto_3
    sget-boolean v0, Lcom/android/email/activity/Welcome;->needFull:Z

    if-eqz v0, :cond_2

    .line 1144
    invoke-interface {p1, v9}, Landroid/view/Menu;->removeGroup(I)V

    .line 1145
    invoke-interface {p1, v8}, Landroid/view/Menu;->removeGroup(I)V

    .line 1148
    :cond_2
    const v0, 0x7f1002f0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1149
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->IsEAS()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1150
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1151
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1157
    :goto_4
    const v0, 0x7f1002cc

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1160
    iget-wide v3, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_3

    sget-boolean v3, Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z

    if-nez v3, :cond_11

    .line 1161
    :cond_3
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1162
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1186
    :cond_4
    :goto_5
    const v0, 0x7f1002e0

    :try_start_0
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1187
    const v2, 0x7f100301

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1188
    const v3, 0x7f1002c3

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1189
    iget-object v4, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v4}, Lcom/android/email/activity/MessagesAdapter;->isReplyBlock()Z

    move-result v4

    if-ne v4, v1, :cond_5

    .line 1190
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1192
    :cond_5
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->isReplyAllBlock()Z

    move-result v0

    if-ne v0, v1, :cond_6

    .line 1193
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1195
    :cond_6
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->isForwardBlock()Z

    move-result v0

    if-ne v0, v1, :cond_7

    .line 1196
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1201
    :cond_7
    :goto_6
    return-void

    :cond_8
    move v0, v2

    .line 1092
    goto/16 :goto_0

    .line 1107
    :cond_9
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1108
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 1111
    :cond_a
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1112
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 1118
    :cond_b
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 1121
    :cond_c
    invoke-interface {v5, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 1132
    :cond_d
    invoke-interface {p1, v8, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto/16 :goto_3

    .line 1135
    :cond_e
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isInSearchMode()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1136
    invoke-interface {p1, v9, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 1137
    invoke-interface {p1, v8, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto/16 :goto_3

    .line 1139
    :cond_f
    invoke-interface {p1, v9, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 1140
    invoke-interface {p1, v8, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto/16 :goto_3

    .line 1153
    :cond_10
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1154
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 1164
    :cond_11
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    iget-wide v4, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_12

    .line 1167
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1168
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1173
    :goto_7
    sget-boolean v0, Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z

    if-eqz v0, :cond_4

    .line 1175
    :try_start_1
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    iget-wide v2, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    invoke-static {v0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_13

    .line 1176
    const v0, 0x7f1002e9

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    .line 1179
    :catch_0
    move-exception v0

    .line 1180
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 1170
    :cond_12
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1171
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_7

    .line 1178
    :cond_13
    const v0, 0x7f1002e9

    :try_start_2
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_5

    .line 1198
    :catch_1
    move-exception v0

    .line 1199
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6
.end method

.method public onReDrawList()V
    .locals 2

    .prologue
    .line 3115
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3119
    :goto_0
    return-void

    .line 3116
    :catch_0
    move-exception v0

    .line 3117
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onRefresh(Z)V
    .locals 6
    .parameter "userRequest"

    .prologue
    .line 2313
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mIsRefreshable:Z

    if-nez v0, :cond_0

    .line 2314
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageListFragment;->onFlickDownComplete(Z)V

    .line 2323
    :goto_0
    return-void

    .line 2317
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getAccountId()J

    move-result-wide v1

    .line 2318
    .local v1, accountId:J
    const-wide/16 v3, -0x1

    cmp-long v0, v1, v3

    if-eqz v0, :cond_1

    .line 2319
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-wide v3, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/RefreshManager;->refreshMessageList(JJZ)Z

    goto :goto_0

    .line 2321
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageListFragment$Callback;->refreshAllAccount()V

    goto :goto_0
.end method

.method public onRefresh(III)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4511
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ListBouncingHeaderLayout;->getTop()I

    move-result v0

    .line 4512
    if-gez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->bIsRefreshing:Z

    if-nez v0, :cond_0

    .line 4513
    const/4 v0, 0x0

    .line 4519
    :goto_0
    return v0

    .line 4515
    :cond_0
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->bIsRefreshing:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ListBouncingHeaderLayout;->getHeaderVisible()I

    move-result v0

    if-nez v0, :cond_1

    .line 4516
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->onFlickDown()V

    .line 4518
    :cond_1
    const-string v0, "MessageListFragment"

    const-string v1, "onRefresh() return true"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 4519
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onRelease()V
    .locals 3

    .prologue
    .line 4867
    monitor-enter p0

    .line 4868
    :try_start_0
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->bIsRefreshing:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 4869
    const-string v0, "MessageListFragment"

    const-string v1, "onRelease()"

    const-string v2, "Now Updating..!!"

    invoke-static {v0, v1, v2}, Lcom/android/email/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4870
    monitor-exit p0

    .line 4876
    :cond_0
    :goto_0
    return-void

    .line 4872
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4873
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

    if-eqz v0, :cond_0

    .line 4874
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

    iget v1, p0, Lcom/android/email/activity/MessageListFragment;->mLastSp:I

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ListBouncingHeaderLayout;->displayRelease(I)V

    goto :goto_0

    .line 4872
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 911
    const-string v0, "Email"

    const-string v1, "MessageListFragment onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 913
    sput-boolean v4, Lcom/android/email/activity/MessageListFragment;->mResumed:Z

    .line 917
    iget-wide v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 918
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mOpenRequested:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/email/activity/MessageListFragment;->mLoadReserved:Z

    if-eqz v0, :cond_1

    .line 919
    :cond_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->startLoading()V

    .line 923
    :cond_1
    sget-object v0, Lcom/android/email/activity/MessageListFragment;->isFavorite:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v4, :cond_2

    .line 924
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->refreshList()V

    .line 926
    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/MessageListFragment;->isFavorite:Ljava/lang/Boolean;

    .line 928
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->composeMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_3

    .line 929
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->composeMenu:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->composeLayout:Landroid/widget/LinearLayout;

    .line 930
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->composeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->composeLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    .line 933
    :cond_3
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->noImagelayout()V

    .line 935
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 1026
    const-string v0, "Email"

    const-string v1, "MessageListFragment onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1028
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessagesAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1029
    const-string v0, "MessageListFragment.state.listState"

    new-instance v1, Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/emailcommon/utility/Utility$ListStateSaver;-><init>(Landroid/widget/AbsListView;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1030
    const-string v0, "MessageListFragment.state.sortType"

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSortType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1031
    const-string v0, "messageListFragment.state.listState.selected_message_id"

    iget-wide v1, p0, Lcom/android/email/activity/MessageListFragment;->mSelectedMessageId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1032
    return-void
.end method

.method public onSendPendingMessages()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2504
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2506
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "airplane_mode_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    .line 2509
    :goto_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->IsEAS()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2510
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f080556

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v5, v5, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-virtual {p0, v3, v4}, Lcom/android/email/activity/MessageListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2515
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/email/RefreshManager;->getInstance(Landroid/content/Context;)Lcom/android/email/RefreshManager;

    move-result-object v0

    .line 2516
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getMailboxId()J

    move-result-wide v1

    const-wide/16 v3, -0x6

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    .line 2517
    invoke-virtual {v0}, Lcom/android/email/RefreshManager;->sendPendingMessagesForAllAccounts()V

    .line 2522
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 2506
    goto :goto_0

    .line 2518
    :cond_3
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    if-eqz v1, :cond_1

    .line 2520
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/RefreshManager;->sendPendingMessages(J)Z

    goto :goto_1
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 900
    invoke-super {p0}, Landroid/app/ListFragment;->onStart()V

    .line 901
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 948
    const-string v0, "Email"

    const-string v1, "MessageListFragment onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    invoke-super {p0}, Landroid/app/ListFragment;->onStop()V

    .line 950
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1961
    .line 1962
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    .line 1964
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 1965
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    if-eqz v2, :cond_0

    .line 1966
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, v1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1968
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2030
    :cond_1
    :goto_0
    return v6

    .line 1970
    :pswitch_0
    iget-boolean v1, p0, Lcom/android/email/activity/MessageListFragment;->mNeedToFlickDownRefresh:Z

    if-eqz v1, :cond_7

    .line 1971
    iget-boolean v1, p0, Lcom/android/email/activity/MessageListFragment;->touchandmove:Z

    if-eqz v1, :cond_6

    .line 1972
    iput-boolean v6, p0, Lcom/android/email/activity/MessageListFragment;->touchandmove:Z

    .line 1973
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mScroller:Lcom/android/email/activity/MessageListFragment$PositionScroller;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mScroller:Lcom/android/email/activity/MessageListFragment$PositionScroller;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListFragment$PositionScroller;->isScrolling()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1975
    :cond_2
    iget-boolean v1, p0, Lcom/android/email/activity/MessageListFragment;->mUseFlickDown:Z

    if-ne v1, v5, :cond_5

    .line 1976
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 1977
    const-string v2, "MessageListFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTouch() ACTION DOWN, first = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1978
    iget-boolean v2, p0, Lcom/android/email/activity/MessageListFragment;->bIsRefreshing:Z

    if-nez v2, :cond_4

    if-eq v1, v5, :cond_3

    if-nez v1, :cond_4

    .line 1979
    :cond_3
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageListFragment;->setSelection(I)V

    .line 1981
    :cond_4
    iget v1, p0, Lcom/android/email/activity/MessageListFragment;->mPrevRawY:I

    if-le v0, v1, :cond_5

    .line 1982
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mIsRefreshable:Z

    if-eqz v0, :cond_5

    .line 1983
    invoke-direct {p0, v5}, Lcom/android/email/activity/MessageListFragment;->controlFooterVisibility(Z)V

    .line 1984
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->enableHeader()V

    .line 1985
    iput-boolean v5, p0, Lcom/android/email/activity/MessageListFragment;->bIsDown:Z

    .line 1989
    :cond_5
    iput-boolean v5, p0, Lcom/android/email/activity/MessageListFragment;->bIsDown:Z

    .line 1994
    :cond_6
    :goto_1
    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mPrevRawY:I

    goto :goto_0

    .line 1992
    :cond_7
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->disableHeader()V

    goto :goto_1

    .line 1998
    :pswitch_1
    iput v0, p0, Lcom/android/email/activity/MessageListFragment;->mPrevRawY:I

    .line 1999
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->access$902(I)I

    goto :goto_0

    .line 2003
    :pswitch_2
    iput-boolean v6, p0, Lcom/android/email/activity/MessageListFragment;->mMultiTouchEnabled:Z

    .line 2006
    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->isPhoneMode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2007
    iput-boolean v6, p0, Lcom/android/email/activity/MessageListFragment;->mNeedToFlickDownRefresh:Z

    .line 2011
    :goto_2
    iput-boolean v6, p0, Lcom/android/email/activity/MessageListFragment;->bIsDown:Z

    .line 2012
    iput-boolean v5, p0, Lcom/android/email/activity/MessageListFragment;->touchandmove:Z

    .line 2013
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mNeedToFlickDownRefresh:Z

    if-ne v0, v5, :cond_1

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mUseFlickDown:Z

    if-ne v0, v5, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 2014
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 2015
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    .line 2016
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    .line 2017
    if-eq v0, v5, :cond_8

    if-nez v0, :cond_1

    .line 2018
    :cond_8
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/email/activity/MessageListFragment;->onRefresh(III)Z

    goto/16 :goto_0

    .line 2009
    :cond_9
    iput-boolean v5, p0, Lcom/android/email/activity/MessageListFragment;->mNeedToFlickDownRefresh:Z

    goto :goto_2

    .line 1968
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public openMailbox(J)V
    .locals 2
    .parameter "mailboxId"

    .prologue
    .line 1559
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 1560
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0

    .line 1562
    :cond_0
    iget-wide v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_2

    .line 1573
    :cond_1
    :goto_0
    return-void

    .line 1566
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mOpenRequested:Z

    .line 1567
    iput-wide p1, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    .line 1568
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->initListAdapter()V

    .line 1569
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->onDeselectAll()V

    .line 1570
    sget-boolean v0, Lcom/android/email/activity/MessageListFragment;->mResumed:Z

    if-eqz v0, :cond_1

    .line 1571
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->startLoading()V

    goto :goto_0
.end method

.method public refreshList()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 3456
    iget-wide v1, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 3470
    :goto_0
    return-void

    .line 3460
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    new-instance v4, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;-><init>(Lcom/android/email/activity/MessageListFragment;Z)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3462
    :catch_0
    move-exception v0

    .line 3463
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    new-instance v2, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;

    invoke-direct {v2, p0, v6}, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;-><init>(Lcom/android/email/activity/MessageListFragment;Z)V

    invoke-virtual {v1, v7, v8, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method

.method public registerListener(Landroid/view/View$OnCreateContextMenuListener;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 2
    .parameter "menu"
    .parameter "item"

    .prologue
    .line 4713
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->otherListner:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 4714
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 4715
    return-void
.end method

.method public setActionBarDisplayHomeEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 3296
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 3297
    return-void
.end method

.method public setCallback(Lcom/android/email/activity/MessageListFragment$Callback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 1401
    if-eqz p1, :cond_0

    .end local p1
    :goto_0
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    .line 1403
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    sput-object v0, Lcom/android/email/activity/MessageListFragment;->activity_CALLBACK:Lcom/android/email/activity/MessageListFragment$Callback;

    .line 1405
    return-void

    .line 1401
    .restart local p1
    :cond_0
    sget-object p1, Lcom/android/email/activity/MessageListFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MessageListFragment$Callback;

    goto :goto_0
.end method

.method public setEmptyMessage(I)V
    .locals 0
    .parameter "resID"

    .prologue
    .line 4934
    return-void
.end method

.method public setItemCheckboxPressed(ZLcom/android/email/activity/MessageListItem;)V
    .locals 1
    .parameter "bool"
    .parameter "item"

    .prologue
    .line 3129
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/email/activity/MessageListFragment$Callback;->setItemCheckboxPressed(ZLcom/android/email/activity/MessageListItem;)V

    .line 3130
    return-void
.end method

.method public setListBackgroundColor(Z)V
    .locals 3
    .parameter "isDark"

    .prologue
    const/16 v2, 0x8

    .line 1485
    if-eqz p1, :cond_1

    .line 1486
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListPanel:Landroid/view/View;

    iget v1, p0, Lcom/android/email/activity/MessageListFragment;->mMessageListColorBgDark:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1487
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottom:Landroid/view/View;

    iget v1, p0, Lcom/android/email/activity/MessageListFragment;->mMessageListColorBgDark:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1488
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

    iget v1, p0, Lcom/android/email/activity/MessageListFragment;->mMessageListColorBgDark:I

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ListBouncingHeaderLayout;->setBackgroundColorForHeader(I)V

    .line 1489
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderTop:Landroid/view/View;

    iget v1, p0, Lcom/android/email/activity/MessageListFragment;->mMessageListColorBgDark:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1493
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSplitMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1494
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListShadow:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1507
    :goto_0
    return-void

    .line 1496
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListShadow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1499
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListPanel:Landroid/view/View;

    iget v1, p0, Lcom/android/email/activity/MessageListFragment;->mMessageListColorBgLight:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1500
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottom:Landroid/view/View;

    iget v1, p0, Lcom/android/email/activity/MessageListFragment;->mMessageListColorBgLight:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1501
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

    iget v1, p0, Lcom/android/email/activity/MessageListFragment;->mMessageListColorBgLight:I

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ListBouncingHeaderLayout;->setBackgroundColorForHeader(I)V

    .line 1502
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderTop:Landroid/view/View;

    iget v1, p0, Lcom/android/email/activity/MessageListFragment;->mMessageListColorBgLight:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1505
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListShadow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setListSplit(I)V
    .locals 0
    .parameter "imageType"

    .prologue
    .line 4440
    return-void
.end method

.method public setListViewPadding(Z)V
    .locals 6
    .parameter "isNeedSidePadding"

    .prologue
    const/16 v5, 0xe

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1428
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 1429
    if-eqz p1, :cond_2

    .line 1430
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    sget v1, Lcom/android/email/activity/MessageListFragment;->sListPadding:I

    sget v2, Lcom/android/email/activity/MessageListFragment;->sListPadding:I

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 1431
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSortType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 1432
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottom:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1433
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottom:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1438
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottomShadow:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1439
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottomShadow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1440
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ListBouncingHeaderLayout;->disableShadow()V

    .line 1450
    :cond_0
    :goto_1
    return-void

    .line 1435
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottom:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1436
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottom:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 1442
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 1443
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottom:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1444
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottom:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1445
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottomShadow:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1446
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderBottomShadow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1447
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListHeaderContent:Lcom/android/email/activity/ListBouncingHeaderLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ListBouncingHeaderLayout;->enableShadow()V

    goto :goto_1
.end method

.method public setListener(Landroid/view/View$OnCreateContextMenuListener;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .parameter "menu"
    .parameter "item"

    .prologue
    .line 4703
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment;->mContextMenu:Landroid/view/View$OnCreateContextMenuListener;

    .line 4704
    iput-object p2, p0, Lcom/android/email/activity/MessageListFragment;->mItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    .line 4705
    invoke-virtual {p0, p1, p2}, Lcom/android/email/activity/MessageListFragment;->registerListener(Landroid/view/View$OnCreateContextMenuListener;Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 4706
    return-void
.end method

.method public setMessageListFontSize(I)V
    .locals 1
    .parameter "fontSize"

    .prologue
    .line 2362
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    if-eqz v0, :cond_0

    .line 2363
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessagesAdapter;->setListItemSize(I)V

    .line 2364
    :cond_0
    return-void
.end method

.method public setMoveToMailboxFlag(Z)V
    .locals 0
    .parameter "bool"

    .prologue
    .line 4447
    iput-boolean p1, p0, Lcom/android/email/activity/MessageListFragment;->hasMailboxToMove:Z

    .line 4448
    return-void
.end method

.method public setPreviewLinstSize(I)V
    .locals 1
    .parameter "previewLineSize"

    .prologue
    .line 2367
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    if-eqz v0, :cond_0

    .line 2368
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessagesAdapter;->setPreviewLineSize(I)V

    .line 2369
    :cond_0
    return-void
.end method

.method public setSelectedMessage(JI)V
    .locals 1
    .parameter "messageId"
    .parameter "mode"

    .prologue
    .line 1576
    iput-wide p1, p0, Lcom/android/email/activity/MessageListFragment;->mSelectedMessageId:J

    .line 1577
    sget-boolean v0, Lcom/android/email/activity/MessageListFragment;->mResumed:Z

    if-eqz v0, :cond_0

    .line 1578
    const/4 v0, 0x1

    invoke-direct {p0, v0, p3}, Lcom/android/email/activity/MessageListFragment;->highlightSelectedMessage(ZI)V

    .line 1580
    :cond_0
    return-void
.end method

.method public setSendingProgressFlag(Z)V
    .locals 2
    .parameter "bool"

    .prologue
    .line 4393
    iput-boolean p1, p0, Lcom/android/email/activity/MessageListFragment;->mIsSending:Z

    .line 4394
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    if-eqz v1, :cond_0

    .line 4395
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v1, p1}, Lcom/android/email/activity/MessagesAdapter;->setCheckboxStatus(Z)V

    .line 4396
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->isInSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4398
    :try_start_0
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v1}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 4399
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v1}, Lcom/android/email/activity/MessagesAdapter;->getSelectedTitleSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 4400
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v1}, Lcom/android/email/activity/MessagesAdapter;->unCheckAllSubTitleCheckBox()V

    .line 4401
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    .line 4402
    const/4 v1, 0x0

    sput v1, Lcom/android/email/activity/MessageListFragment;->sms_selected:I

    .line 4403
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->finishSelectionMode()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4409
    :cond_0
    :goto_0
    return-void

    .line 4404
    :catch_0
    move-exception v0

    .line 4405
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setSubItemCheckboxPressed(ZLcom/android/email/activity/MessageListSubTitleItem;)V
    .locals 1
    .parameter "bool"
    .parameter "item"

    .prologue
    .line 3134
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/email/activity/MessageListFragment$Callback;->setSubItemCheckboxPressed(ZLcom/android/email/activity/MessageListSubTitleItem;)V

    .line 3135
    return-void
.end method

.method public setTotalCountFromMailbox(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 4443
    iput p1, p0, Lcom/android/email/activity/MessageListFragment;->mTotalCountFromMailbox:I

    .line 4444
    return-void
.end method

.method public updateMessageCount()V
    .locals 8

    .prologue
    .line 4360
    const/4 v1, 0x0

    .line 4362
    .local v1, footerStr:Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterText:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 4363
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 4364
    .local v2, footerTextBuf:Ljava/lang/StringBuffer;
    iget v5, p0, Lcom/android/email/activity/MessageListFragment;->mUnReadCount:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    iget v6, p0, Lcom/android/email/activity/MessageListFragment;->mTotalCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 4365
    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterCountText:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4366
    iget v5, p0, Lcom/android/email/activity/MessageListFragment;->mFooterTextId:I

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4367
    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getMeasuredWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterCountText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/email/activity/MessageListFragment;->mFooterTextPadding:I

    sub-int v4, v5, v6

    .line 4369
    .local v4, width:I
    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterProgress:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 4370
    sget v5, Lcom/android/email/activity/MessageListFragment;->sFooterProgressWidth:I

    sub-int/2addr v4, v5

    .line 4372
    :cond_0
    if-gtz v4, :cond_2

    .line 4373
    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterText:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4383
    .end local v2           #footerTextBuf:Ljava/lang/StringBuffer;
    .end local v4           #width:I
    :cond_1
    :goto_0
    return-void

    .line 4375
    .restart local v2       #footerTextBuf:Ljava/lang/StringBuffer;
    .restart local v4       #width:I
    :cond_2
    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    int-to-float v6, v4

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v1, v5, v6, v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 4377
    .local v3, formattedStr:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterText:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4380
    .end local v2           #footerTextBuf:Ljava/lang/StringBuffer;
    .end local v3           #formattedStr:Ljava/lang/CharSequence;
    .end local v4           #width:I
    :catch_0
    move-exception v0

    .line 4381
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public updateSelectionMode()V
    .locals 4

    .prologue
    .line 3671
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getSelectedCount()I

    move-result v1

    .line 3673
    .local v1, numSelected:I
    if-eqz v1, :cond_0

    :try_start_0
    iget-boolean v2, p0, Lcom/android/email/activity/MessageListFragment;->mIsVisible:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/email/activity/MessageListFragment;->mIsSending:Z

    if-eqz v2, :cond_1

    .line 3674
    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v2}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 3675
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v2}, Lcom/android/email/activity/MessagesAdapter;->getSelectedTitleSet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 3676
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v2}, Lcom/android/email/activity/MessagesAdapter;->unCheckAllSubTitleCheckBox()V

    .line 3677
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 3678
    const/4 v2, 0x0

    sput v2, Lcom/android/email/activity/MessageListFragment;->sms_selected:I

    .line 3679
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->finishSelectionMode()V

    .line 3692
    :goto_0
    return-void

    .line 3682
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 3683
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->isInSelectionMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3684
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->updateSelectionModeView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3689
    :catch_0
    move-exception v0

    .line 3690
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 3686
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    new-instance v2, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;-><init>(Lcom/android/email/activity/MessageListFragment;Lcom/android/email/activity/MessageListFragment$1;)V

    iput-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mLastSelectionModeCallback:Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;

    .line 3687
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mLastSelectionModeCallback:Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public useFlickDown(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 4884
    iput-boolean p1, p0, Lcom/android/email/activity/MessageListFragment;->mUseFlickDown:Z

    .line 4885
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->disableHeader()V

    .line 4886
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mUseFlickDown:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4887
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->bIsRefreshing:Z

    .line 4889
    :cond_0
    return-void
.end method

.method public useFlickUp(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 4897
    iput-boolean p1, p0, Lcom/android/email/activity/MessageListFragment;->mUseFlickUp:Z

    .line 4898
    return-void
.end method
