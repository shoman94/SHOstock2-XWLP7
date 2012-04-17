.class public abstract Lcom/android/email/activity/MessageViewFragmentBase;
.super Landroid/app/Fragment;
.source "MessageViewFragmentBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;,
        Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;,
        Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;,
        Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;,
        Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;,
        Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;,
        Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;,
        Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;,
        Lcom/android/email/activity/MessageViewFragmentBase$ItemView;,
        Lcom/android/email/activity/MessageViewFragmentBase$BGColorItem;,
        Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter;,
        Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;,
        Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter;,
        Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeItemView;,
        Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeItem;,
        Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeAdapter;,
        Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;,
        Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;,
        Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;,
        Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;,
        Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;,
        Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;,
        Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;,
        Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;,
        Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;,
        Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;,
        Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;,
        Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;,
        Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;,
        Lcom/android/email/activity/MessageViewFragmentBase$EmptyCallback;,
        Lcom/android/email/activity/MessageViewFragmentBase$Callback;,
        Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;,
        Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;
    }
.end annotation


# static fields
.field private static EMPTY_TEXT_CONTENT:Ljava/lang/String;

.field private static final IMG_TAG_START_REGEX:Ljava/util/regex/Pattern;

.field public static INSTANCE:Lcom/android/email/activity/MessageViewFragmentBase;

.field private static final OWN_WEB_URL:Ljava/util/regex/Pattern;

.field private static PREVIEW_ICON_HEIGHT:I

.field private static PREVIEW_ICON_WIDTH:I

.field public static SevenViewInstance:Lcom/android/email/activity/MessageViewForSeven;

.field private static final WEB_URL_PROTOCOL:Ljava/util/regex/Pattern;

.field private static final ZOOM_SCALE_ARRAY:[F

.field private static isMessageList:Z

.field private static mAttachmentCnt:I

.field private static mAttachmentCnt_saved:I

.field private static mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

.field public static mIsAttachAll:Z

.field public static mIsLaunchAttach:Z

.field private static mIsSms:Z

.field public static mLoadAttachmentId:J

.field public static mLoadMoreDialogCancelled:Z

.field public static mPMmanager:Lcom/android/email/ViewPatternMatching;

.field public static mProgressDialogShowing:Z

.field private static mRecipientList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;",
            ">;"
        }
    .end annotation
.end field

.field public static mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

.field private static mViewMaxWidth:I

.field private static message:Ljava/lang/String;

.field private static progress_pre:I

.field public static progress_rotated:Z

.field private static sAttachmentListOpen:Z

.field private static sRecipientOpen:Z

.field private static sSplitMoved:Z

.field public static smimeutils:Lcom/android/email/SMIMEHelperUtils;


# instance fields
.field public BgColorDialog:Landroid/app/AlertDialog;

.field public FromRetainedObject:Z

.field private final MaxListCountInToCc:I

.field public PREFERENCES_FILE:Ljava/lang/String;

.field private bSaveToCalendarIsText:Z

.field private dialogCancelled:Z

.field private downloadAttachmentAllTaskTaskReportInfo:Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;

.field private downloadManager:Landroid/app/DownloadManager;

.field private mAccountId:J

.field private mActivity:Landroid/app/Activity;

.field private mAllDownloadIcon:Landroid/widget/Button;

.field private mAlldownloadIconVisible:Z

.field private mAlreadySaveList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAttachmentCount:I

.field private mAttachmentListForZ7:[Lcom/android/emailcommon/provider/EmailContent$Attachment;

.field private mAttachmentTab:Landroid/widget/TextView;

.field private mAttachments:Landroid/widget/LinearLayout;

.field public mAttachmentsExpander:Landroid/widget/ImageButton;

.field private mAttachmentsHeaderInfo:Landroid/widget/TextView;

.field private mAttatchmentCount:I

.field private mBGColorAdapter:Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter;

.field private mBGColorCode:[I

.field private mBaseURL:Ljava/lang/String;

.field public mBgColor:I

.field private mBodyHtml:Ljava/lang/String;

.field private mBodyImageAttachmentId:[J

.field private mBodyImageCnt:I

.field private mBodyImageDownloadCnt:I

.field private mBodyText:Ljava/lang/String;

.field public mBtnMoreInformation:Landroid/widget/ImageButton;

.field private mCallback:Lcom/android/email/activity/MessageViewFragmentBase$Callback;

.field private mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

.field private mCcEmail:Ljava/lang/String;

.field private mCcMargin:Landroid/view/View;

.field private mCcText:Landroid/widget/TextView;

.field private mCclength:I

.field private mCheckSenderTask:Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;

.field private mClickedBubbleButton:Lcom/android/email/bubblebutton/BubbleButton;

.field private mColor:[Ljava/lang/String;

.field private mContactStatusLoaderCallbacks:Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;

.field protected mContext:Landroid/content/Context;

.field private mController:Lcom/android/email/Controller;

.field private mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/email/ControllerResultUiThreadWrapper",
            "<",
            "Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;",
            ">;"
        }
    .end annotation
.end field

.field private mCurColorCode:I

.field private mCurXPos:I

.field private mCurYPos:I

.field private mCurrentOrientation:I

.field private mCurrentTab:I

.field private mDateTimeView:Landroid/widget/TextView;

.field private mDownloadAttachmentAllTask:Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;

.field private mDownloadSmimeAttachment:Z

.field private mDownloadZ7AttForSave:Z

.field public mEmbeddedImageDownload:Z

.field private mEncryptionIcon:Landroid/widget/ImageView;

.field private mExpanderButton:Landroid/widget/ImageButton;

.field public mFavoriteIcon:Landroid/widget/ImageView;

.field private mFavoriteIconOff:Landroid/graphics/drawable/Drawable;

.field private mFavoriteIconOn:Landroid/graphics/drawable/Drawable;

.field private mFollowUpFlagClear:Landroid/graphics/drawable/Drawable;

.field private mFollowUpFlagComplete:Landroid/graphics/drawable/Drawable;

.field private mFollowUpFlagSet:Landroid/graphics/drawable/Drawable;

.field private mFontColorCode:[I

.field private mFontColorString:[Ljava/lang/String;

.field private mForwarded:Ljava/lang/Boolean;

.field public mForwarding:Z

.field private mFromBadge:Landroid/widget/ImageView;

.field private mFromBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

.field private mFromText:Landroid/widget/TextView;

.field private mGroupRange:[Ljava/lang/String;

.field private mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

.field private mHasCcList:Z

.field private mHasNoBody:Z

.field private mHasToList:Z

.field private mHtmlTextRaw:Ljava/lang/String;

.field private mHtmlTextWebView:Ljava/lang/String;

.field private mImageId:[I

.field protected mInviteLink:Landroid/widget/Button;

.field mInviteTab:Landroid/widget/TextView;

.field private mIsCachedSenderInfo:Z

.field protected mIsDestoryStart:Z

.field private mIsDragged:Z

.field protected mIsEMLView:Z

.field private mIsMessageLoadedForTest:Z

.field private mIsOpenedRecipientInfo:Z

.field private mIsPatternMatchingEnd:Z

.field private mLastVerbDateTimeLayout:Landroid/widget/LinearLayout;

.field private mLastVerbDateTimeView:Landroid/widget/TextView;

.field private mLayoutWidth:I

.field public mLinearLayoutAddress:Landroid/widget/LinearLayout;

.field private mLinearLayoutCreate_count:I

.field public mLinearlayoutAttachment:Landroid/widget/LinearLayout;

.field public mLinearlayoutContent:Landroid/widget/LinearLayout;

.field public mLinearlayoutTitle:Landroid/widget/LinearLayout;

.field public mLinearlayoutToTheTop:Landroid/widget/LinearLayout;

.field private mList:Landroid/widget/ListView;

.field private mLoadAttachmentName:Ljava/lang/String;

.field private mLoadAttachmentSave:Z

.field private mLoadAttachmentsTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;

.field private mLoadBodyTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

.field private mLoadEmbeddedAttachmentsTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;

.field private mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

.field private mLoadMoreDialog:Landroid/app/ProgressDialog;

.field private mLoadWhenResumed:Z

.field private mLoadingProgress:Landroid/view/View;

.field private mMailboxId:J

.field protected mMeetingDeleteEvent:Landroid/widget/Button;

.field protected mMeetingMaybe:Landroid/widget/CheckBox;

.field protected mMeetingNo:Landroid/widget/CheckBox;

.field protected mMeetingYes:Landroid/widget/CheckBox;

.field private mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

.field private mMessageId:J

.field private mMessageObserver:Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;

.field public mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

.field private mMessageTab:Landroid/widget/TextView;

.field private mMessageTypeIcon:Landroid/widget/ImageView;

.field private mMessageViewFragment:Landroid/view/View;

.field protected mMessageWebView:Lcom/android/email/activity/MessageWebView;

.field private mMoreMessage:Landroid/view/View;

.field public mMoreMessageHolder:Landroid/view/View;

.field private mNextPrevObserver:Landroid/database/ContentObserver;

.field public mNoSelectedEmail:Landroid/widget/LinearLayout;

.field public mOldBgColor:I

.field private mPatternMatchTask:Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;

.field private mPermission:Landroid/widget/ImageView;

.field private mPrevNextCursor:Landroid/database/Cursor;

.field private mPriorityIcon:Landroid/widget/ImageView;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field public mProgressDialog2:Landroid/app/ProgressDialog;

.field protected mProposeNewTime:Landroid/widget/CheckBox;

.field private mQuickContactLookupUri:Landroid/net/Uri;

.field private mRecipientRangeAdapter:Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeAdapter;

.field private mRelativeLayoutSaveall:Landroid/widget/RelativeLayout;

.field private mRelativelayoutAttachmentsHeader:Landroid/widget/RelativeLayout;

.field private mReloadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;

.field protected mResponseOptionsLayout:Landroid/widget/LinearLayout;

.field private mResumed:Z

.field private mSMIMEUtilsCallback:Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;

.field private mSaveToCalendarHtmlText:Ljava/lang/String;

.field public mScrollviewInvite:Landroid/widget/ScrollView;

.field private mSignIcon:Landroid/widget/ImageView;

.field mSmimeDialog:Landroid/app/ProgressDialog;

.field public mSmimeHandlerTask:Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;

.field private mSortType:I

.field private mStartX:F

.field private mStartY:F

.field private mSubjectView:Landroid/widget/TextView;

.field private mTabFlags:I

.field private mTabSection:Landroid/view/View;

.field private mText1:Ljava/lang/String;

.field private mTextAnimation:Landroid/view/animation/Animation;

.field private mTextAttachmentTab:Landroid/widget/TextView;

.field private mTextInviteTab:Landroid/widget/TextView;

.field private mTextMessageTab:Landroid/widget/TextView;

.field private mToBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

.field private mToButtonWidth:I

.field private mToEmail:Ljava/lang/String;

.field private mToMargin:Landroid/view/View;

.field private mToText:Landroid/widget/TextView;

.field private mToast:Landroid/widget/Toast;

.field private mTolength:I

.field mUserChoiceDialog:Landroid/app/AlertDialog;

.field private mWaitForLoadMessageId:J

.field private m_nAttachmnetMargin:I

.field public mbtnToTheTop:Landroid/widget/Button;

.field private moreMessageDialog:Landroid/app/AlertDialog;

.field policySet:Lcom/android/emailcommon/service/PolicySet;

.field public reqMemoReceiver:Landroid/content/BroadcastReceiver;

.field securityPolicy:Lcom/android/email/SecurityPolicy;

.field private senderInfoForPhotoImage:Ljava/lang/String;

.field private showingLoadMore:Z

.field private templateDescription:Landroid/widget/TextView;

.field private templateDescriptionLayout:Landroid/widget/LinearLayout;

.field versionDouble:Ljava/lang/Double;

.field private view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x3e

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 220
    const-string v0, "<(?i)img\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->IMG_TAG_START_REGEX:Ljava/util/regex/Pattern;

    .line 223
    const-string v0, "[hH][tT][tT][pP][sS]?://"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->WEB_URL_PROTOCOL:Ljava/util/regex/Pattern;

    .line 228
    sput-boolean v1, Lcom/android/email/activity/MessageViewFragmentBase;->mIsSms:Z

    .line 260
    const-string v0, "((?:([hH][tT][tT][pP][sS]?|[rR][tT][sS][pP]):\\/\\/(?:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,64}(?:\\:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,25})?\\@)?)?((?:(?:[a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef][a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef\\-]{0,64}\\.)+(?:(?:aero|arpa|asia|a[cdefgilmnoqrstuwxz])|(?:biz|b[abdefghijmnorstvwyz])|(?:cat|com|coop|c[acdfghiklmnoruvxyz])|d[ejkmoz]|(?:edu|e[cegrstu])|f[ijkmor]|(?:gov|g[abdefghilmnpqrstuwy])|h[kmnrtu]|(?:info|int|i[delmnoqrst])|(?:jobs|j[emop])|k[eghimnprwyz]|l[abcikrstuvy]|(?:mil|mobi|museum|m[acdeghklmnopqrstuvwxyz])|(?:name|net|n[acefgilopruz])|(?:org|om)|(?:pro|p[aefghklmnrstwy])|qa|r[eosuw]|s[abcdeghijklmnortuvyz]|(?:tel|travel|t[cdfghjklmnoprtvwz])|u[agksyz]|v[aceginu]|w[fs]|(?:\u03b4\u03bf\u03ba\u03b9\u03bc\u03ae|\u0438\u0441\u043f\u044b\u0442\u0430\u043d\u0438\u0435|\u0440\u0444|\u0441\u0440\u0431|\u05d8\u05e2\u05e1\u05d8|\u0622\u0632\u0645\u0627\u06cc\u0634\u06cc|\u0625\u062e\u062a\u0628\u0627\u0631|\u0627\u0644\u0627\u0631\u062f\u0646|\u0627\u0644\u062c\u0632\u0627\u0626\u0631|\u0627\u0644\u0633\u0639\u0648\u062f\u064a\u0629|\u0627\u0644\u0645\u063a\u0631\u0628|\u0627\u0645\u0627\u0631\u0627\u062a|\u0628\u06be\u0627\u0631\u062a|\u062a\u0648\u0646\u0633|\u0633\u0648\u0631\u064a\u0629|\u0641\u0644\u0633\u0637\u064a\u0646|\u0642\u0637\u0631|\u0645\u0635\u0631|\u092a\u0930\u0940\u0915\u094d\u0937\u093e|\u092d\u093e\u0930\u0924|\u09ad\u09be\u09b0\u09a4|\u0a2d\u0a3e\u0a30\u0a24|\u0aad\u0abe\u0ab0\u0aa4|\u0b87\u0ba8\u0bcd\u0ba4\u0bbf\u0baf\u0bbe|\u0b87\u0bb2\u0b99\u0bcd\u0b95\u0bc8|\u0b9a\u0bbf\u0b99\u0bcd\u0b95\u0baa\u0bcd\u0baa\u0bc2\u0bb0\u0bcd|\u0baa\u0bb0\u0bbf\u0b9f\u0bcd\u0b9a\u0bc8|\u0c2d\u0c3e\u0c30\u0c24\u0c4d|\u0dbd\u0d82\u0d9a\u0dcf|\u0e44\u0e17\u0e22|\u30c6\u30b9\u30c8|\u4e2d\u56fd|\u4e2d\u570b|\u53f0\u6e7e|\u53f0\u7063|\u65b0\u52a0\u5761|\u6d4b\u8bd5|\u6e2c\u8a66|\u9999\u6e2f|\ud14c\uc2a4\ud2b8|\ud55c\uad6d|xn\\-\\-0zwm56d|xn\\-\\-11b5bs3a9aj6g|xn\\-\\-3e0b707e|xn\\-\\-45brj9c|xn\\-\\-80akhbyknj4f|xn\\-\\-90a3ac|xn\\-\\-9t4b11yi5a|xn\\-\\-clchc0ea0b2g2a9gcd|xn\\-\\-deba0ad|xn\\-\\-fiqs8s|xn\\-\\-fiqz9s|xn\\-\\-fpcrj9c3d|xn\\-\\-fzc2c9e2c|xn\\-\\-g6w251d|xn\\-\\-gecrj9c|xn\\-\\-h2brj9c|xn\\-\\-hgbk6aj7f53bba|xn\\-\\-hlcj6aya9esc7a|xn\\-\\-j6w193g|xn\\-\\-jxalpdlp|xn\\-\\-kgbechtv|xn\\-\\-kprw13d|xn\\-\\-kpry57d|xn\\-\\-lgbbat1ad8j|xn\\-\\-mgbaam7a8h|xn\\-\\-mgbayh7gpa|xn\\-\\-mgbbh1a71e|xn\\-\\-mgbc0a9azcg|xn\\-\\-mgberp4a5d4ar|xn\\-\\-o3cw4h|xn\\-\\-ogbpf8fl|xn\\-\\-p1ai|xn\\-\\-pgbs0dh|xn\\-\\-s9brj9c|xn\\-\\-wgbh1c|xn\\-\\-wgbl6a|xn\\-\\-xkc2al3hye2a|xn\\-\\-xkc2dl3a5ee0h|xn\\-\\-yfro4i67o|xn\\-\\-ygbi2ammx|xn\\-\\-zckzah|xxx)|y[et]|z[amw]))|(?:(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9])\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[0-9])))(?:\\:\\d{1,5})?)(?:(\\/|\\?)(?:(?:[a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef\\;\\/\\?\\:\\@\\&\\=\\#\\~\\-\\.\\+\\!\\*\\\'\\(\\)\\,\\_])|(?:\\%[a-fA-F0-9]{2}))*)?(?:\\b|$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->OWN_WEB_URL:Ljava/util/regex/Pattern;

    .line 291
    sput v3, Lcom/android/email/activity/MessageViewFragmentBase;->PREVIEW_ICON_WIDTH:I

    .line 293
    sput v3, Lcom/android/email/activity/MessageViewFragmentBase;->PREVIEW_ICON_HEIGHT:I

    .line 376
    new-instance v0, Lcom/android/email/ViewPatternMatching;

    invoke-direct {v0}, Lcom/android/email/ViewPatternMatching;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mPMmanager:Lcom/android/email/ViewPatternMatching;

    .line 482
    sput-object v2, Lcom/android/email/activity/MessageViewFragmentBase;->INSTANCE:Lcom/android/email/activity/MessageViewFragmentBase;

    .line 523
    const/4 v0, 0x5

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->ZOOM_SCALE_ARRAY:[F

    .line 8814
    sput-object v2, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    .line 8857
    const/4 v0, -0x1

    sput v0, Lcom/android/email/activity/MessageViewFragmentBase;->progress_pre:I

    .line 8862
    sput-object v2, Lcom/android/email/activity/MessageViewFragmentBase;->SevenViewInstance:Lcom/android/email/activity/MessageViewForSeven;

    .line 8866
    sput-boolean v1, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialogCancelled:Z

    .line 8872
    sput-boolean v1, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialogShowing:Z

    .line 8875
    sput-boolean v1, Lcom/android/email/activity/MessageViewFragmentBase;->mIsAttachAll:Z

    .line 8877
    sput v1, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCnt:I

    .line 8879
    sput v1, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCnt_saved:I

    .line 8889
    sput-object v2, Lcom/android/email/activity/MessageViewFragmentBase;->message:Ljava/lang/String;

    .line 8894
    sput-boolean v1, Lcom/android/email/activity/MessageViewFragmentBase;->isMessageList:Z

    .line 8896
    sput-boolean v1, Lcom/android/email/activity/MessageViewFragmentBase;->mIsLaunchAttach:Z

    .line 8901
    sput-boolean v1, Lcom/android/email/activity/MessageViewFragmentBase;->sAttachmentListOpen:Z

    .line 8925
    sput-boolean v1, Lcom/android/email/activity/MessageViewFragmentBase;->progress_rotated:Z

    .line 8954
    const-string v0, ""

    sput-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->EMPTY_TEXT_CONTENT:Ljava/lang/String;

    .line 8970
    sput-boolean v1, Lcom/android/email/activity/MessageViewFragmentBase;->sRecipientOpen:Z

    .line 8972
    sput-boolean v1, Lcom/android/email/activity/MessageViewFragmentBase;->sSplitMoved:Z

    .line 8985
    sput v1, Lcom/android/email/activity/MessageViewFragmentBase;->mViewMaxWidth:I

    return-void

    .line 523
    nop

    :array_0
    .array-data 0x4
        0xcdt 0xcct 0x4ct 0x3ft
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x9at 0x99t 0x99t 0x3ft
        0xcdt 0xcct 0xcct 0x3ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const-wide/16 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 182
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 185
    const-string v0, "AndroidMail.Main"

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->PREFERENCES_FILE:Ljava/lang/String;

    .line 321
    const-string v0, "2.5"

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->versionDouble:Ljava/lang/Double;

    .line 354
    iput-wide v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    .line 356
    iput-wide v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    .line 378
    iput v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurXPos:I

    iput v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurYPos:I

    .line 406
    iput v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mStartX:F

    .line 408
    iput v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mStartY:F

    .line 410
    iput-boolean v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsDragged:Z

    .line 437
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mColor:[Ljava/lang/String;

    .line 439
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mImageId:[I

    .line 507
    iput v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->m_nAttachmnetMargin:I

    .line 534
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->moreMessageDialog:Landroid/app/AlertDialog;

    .line 562
    iput-boolean v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDownloadZ7AttForSave:Z

    .line 566
    iput-boolean v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsEMLView:Z

    .line 568
    iput-boolean v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsDestoryStart:Z

    .line 570
    iput-boolean v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsPatternMatchingEnd:Z

    .line 572
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFontColorString:[Ljava/lang/String;

    .line 573
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFontColorCode:[I

    .line 574
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBGColorCode:[I

    .line 575
    iput v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurColorCode:I

    .line 577
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContactStatusLoaderCallbacks:Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;

    .line 578
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCheckSenderTask:Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;

    .line 580
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mGroupRange:[Ljava/lang/String;

    .line 588
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    .line 591
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearLayoutAddress:Landroid/widget/LinearLayout;

    .line 592
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBtnMoreInformation:Landroid/widget/ImageButton;

    .line 595
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    .line 601
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutContent:Landroid/widget/LinearLayout;

    .line 602
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    .line 603
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutToTheTop:Landroid/widget/LinearLayout;

    .line 604
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mbtnToTheTop:Landroid/widget/Button;

    .line 609
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mScrollviewInvite:Landroid/widget/ScrollView;

    .line 612
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutAttachment:Landroid/widget/LinearLayout;

    .line 688
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCallback:Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    .line 691
    iput-boolean v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->showingLoadMore:Z

    .line 6004
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$11;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageViewFragmentBase$11;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->reqMemoReceiver:Landroid/content/BroadcastReceiver;

    .line 8832
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    .line 8846
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentListForZ7:[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 8892
    iput-boolean v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->dialogCancelled:Z

    .line 8906
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurrentOrientation:I

    .line 8929
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToast:Landroid/widget/Toast;

    .line 8932
    iput-boolean v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mForwarding:Z

    .line 8934
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mForwarded:Ljava/lang/Boolean;

    .line 8943
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSMIMEUtilsCallback:Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;

    .line 8958
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mNextPrevObserver:Landroid/database/ContentObserver;

    .line 8967
    iput-boolean v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsCachedSenderInfo:Z

    .line 8977
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->MaxListCountInToCc:I

    .line 8983
    iput v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToButtonWidth:I

    .line 8989
    iput v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearLayoutCreate_count:I

    .line 9001
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mClickedBubbleButton:Lcom/android/email/bubblebutton/BubbleButton;

    .line 9015
    iput-boolean v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->FromRetainedObject:Z

    .line 9017
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBgColor:I

    .line 9019
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mOldBgColor:I

    .line 9028
    iput v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSortType:I

    .line 10395
    return-void

    .line 439
    :array_0
    .array-data 0x4
        0x1at 0x0t 0x2t 0x7ft
        0x17t 0x0t 0x2t 0x7ft
        0x18t 0x0t 0x2t 0x7ft
        0x19t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$1000(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$10000(Lcom/android/email/activity/MessageViewFragmentBase;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentListForZ7:[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    return-object v0
.end method

.method static synthetic access$10100(Lcom/android/email/activity/MessageViewFragmentBase;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttatchmentCount:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/email/activity/MessageViewFragmentBase;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mQuickContactLookupUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$10200(Lcom/android/email/activity/MessageViewFragmentBase;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDownloadZ7AttForSave:Z

    return v0
.end method

.method static synthetic access$10300(Lcom/android/email/activity/MessageViewFragmentBase;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->setMessageWebViewHeight()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAlreadySaveList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAlreadySaveList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/AttachmentInfo;)Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->checkBeforeViewAttachmentDownloadAll(Lcom/android/email/AttachmentInfo;)Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->onSaveAttachmentFromSaveAll(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/email/activity/MessageViewFragmentBase;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 182
    iget-wide v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    return-wide v0
.end method

.method static synthetic access$1502(Lcom/android/email/activity/MessageViewFragmentBase;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    iput-wide p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    return-wide p1
.end method

.method static synthetic access$1600(Lcom/android/email/activity/MessageViewFragmentBase;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 182
    iget-wide v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    return-wide v0
.end method

.method static synthetic access$1602(Lcom/android/email/activity/MessageViewFragmentBase;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    iput-wide p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    return-wide p1
.end method

.method static synthetic access$1700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/Controller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->showToast_checkBeforeViewAttachmentDownloadAll(Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromBadge:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDownloadAttachmentAllTask:Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;)Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDownloadAttachmentAllTask:Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/email/activity/MessageViewFragmentBase;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->onCancelDownloadAllAttachment()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$Callback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCallback:Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/email/activity/MessageViewFragmentBase;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    iput-wide p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMailboxId:J

    return-wide p1
.end method

.method static synthetic access$2400(Lcom/android/email/activity/MessageViewFragmentBase;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->onMarkAsRead(Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->changeLoadMoreBtnText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->EMPTY_TEXT_CONTENT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/email/activity/MessageViewFragmentBase;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->onMoreMessage()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCheckSenderTask:Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;)Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCheckSenderTask:Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContactStatusLoaderCallbacks:Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 182
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MessageViewFragmentBase;->reloadUiFromBody(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;)Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContactStatusLoaderCallbacks:Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadBodyTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;)Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadBodyTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBaseURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBaseURL:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mText1:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mText1:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadAttachmentsTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;)Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadAttachmentsTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPatternMatchTask:Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;)Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPatternMatchTask:Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;

    return-object p1
.end method

.method static synthetic access$3602(Lcom/android/email/activity/MessageViewFragmentBase;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    iput-boolean p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsMessageLoadedForTest:Z

    return p1
.end method

.method static synthetic access$3702(Lcom/android/email/activity/MessageViewFragmentBase;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    iput p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurXPos:I

    return p1
.end method

.method static synthetic access$3802(Lcom/android/email/activity/MessageViewFragmentBase;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    iput p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurYPos:I

    return p1
.end method

.method static synthetic access$3900(Lcom/android/email/activity/MessageViewFragmentBase;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsPatternMatchingEnd:Z

    return v0
.end method

.method static synthetic access$3902(Lcom/android/email/activity/MessageViewFragmentBase;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    iput-boolean p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsPatternMatchingEnd:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/android/email/activity/MessageViewFragmentBase;J)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->getPreviewIconById(J)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4302(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4400(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 182
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MessageViewFragmentBase;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/email/activity/MessageViewFragmentBase;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->setAttachmentCount(I)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/email/activity/MessageViewFragmentBase;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->arrangeAttachments(I)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/email/activity/MessageViewFragmentBase;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->controlTabFocus()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextWebView:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4802(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextWebView:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4900(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadEmbeddedAttachmentsTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;

    return-object v0
.end method

.method static synthetic access$4902(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;)Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadEmbeddedAttachmentsTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/email/activity/MessageViewFragmentBase;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->showContactStatusChangingLocale()V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/email/activity/MessageViewFragmentBase;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageCnt:I

    return v0
.end method

.method static synthetic access$5102(Lcom/android/email/activity/MessageViewFragmentBase;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    iput p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageCnt:I

    return p1
.end method

.method static synthetic access$5108(Lcom/android/email/activity/MessageViewFragmentBase;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 182
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageCnt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageCnt:I

    return v0
.end method

.method static synthetic access$5200(Lcom/android/email/activity/MessageViewFragmentBase;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageDownloadCnt:I

    return v0
.end method

.method static synthetic access$5202(Lcom/android/email/activity/MessageViewFragmentBase;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    iput p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageDownloadCnt:I

    return p1
.end method

.method static synthetic access$5208(Lcom/android/email/activity/MessageViewFragmentBase;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 182
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageDownloadCnt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageDownloadCnt:I

    return v0
.end method

.method static synthetic access$5300(Lcom/android/email/activity/MessageViewFragmentBase;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageAttachmentId:[J

    return-object v0
.end method

.method static synthetic access$5302(Lcom/android/email/activity/MessageViewFragmentBase;[J)[J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageAttachmentId:[J

    return-object p1
.end method

.method static synthetic access$5400(Lcom/android/email/activity/MessageViewFragmentBase;J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->findAttachmentInfo(J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/ControllerResultUiThreadWrapper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->templateDescriptionLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/email/activity/MessageViewFragmentBase;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTolength:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/email/activity/MessageViewFragmentBase;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->onClickSender()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6000(Lcom/android/email/activity/MessageViewFragmentBase;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCclength:I

    return v0
.end method

.method static synthetic access$6100(Lcom/android/email/activity/MessageViewFragmentBase;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 182
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/activity/MessageViewFragmentBase;->showRecipientList(IIII)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$6300()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mRecipientList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/android/email/activity/MessageViewFragmentBase;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurColorCode:I

    return v0
.end method

.method static synthetic access$6500(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mExpanderButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/email/activity/MessageViewFragmentBase;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->startMediaScan(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToMargin:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$7100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcMargin:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/android/email/activity/MessageViewFragmentBase;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->cancelAllTasks()V

    return-void
.end method

.method static synthetic access$7300(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    return-object v0
.end method

.method static synthetic access$7302(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;)Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    return-object p1
.end method

.method static synthetic access$7400(Lcom/android/email/activity/MessageViewFragmentBase;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 182
    iget-wide v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mWaitForLoadMessageId:J

    return-wide v0
.end method

.method static synthetic access$7402(Lcom/android/email/activity/MessageViewFragmentBase;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    iput-wide p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mWaitForLoadMessageId:J

    return-wide p1
.end method

.method static synthetic access$7500(Landroid/os/AsyncTask;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 182
    invoke-static {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->cancelTask(Landroid/os/AsyncTask;)V

    return-void
.end method

.method static synthetic access$7600(Lcom/android/email/activity/MessageViewFragmentBase;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->updateAttachmentThumbnail(J)V

    return-void
.end method

.method static synthetic access$7700(Lcom/android/email/activity/MessageViewFragmentBase;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDownloadSmimeAttachment:Z

    return v0
.end method

.method static synthetic access$7702(Lcom/android/email/activity/MessageViewFragmentBase;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    iput-boolean p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDownloadSmimeAttachment:Z

    return p1
.end method

.method static synthetic access$7800(Lcom/android/email/activity/MessageViewFragmentBase;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->doFinishLoadAttachment(J)V

    return-void
.end method

.method static synthetic access$7900(Lcom/android/email/activity/MessageViewFragmentBase;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->reloadUiFromBodyFromAttachmentCB(J)V

    return-void
.end method

.method static synthetic access$8000(Lcom/android/email/activity/MessageViewFragmentBase;JZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 182
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MessageViewFragmentBase;->doFinishLoadAttachment(JZ)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;)Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->downloadAttachmentAllTaskTaskReportInfo:Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;

    return-object p1
.end method

.method static synthetic access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$8102(Lcom/android/email/activity/MessageViewFragmentBase;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$8200(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mReloadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;

    return-object v0
.end method

.method static synthetic access$8202(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;)Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mReloadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;

    return-object p1
.end method

.method static synthetic access$8500(Lcom/android/email/activity/MessageViewFragmentBase;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->actionReplyForReadReceipt(J)V

    return-void
.end method

.method static synthetic access$8600(Lcom/android/email/activity/MessageViewFragmentBase;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 182
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->showToast(II)V

    return-void
.end method

.method static synthetic access$8700(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToEmail:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8800(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcEmail:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAllDownloadIcon:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$9102(Lcom/android/email/activity/MessageViewFragmentBase;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    iput-boolean p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadAttachmentSave:Z

    return p1
.end method

.method static synthetic access$9200(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadAttachmentName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9202(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadAttachmentName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$9300(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSMIMEUtilsCallback:Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;

    return-object v0
.end method

.method static synthetic access$9400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->message:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9402(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 182
    sput-object p0, Lcom/android/email/activity/MessageViewFragmentBase;->message:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$9502(Lcom/android/email/activity/MessageViewFragmentBase;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    iput-boolean p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->dialogCancelled:Z

    return p1
.end method

.method static synthetic access$9600()I
    .locals 1

    .prologue
    .line 182
    sget v0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCnt:I

    return v0
.end method

.method static synthetic access$9602(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 182
    sput p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCnt:I

    return p0
.end method

.method static synthetic access$9604()I
    .locals 1

    .prologue
    .line 182
    sget v0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCnt:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCnt:I

    return v0
.end method

.method static synthetic access$9608()I
    .locals 2

    .prologue
    .line 182
    sget v0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCnt:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCnt:I

    return v0
.end method

.method static synthetic access$9700()I
    .locals 1

    .prologue
    .line 182
    sget v0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCnt_saved:I

    return v0
.end method

.method static synthetic access$9708()I
    .locals 2

    .prologue
    .line 182
    sget v0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCnt_saved:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCnt_saved:I

    return v0
.end method

.method static synthetic access$9802(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 182
    sput p0, Lcom/android/email/activity/MessageViewFragmentBase;->progress_pre:I

    return p0
.end method

.method static synthetic access$9900(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->onCancelAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Z

    move-result v0

    return v0
.end method

.method private actionReplyForReadReceipt(J)V
    .locals 13
    .parameter

    .prologue
    const-wide/16 v11, 0x0

    const/4 v5, 0x4

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 10267
    cmp-long v0, p1, v11

    if-gez v0, :cond_0

    .line 10268
    const-string v0, "MessageViewFragmentBase >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "actionReplyForReadReceipt() : error! messageId == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 10393
    :goto_0
    return-void

    .line 10274
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 10276
    if-nez v0, :cond_1

    .line 10277
    const-string v0, "MessageViewFragmentBase >>"

    const-string v1, "actionReplyForReadReceipt() : error! message is not exist!"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10281
    :cond_1
    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 10283
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 10285
    new-instance v6, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {v6}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V

    .line 10293
    invoke-static {}, Lcom/android/emailcommon/utility/Utility;->generateMessageId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    .line 10295
    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    iput-wide v3, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 10297
    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    iput-object v3, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    .line 10299
    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    iput-object v3, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    .line 10301
    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    iput-object v3, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    .line 10303
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    .line 10305
    const-string v3, "Read: "

    iput-object v3, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 10307
    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 10308
    const-string v3, " "

    iput-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 10311
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v7, 0x7f0805e7

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 10313
    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    iput-object v3, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    .line 10314
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 10315
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v8, 0x7f0802ca

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ": "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 10316
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v8, 0x7f0805e8

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ": "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n\n\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 10319
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    .line 10320
    iput-object v9, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    .line 10322
    iput-object v9, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    .line 10323
    iput-object v9, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    .line 10325
    iput-object v9, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    .line 10326
    iput-wide v11, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J

    .line 10328
    iput-boolean v10, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    .line 10329
    iput-object v9, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    .line 10331
    iget v0, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit16 v0, v0, -0x801

    iput v0, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 10333
    iput-object v9, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mClientId:Ljava/lang/String;

    .line 10334
    iput-object v9, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mConversationId:Ljava/lang/String;

    .line 10338
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    .line 10340
    if-nez v0, :cond_3

    .line 10341
    const-string v0, "MessageViewFragmentBase >>"

    const-string v1, "actionReplyForReadReceipt() : Fatal error! controller.getInstance() returned null! It never be happened."

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 10347
    :cond_3
    const/4 v3, 0x3

    invoke-virtual {v0, v6, v3}, Lcom/android/email/Controller;->saveToMailbox(Lcom/android/emailcommon/provider/EmailContent$Message;I)V

    .line 10351
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 10353
    const-string v4, "textContent"

    iget-object v7, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10354
    const-string v4, "htmlContent"

    iget-object v7, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10355
    const-string v4, "textReply"

    iget-object v7, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10356
    const-string v4, "htmlReply"

    iget-object v7, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10357
    const-string v4, "introText"

    iget-object v7, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10358
    const-string v4, "sourceMessageKey"

    iget-wide v7, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 10360
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v7, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v7, v8, v3}, Lcom/android/emailcommon/provider/EmailContent$Body;->updateBodyWithMessageId(Landroid/content/Context;JLandroid/content/ContentValues;)V

    .line 10364
    :try_start_0
    iget-wide v3, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v7, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-virtual {v0, v3, v4, v7, v8}, Lcom/android/email/Controller;->sendMessage(JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10371
    :goto_1
    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->showSendingNotification_Start(Lcom/android/emailcommon/provider/EmailContent$Message;)V

    .line 10373
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2, v5}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v3

    .line 10374
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static/range {v0 .. v5}, Lcom/android/email/activity/MessageList;->actionHandleAccountIntent(Landroid/content/Context;JJI)Landroid/content/Intent;

    move-result-object v0

    .line 10376
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v1, v10, v0, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 10378
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-object v2, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/email/activity/MessageCompose;->showSendingNotificationByViewActivity(Landroid/content/Context;Ljava/lang/String;Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 10365
    :catch_0
    move-exception v0

    .line 10366
    const-string v0, "MessageViewFragmentBase >>"

    const-string v3, "Exception occur."

    invoke-static {v0, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/graphics/Bitmap;Z)V
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4725
    new-instance v7, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {v7, v0, p1, v1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;Lcom/android/email/activity/MessageViewFragmentBase$1;)V

    .line 4730
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 4731
    const v1, 0x7f040082

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 4738
    const v0, 0x7f1000dd

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4739
    const v1, 0x7f1001c7

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 4740
    const v2, 0x7f1001c6

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 4744
    const v3, 0x7f100029

    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 4745
    const v4, 0x7f10004f

    invoke-virtual {v8, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    .line 4746
    const v5, 0x7f1001c8

    invoke-virtual {v8, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    .line 4750
    iget-boolean v6, v7, Lcom/android/email/AttachmentInfo;->mOverMax:Z

    if-eqz v6, :cond_0

    .line 4751
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 4754
    :cond_0
    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v6, p1}, Lcom/android/emailcommon/utility/Utility;->attachmentExists(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4755
    const/4 v6, 0x1

    iput-boolean v6, v7, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->loaded:Z

    .line 4759
    :cond_1
    invoke-static {}, Lcom/android/emailcommon/utility/Utility;->isExternalStorageMounted()Z

    move-result v6

    if-nez v6, :cond_2

    .line 4760
    const/4 v6, 0x0

    iput-boolean v6, v7, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->enableSave:Z

    .line 4773
    :cond_2
    iput-object v3, v7, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->cancelButton:Landroid/widget/TextView;

    .line 4774
    iput-object v2, v7, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->iconView:Landroid/widget/ImageView;

    .line 4775
    iput-object v4, v7, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->progressView:Landroid/widget/ProgressBar;

    .line 4776
    iput-object v5, v7, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->saveiconView:Landroid/widget/ImageButton;

    .line 4777
    iput-object v0, v7, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->attachmentNameView:Landroid/widget/TextView;

    .line 4778
    iget-object v6, v7, Lcom/android/email/AttachmentInfo;->mName:Ljava/lang/String;

    .line 4779
    if-nez v6, :cond_3

    .line 4780
    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f0802fc

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 4784
    :cond_3
    iget-object v9, v7, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    if-eqz v9, :cond_1c

    iget-object v9, v7, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1c

    .line 4785
    const-string v9, "MessageViewFragmentBase >>"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "+++ attachment mime type : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 4788
    iget-object v9, v7, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "image/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 4789
    const v9, 0x7f02020a

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4878
    :goto_0
    iget-boolean v9, v7, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->enableSave:Z

    if-nez v9, :cond_1d

    .line 4880
    const/16 v2, 0x8

    invoke-virtual {v4, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4884
    const/16 v2, 0x8

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4956
    :cond_4
    :goto_1
    invoke-virtual {v8, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 4963
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4964
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 4966
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4967
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4968
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 4970
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v2, v7, Lcom/android/email/AttachmentInfo;->mSize:J

    long-to-float v2, v2

    invoke-static {v0, v2}, Lcom/android/email/EmailUtility;->formatSize(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4972
    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4973
    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 4974
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4975
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4978
    :goto_2
    return-void

    .line 4732
    :catch_0
    move-exception v0

    .line 4733
    const-string v0, "MessageViewFragmentBase >>"

    const-string v1, "addAttachment : getActivity() returns Null"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 4792
    :cond_5
    iget-object v9, v7, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "video/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 4793
    const v9, 0x7f020213

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 4796
    :cond_6
    iget-object v9, v7, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "audio/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 4797
    const v9, 0x7f02020e

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 4800
    :cond_7
    iget-object v9, v7, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    const-string v10, "application/aac"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 4801
    const v9, 0x7f02020e

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 4804
    :cond_8
    iget-object v9, v7, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    const-string v10, "application/pdf"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 4805
    const v9, 0x7f02020f

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 4808
    :cond_9
    iget-object v9, v7, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    const-string v10, "text/x-vcard"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 4809
    const v9, 0x7f0201fb

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 4812
    :cond_a
    iget-object v9, v7, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    const-string v10, "text/x-vcalendar"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 4813
    const v9, 0x7f0201f7

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 4816
    :cond_b
    iget-object v9, v7, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    const-string v10, "application/vnd.ms-powerpoint"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_c

    iget-object v9, v7, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    const-string v10, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 4819
    :cond_c
    const v9, 0x7f020210

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 4822
    :cond_d
    iget-object v9, v7, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    const-string v10, "application/msword"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_e

    iget-object v9, v7, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    const-string v10, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 4825
    :cond_e
    const v9, 0x7f0201fc

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 4828
    :cond_f
    iget-object v9, v7, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    const-string v10, "application/vnd.ms-excel"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_10

    iget-object v9, v7, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    const-string v10, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 4831
    :cond_10
    const v9, 0x7f020214

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 4832
    :cond_11
    if-eqz v6, :cond_1a

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1a

    .line 4833
    const-string v9, "MessageViewFragmentBase >>"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "+++ attachment file name : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 4836
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".gul"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 4837
    const v9, 0x7f02020b

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 4840
    :cond_12
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".htm"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_13

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".html"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 4842
    :cond_13
    const v9, 0x7f020208

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 4845
    :cond_14
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".eml"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 4846
    const v9, 0x7f0201fe

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 4849
    :cond_15
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".rtf"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 4850
    const v9, 0x7f020211

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 4853
    :cond_16
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".hwp"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 4854
    const v9, 0x7f020209

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 4857
    :cond_17
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".vnt"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 4858
    const v9, 0x7f02020c

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 4861
    :cond_18
    iget-object v9, v7, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    const-string v10, "text/plain"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_19

    .line 4862
    const v9, 0x7f020212

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 4864
    :cond_19
    const v9, 0x7f0201ff

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 4868
    :cond_1a
    iget-object v9, v7, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    const-string v10, "text/plain"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 4869
    const v9, 0x7f020212

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 4871
    :cond_1b
    const v9, 0x7f0201ff

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 4874
    :cond_1c
    const v9, 0x7f0201ff

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 4886
    :cond_1d
    iget-boolean v9, v7, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->loaded:Z

    if-eqz v9, :cond_23

    .line 4888
    iget v9, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v9, v9, 0x20

    if-eqz v9, :cond_1f

    .line 4889
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 4892
    const-string v9, "flags"

    iget v10, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v10, v10, -0x23

    iput v10, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4893
    iget-object v9, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v9, v2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 4895
    iget-wide v9, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v9, v10}, Lcom/android/email/service/AttachmentDownloadService;->isAttachmentQueued(J)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 4896
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4897
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 4899
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 4902
    :cond_1e
    const/16 v2, 0x8

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 4911
    :cond_1f
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4912
    const/16 v9, 0x64

    invoke-virtual {v4, v9}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 4913
    iget-boolean v4, v7, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->enableSave:Z

    if-eqz v4, :cond_20

    .line 4916
    :cond_20
    iget-boolean v4, v7, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->enableView:Z

    if-eqz v4, :cond_21

    .line 4920
    :cond_21
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4922
    if-eqz p3, :cond_22

    .line 4923
    invoke-direct {p0, v7}, Lcom/android/email/activity/MessageViewFragmentBase;->getPreviewIcon(Lcom/android/email/AttachmentInfo;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 4924
    if-eqz v4, :cond_4

    .line 4925
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    .line 4928
    :cond_22
    if-eqz p2, :cond_4

    .line 4929
    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    .line 4945
    :cond_23
    iget-wide v9, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v9, v10}, Lcom/android/email/service/AttachmentDownloadService;->isAttachmentQueued(J)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 4946
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4947
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 4949
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 4952
    :cond_24
    const/16 v2, 0x8

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private arrangeAttachments(I)V
    .locals 10
    .parameter

    .prologue
    const/4 v4, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1913
    if-lez p1, :cond_3

    .line 1914
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRelativelayoutAttachmentsHeader:Landroid/widget/RelativeLayout;

    if-le p1, v4, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1915
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRelativeLayoutSaveall:Landroid/widget/RelativeLayout;

    if-le p1, v4, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1917
    const-wide/16 v3, 0x0

    move-wide v8, v3

    move-wide v4, v8

    move v3, v1

    .line 1918
    :goto_2
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v3, v0, :cond_2

    .line 1919
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1920
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/AttachmentInfo;

    .line 1921
    iget-wide v6, v0, Lcom/android/email/AttachmentInfo;->mSize:J

    add-long/2addr v4, v6

    .line 1918
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_0
    move v0, v2

    .line 1914
    goto :goto_0

    :cond_1
    move v0, v2

    .line 1915
    goto :goto_1

    .line 1925
    :cond_2
    sget v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->MAX_ATTACHMENT_DOWNLOAD_SIZE:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-lez v0, :cond_4

    .line 1926
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAllDownloadIcon:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1930
    :goto_3
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentsHeaderInfo:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v3, 0x7f080302

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    long-to-float v3, v4

    invoke-static {v2, v3}, Lcom/android/email/EmailUtility;->formatSize(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1934
    :cond_3
    return-void

    .line 1928
    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAllDownloadIcon:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3
.end method

.method private cancelAllTasks()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1395
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageObserver:Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;->unregister()V

    .line 1396
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 1397
    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    .line 1398
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mReloadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 1399
    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mReloadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;

    .line 1400
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadBodyTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 1401
    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadBodyTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    .line 1402
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadAttachmentsTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 1403
    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadAttachmentsTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;

    .line 1404
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeHandlerTask:Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 1405
    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeHandlerTask:Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;

    .line 1406
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPatternMatchTask:Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 1407
    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPatternMatchTask:Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;

    .line 1410
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadEmbeddedAttachmentsTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 1411
    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadEmbeddedAttachmentsTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;

    .line 1415
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDownloadAttachmentAllTask:Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 1416
    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDownloadAttachmentAllTask:Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;

    .line 1418
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCheckSenderTask:Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 1419
    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCheckSenderTask:Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;

    .line 1421
    const-string v0, "Email"

    const-string v1, "cancelAllTasks"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    return-void
.end method

.method private static cancelTask(Landroid/os/AsyncTask;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 9095
    .local p0, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<***>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 9096
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 9098
    :cond_0
    return-void
.end method

.method private captureScreen()Ljava/lang/String;
    .locals 20

    .prologue
    .line 6311
    .line 6322
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "print_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v16

    .line 6324
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6325
    const-string v1, "MessageViewFragmentBase >>"

    const-string v2, "captureScreen : getDir() fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6326
    const/4 v1, 0x0

    .line 6528
    :goto_0
    return-object v1

    .line 6328
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageWebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v17

    .line 6330
    const/4 v2, 0x0

    .line 6331
    const/4 v1, 0x0

    .line 6332
    if-eqz v17, :cond_1

    .line 6333
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Picture;->getWidth()I

    move-result v2

    .line 6334
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Picture;->getHeight()I

    move-result v1

    .line 6337
    :cond_1
    const-string v3, "MessageViewFragmentBase >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "captureScreen : WebPage original size - Width:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Height:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6339
    if-lez v2, :cond_2

    if-gtz v1, :cond_3

    .line 6340
    :cond_2
    const-string v3, "MessageViewFragmentBase >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "captureScreen : Width or Height is too small - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6342
    const/4 v1, 0x0

    goto :goto_0

    .line 6344
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageWebView;->getScale()F

    move-result v5

    .line 6349
    const/high16 v3, 0x3f80

    cmpl-float v3, v5, v3

    if-lez v3, :cond_6

    .line 6350
    int-to-float v3, v1

    mul-float/2addr v3, v5

    float-to-int v4, v3

    .line 6351
    int-to-float v3, v2

    mul-float/2addr v3, v5

    float-to-int v3, v3

    .line 6352
    const-string v6, "MessageViewFragmentBase >>"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "captureScreen : WebPage scaled size - Width:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Height:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6354
    const/16 v6, 0x6a4

    if-gt v3, v6, :cond_4

    .line 6355
    const-string v1, "MessageViewFragmentBase >>"

    const-string v6, "captureScreen : X1.5"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6358
    const/4 v1, 0x1

    move/from16 v19, v3

    move v3, v4

    move v4, v1

    move/from16 v1, v19

    :goto_1
    move v8, v3

    move v9, v4

    .line 6379
    :goto_2
    const-string v3, "MessageViewFragmentBase >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "captureScreen : Print Image Type = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6380
    const/4 v3, 0x1

    if-ne v9, v3, :cond_9

    .line 6381
    const/16 v3, 0x2fa

    if-le v2, v3, :cond_8

    .line 6382
    const v2, 0x3fb718dc

    int-to-float v3, v1

    mul-float/2addr v2, v3

    float-to-int v2, v2

    move v10, v2

    .line 6393
    :goto_3
    const-string v2, "MessageViewFragmentBase >>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "captureScreen : Max Page size - Width:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Height:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6397
    :try_start_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v10, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 6407
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v8, :cond_13

    .line 6408
    new-instance v1, Landroid/graphics/Canvas;

    move-object/from16 v0, v18

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 6409
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 6410
    const/4 v3, -0x1

    if-ne v2, v3, :cond_e

    .line 6411
    const-string v12, "Sender : Samsung Electronics<sec@samsung.com>"

    .line 6412
    const-string v14, "Date : 2011-03-24 10:25 (GMT+09:00)"

    .line 6413
    const-string v15, "Title : final private float DEFAULT_SCALE_RATE = (float)1.5"

    .line 6417
    const/4 v3, 0x1

    .line 6423
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 6424
    const/high16 v2, -0x100

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 6425
    const/high16 v2, 0x41a0

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 6426
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 6429
    const/4 v2, 0x0

    move v11, v2

    move v13, v3

    move-object v2, v12

    .line 6431
    :goto_5
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v11, v3, :cond_b

    .line 6432
    const/4 v3, 0x1

    const v4, 0x443e8000

    const/4 v5, 0x0

    invoke-virtual {v7, v2, v3, v4, v5}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v4

    .line 6433
    const/4 v3, 0x0

    const/4 v5, 0x0

    mul-int/lit8 v6, v13, 0x1e

    int-to-float v6, v6

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 6435
    add-int/lit8 v5, v13, 0x1

    .line 6436
    add-int v3, v11, v4

    .line 6437
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v4, v6, :cond_16

    .line 6438
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v12, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move v11, v3

    move v13, v5

    goto :goto_5

    .line 6359
    :cond_4
    const/16 v3, 0x6a4

    if-gt v2, v3, :cond_5

    .line 6360
    const-string v3, "MessageViewFragmentBase >>"

    const-string v4, "captureScreen : X1.0"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6363
    const/4 v3, 0x2

    move v4, v3

    move v3, v1

    move v1, v2

    goto/16 :goto_1

    .line 6365
    :cond_5
    const-string v1, "MessageViewFragmentBase >>"

    const-string v2, "captureScreen : Too big image"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6366
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 6369
    :cond_6
    const/16 v3, 0x6a4

    if-gt v2, v3, :cond_7

    .line 6370
    const-string v3, "MessageViewFragmentBase >>"

    const-string v4, "captureScreen : X1.0"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6373
    const/4 v4, 0x2

    move v8, v1

    move v9, v4

    move v1, v2

    goto/16 :goto_2

    .line 6375
    :cond_7
    const-string v1, "MessageViewFragmentBase >>"

    const-string v2, "captureScreen : Too big image"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6376
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 6384
    :cond_8
    const v2, 0x44884000

    mul-float/2addr v2, v5

    float-to-int v2, v2

    move v10, v2

    goto/16 :goto_3

    .line 6387
    :cond_9
    const/16 v3, 0x2fa

    if-le v2, v3, :cond_a

    .line 6388
    const v2, 0x3fb718dc

    int-to-float v3, v1

    mul-float/2addr v2, v3

    float-to-int v2, v2

    move v10, v2

    goto/16 :goto_3

    .line 6390
    :cond_a
    const/16 v2, 0x442

    move v10, v2

    goto/16 :goto_3

    .line 6400
    :catch_0
    move-exception v1

    .line 6401
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v3, 0x7f0801bb

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 6403
    const-string v1, "MessageViewFragmentBase >>"

    const-string v2, "captureScreen : The page is too big to print"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6404
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 6442
    :cond_b
    const/4 v2, 0x0

    move v11, v2

    move-object v2, v14

    .line 6444
    :goto_6
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v11, v3, :cond_c

    .line 6445
    const/4 v3, 0x1

    const v4, 0x443e8000

    const/4 v5, 0x0

    invoke-virtual {v7, v2, v3, v4, v5}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v4

    .line 6446
    const/4 v3, 0x0

    const/4 v5, 0x0

    mul-int/lit8 v6, v13, 0x1e

    int-to-float v6, v6

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 6448
    add-int/lit8 v13, v13, 0x1

    .line 6449
    add-int v3, v11, v4

    .line 6450
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v4, v5, :cond_15

    .line 6451
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v14, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move v11, v3

    goto :goto_6

    .line 6456
    :cond_c
    const/4 v2, 0x0

    move v11, v2

    move-object v2, v15

    .line 6458
    :goto_7
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v11, v3, :cond_d

    .line 6459
    const/4 v3, 0x1

    const v4, 0x443e8000

    const/4 v5, 0x0

    invoke-virtual {v7, v2, v3, v4, v5}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v4

    .line 6460
    const/4 v3, 0x0

    const/4 v5, 0x0

    mul-int/lit8 v6, v13, 0x1e

    int-to-float v6, v6

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 6462
    add-int/lit8 v13, v13, 0x1

    .line 6463
    add-int v3, v11, v4

    .line 6464
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v4, v5, :cond_14

    .line 6465
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v15, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move v11, v3

    goto :goto_7

    .line 6469
    :cond_d
    mul-int/lit8 v2, v13, 0x1e

    neg-int v2, v2

    .line 6473
    :cond_e
    const/4 v3, 0x0

    neg-int v4, v2

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6475
    const/4 v3, 0x1

    if-ne v9, v3, :cond_11

    .line 6477
    const/high16 v3, 0x3fc0

    const/high16 v4, 0x3fc0

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 6478
    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    .line 6486
    :goto_8
    const/4 v1, 0x0

    .line 6487
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "page_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6489
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const/4 v5, 0x3

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 6491
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 6497
    :goto_9
    if-eqz v1, :cond_f

    .line 6498
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 6505
    :cond_f
    :goto_a
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6506
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 6507
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_12

    .line 6508
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6510
    invoke-virtual {v1, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 6519
    :cond_10
    :goto_b
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 6522
    const-wide/16 v3, 0x1

    :try_start_3
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 6407
    :goto_c
    add-int/2addr v2, v10

    goto/16 :goto_4

    .line 6480
    :cond_11
    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_8

    .line 6492
    :catch_1
    move-exception v4

    .line 6493
    const-string v4, "MessageViewFragmentBase >>"

    const-string v5, "captureScreen : FAILED to save bitmap"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 6501
    :catch_2
    move-exception v1

    .line 6502
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 6514
    :cond_12
    const-string v3, "MessageViewFragmentBase >>"

    const-string v4, "captureScreen : image file is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6515
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_b

    .line 6523
    :catch_3
    move-exception v1

    .line 6524
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_c

    .line 6528
    :cond_13
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_14
    move v11, v3

    goto/16 :goto_7

    :cond_15
    move v11, v3

    goto/16 :goto_6

    :cond_16
    move v11, v3

    move v13, v5

    goto/16 :goto_5
.end method

.method private changeLoadMoreBtnText(Ljava/lang/String;)V
    .locals 3
    .parameter "btnTitle"

    .prologue
    .line 11670
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMoreMessage:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    .line 11671
    .local v0, displayImage:Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 11672
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "jebarlin >>> Changing the Button Text >>>>>>>>>>>>>>>>>>>>>>>>>>>>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 11674
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 11676
    :cond_0
    return-void
.end method

.method private checkBeforeViewAttachment(Lcom/android/email/AttachmentInfo;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2443
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseRetrievesize()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2444
    iget-wide v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    invoke-static {v2, v3}, Lcom/android/email/adapter/ProtocolAdapter;->isPopAccount(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2445
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    .line 2446
    if-eqz v2, :cond_0

    iget v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    if-eq v2, v1, :cond_0

    .line 2447
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0805b7

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080042

    new-instance v3, Lcom/android/email/activity/MessageViewFragmentBase$3;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageViewFragmentBase$3;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2503
    :goto_0
    return v0

    .line 2468
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2473
    const v1, 0x7f08008d

    invoke-direct {p0, v1, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->showToast(II)V

    goto :goto_0

    .line 2480
    :cond_1
    sget-object v2, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v2, p1}, Lcom/android/email/activity/MessageViewForSeven;->canDownload(Lcom/android/email/AttachmentInfo;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-wide v2, p1, Lcom/android/email/AttachmentInfo;->mSize:J

    sget v4, Lcom/android/emailcommon/utility/AttachmentUtilities;->MAX_ATTACHMENT_DOWNLOAD_SIZE:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 2491
    :cond_3
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v2, 0x7f0802ff

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2497
    :cond_4
    iget-wide v2, p1, Lcom/android/email/AttachmentInfo;->mSize:J

    invoke-direct {p0, v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->isAvailableStorageSize(J)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2498
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v2, 0x7f080300

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 2503
    goto :goto_0
.end method

.method private checkBeforeViewAttachmentDownloadAll(Lcom/android/email/AttachmentInfo;)Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;
    .locals 3
    .parameter "attachment"

    .prologue
    .line 2508
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;->NO_ERROR:Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    .line 2510
    .local v0, retVal:Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseRetrievesize()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2511
    iget-wide v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    invoke-static {v1, v2}, Lcom/android/email/adapter/ProtocolAdapter;->isPopAccount(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2512
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;->ERROR_DOWNLOAD_NOT_CONPLETE:Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    .line 2517
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2518
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;->ERROR_EXTERNALSRORAGE:Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    .line 2522
    :cond_1
    iget-wide v1, p1, Lcom/android/email/AttachmentInfo;->mSize:J

    invoke-direct {p0, v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->isAvailableStorageSize(J)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2523
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;->ERROR_AVAILABLESTORAGESIZE:Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    .line 2526
    :cond_2
    return-object v0
.end method

.method private final clearTabFlags(I)V
    .locals 2
    .parameter "tabFlags"

    .prologue
    .line 1637
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->updateTabFlags(I)V

    .line 1638
    return-void
.end method

.method private controlTabFocus()V
    .locals 6

    .prologue
    const v5, 0x7f100201

    const v4, 0x7f1001ff

    const v3, 0x7f1001fd

    const v2, 0x7f1001f9

    const/4 v1, 0x1

    .line 1668
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabFlags:I

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_4

    move v0, v1

    .line 1669
    :goto_0
    if-ne v0, v1, :cond_b

    .line 1670
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabSection:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1671
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabSection:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 1673
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextMessageTab:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1674
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextMessageTab:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1675
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1676
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setNextFocusDownId(I)V

    .line 1679
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextInviteTab:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAttachmentTab:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1680
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextInviteTab:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1681
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextInviteTab:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1682
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextInviteTab:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setNextFocusLeftId(I)V

    .line 1683
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextMessageTab:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setNextFocusUpId(I)V

    .line 1685
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextMessageTab:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 1686
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextMessageTab:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setNextFocusRightId(I)V

    .line 1687
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextMessageTab:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setNextFocusUpId(I)V

    .line 1721
    :cond_3
    :goto_1
    return-void

    .line 1668
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 1689
    :cond_5
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextInviteTab:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAttachmentTab:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-ne v0, v1, :cond_7

    .line 1690
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAttachmentTab:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 1691
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAttachmentTab:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1692
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAttachmentTab:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setNextFocusLeftId(I)V

    .line 1693
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAttachmentTab:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setNextFocusUpId(I)V

    .line 1695
    :cond_6
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextMessageTab:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 1696
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextMessageTab:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setNextFocusRightId(I)V

    .line 1697
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextMessageTab:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setNextFocusUpId(I)V

    goto :goto_1

    .line 1699
    :cond_7
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextInviteTab:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAttachmentTab:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-ne v0, v1, :cond_a

    .line 1700
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextInviteTab:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    .line 1701
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextInviteTab:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1702
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAttachmentTab:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setNextFocusLeftId(I)V

    .line 1703
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextMessageTab:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setNextFocusRightId(I)V

    .line 1704
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAttachmentTab:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setNextFocusUpId(I)V

    .line 1706
    :cond_8
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAttachmentTab:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 1707
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAttachmentTab:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1708
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAttachmentTab:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setNextFocusLeftId(I)V

    .line 1709
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAttachmentTab:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setNextFocusUpId(I)V

    .line 1711
    :cond_9
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextMessageTab:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 1712
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextMessageTab:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setNextFocusRightId(I)V

    .line 1713
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextMessageTab:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setNextFocusUpId(I)V

    goto :goto_1

    .line 1716
    :cond_a
    const-string v0, "MessageViewFragmentBase >>"

    const-string v1, "controlTabFocus : Can not reach here"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1719
    :cond_b
    const-string v0, "MessageViewFragmentBase >>"

    const-string v1, "controlTabFocus : Do nothing"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public static createUniqueFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 6913
    const/16 v0, 0x2f

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 6915
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6916
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6944
    :cond_0
    :goto_0
    return-object v0

    .line 6920
    :cond_1
    const/16 v0, 0x2e

    invoke-virtual {v3, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 6923
    const/4 v0, 0x2

    move v2, v0

    :goto_1
    const v0, 0x7fffffff

    if-ge v2, v0, :cond_5

    .line 6925
    const/4 v0, -0x1

    if-eq v4, v0, :cond_4

    .line 6926
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 6927
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 6928
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v1, :cond_2

    const-string v1, ""

    :cond_2
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "-"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v0, :cond_3

    const-string v0, ""

    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 6933
    :goto_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6940
    :goto_3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6923
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 6931
    :cond_4
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    .line 6934
    :catch_0
    move-exception v0

    .line 6935
    const-string v1, "Email"

    const-string v5, "createUniqueFile || Exception"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6936
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 6937
    new-instance v0, Ljava/io/File;

    const-string v1, "IllegalFormat-%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_3

    .line 6944
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private doFinishLoadAttachment(J)V
    .locals 1
    .parameter "attachmentId"

    .prologue
    .line 2767
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->doFinishLoadAttachment(JZ)V

    .line 2768
    return-void
.end method

.method private doFinishLoadAttachment(JZ)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 2771
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->findAttachmentInfo(J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    move-result-object v1

    .line 2772
    if-eqz v1, :cond_1

    .line 2773
    iput-boolean v0, v1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->loaded:Z

    .line 2778
    iget-boolean v2, v1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->enableSave:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/email/AttachmentInfo;->mName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2779
    :cond_0
    iget-boolean v2, v1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->enableView:Z

    .line 2787
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v4, v1, Lcom/android/email/AttachmentInfo;->mId:J

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v3

    .line 2788
    iget v4, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_2

    .line 2789
    :goto_0
    const-string v4, "Email"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doFinishLoadAttachment - isSave : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", showView : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2792
    iget v2, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_3

    .line 2793
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2796
    const-string v1, "flags"

    iget v2, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v2, v2, -0x63

    iput v2, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2797
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1, v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 2814
    :cond_1
    :goto_1
    return-void

    .line 2788
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 2800
    :cond_3
    if-nez v0, :cond_4

    if-eqz p3, :cond_5

    .line 2801
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->onSaveAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V

    goto :goto_1

    .line 2803
    :cond_5
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->onViewAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V

    goto :goto_1
.end method

.method private findAttachmentInfo(J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    .locals 2
    .parameter "attachmentId"

    .prologue
    .line 7861
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->findAttachmentView(J)Landroid/view/View;

    move-result-object v0

    .line 7862
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 7863
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    .line 7865
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private findAttachmentView(J)Landroid/view/View;
    .locals 6
    .parameter "attachmentId"

    .prologue
    .line 7850
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .local v1, count:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 7851
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7852
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    .line 7853
    .local v0, attachment:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    iget-wide v4, v0, Lcom/android/email/AttachmentInfo;->mId:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    .line 7857
    .end local v0           #attachment:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    .end local v3           #view:Landroid/view/View;
    :goto_1
    return-object v3

    .line 7850
    .restart local v0       #attachment:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    .restart local v3       #view:Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7857
    .end local v0           #attachment:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    .end local v3           #view:Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private formatDateTime(J)Ljava/lang/String;
    .locals 10
    .parameter

    .prologue
    .line 5447
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 5448
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 5449
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 5451
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1, v7}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 5452
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v6, 0x20010

    move-wide v2, p1

    move-wide v4, p1

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;

    .line 5455
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1, v8}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 5456
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    move-wide v2, p1

    move-wide v4, p1

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;

    .line 5458
    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 5459
    const-string v0, " "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5460
    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 5461
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPreviewIcon(Lcom/android/email/AttachmentInfo;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "attachment"

    .prologue
    .line 4641
    iget-wide v0, p1, Lcom/android/email/AttachmentInfo;->mId:J

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->getPreviewIconById(J)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getPreviewIconById(J)Landroid/graphics/Bitmap;
    .locals 7
    .parameter

    .prologue
    .line 4648
    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-wide v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    sget v4, Lcom/android/email/activity/MessageViewFragmentBase;->PREVIEW_ICON_WIDTH:I

    sget v5, Lcom/android/email/activity/MessageViewFragmentBase;->PREVIEW_ICON_HEIGHT:I

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentThumbnailUri(JJII)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 4653
    :goto_0
    return-object v0

    .line 4651
    :catch_0
    move-exception v0

    .line 4652
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attachment preview failed with exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4653
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getStorageSize(Ljava/io/File;)J
    .locals 8
    .parameter "filePath"

    .prologue
    .line 2411
    new-instance v6, Landroid/os/StatFs;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2412
    .local v6, stat:Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v4, v7

    .line 2414
    .local v4, blockSize:J
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v0, v7

    .line 2418
    .local v0, availableBlocks:J
    mul-long v2, v0, v4

    .line 2419
    .local v2, availableSpace:J
    return-wide v2
.end method

.method private hasInlineDataImage(JI)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f080511

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 11617
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyHtmlWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 11618
    if-nez v2, :cond_1

    .line 11643
    :cond_0
    :goto_0
    return v0

    .line 11623
    :cond_1
    if-ne p3, v5, :cond_2

    .line 11624
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->changeLoadMoreBtnText(Ljava/lang/String;)V

    move v0, v1

    .line 11625
    goto :goto_0

    .line 11626
    :cond_2
    if-eq p3, v1, :cond_0

    .line 11630
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v1, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    .line 11632
    iget-object v3, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    const-string v3, "2.5"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 11635
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->parseHtmlATag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11636
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->changeLoadMoreBtnText(Ljava/lang/String;)V

    .line 11638
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 11639
    const-string v2, "isMimeLoaded"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 11640
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 11641
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v1, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isAvailableStorageSize(J)Z
    .locals 9
    .parameter

    .prologue
    .line 2423
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 2424
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    .line 2425
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v2

    .line 2427
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->getStorageSize(Ljava/io/File;)J

    move-result-wide v3

    .line 2428
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->getStorageSize(Ljava/io/File;)J

    move-result-wide v0

    .line 2429
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->getStorageSize(Ljava/io/File;)J

    move-result-wide v5

    .line 2431
    cmp-long v2, v3, p1

    if-lez v2, :cond_0

    cmp-long v2, v0, p1

    if-lez v2, :cond_0

    cmp-long v2, v5, p1

    if-lez v2, :cond_0

    .line 2432
    const/4 v0, 0x1

    .line 2437
    :goto_0
    return v0

    .line 2434
    :cond_0
    const-string v2, "MessageViewFragmentBase >>"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isAvailableStorageSize error : attachsize=["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] externalSize=["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] dataSize=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] downloadSize=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 2437
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isVisible(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    const/4 v0, 0x0

    .line 1657
    if-nez p0, :cond_1

    .line 1660
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static makeVisible(Landroid/view/View;Z)V
    .locals 2
    .parameter "v"
    .parameter "visible"

    .prologue
    .line 1650
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 1651
    .local v0, visibility:I
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 1652
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1654
    :cond_0
    return-void

    .line 1650
    .end local v0           #visibility:I
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private onCancelAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Z
    .locals 8
    .parameter "attachmentInfo"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2615
    iget-wide v6, p1, Lcom/android/email/AttachmentInfo;->mId:J

    invoke-static {v6, v7}, Lcom/android/email/service/AttachmentDownloadService;->cancelQueuedAttachment(J)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2616
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseNewDownloadProgress()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2617
    invoke-static {v4}, Lcom/android/email/Controller;->SetAttachdownstop(Z)V

    .line 2622
    :cond_0
    iget-object v6, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->cancelButton:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2623
    iget-object v1, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->progressView:Landroid/widget/ProgressBar;

    .line 2624
    .local v1, bar:Landroid/widget/ProgressBar;
    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 2626
    iget-boolean v6, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->loaded:Z

    if-eqz v6, :cond_2

    .line 2627
    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2628
    const/16 v5, 0x64

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 2633
    :goto_0
    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v6, p1, Lcom/android/email/AttachmentInfo;->mId:J

    invoke-static {v5, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    .line 2635
    .local v0, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    iget v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_1

    .line 2636
    iget v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v5, v5, -0x21

    and-int/lit8 v3, v5, -0x3

    .line 2639
    .local v3, updateFlag:I
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2640
    .local v2, cv:Landroid/content/ContentValues;
    const-string v5, "flags"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2641
    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5, v2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 2647
    .end local v0           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v1           #bar:Landroid/widget/ProgressBar;
    .end local v2           #cv:Landroid/content/ContentValues;
    .end local v3           #updateFlag:I
    :cond_1
    :goto_1
    return v4

    .line 2630
    .restart local v1       #bar:Landroid/widget/ProgressBar;
    :cond_2
    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .end local v1           #bar:Landroid/widget/ProgressBar;
    :cond_3
    move v4, v5

    .line 2647
    goto :goto_1
.end method

.method private onCancelDownloadAllAttachment()V
    .locals 4

    .prologue
    .line 2652
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$6;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageViewFragmentBase$6;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->downloadAttachmentAllTaskTaskReportInfo:Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$6;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2758
    return-void
.end method

.method private onClickSender()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1996
    .line 1997
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mQuickContactLookupUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 1998
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromBadge:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mQuickContactLookupUri:Landroid/net/Uri;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V

    .line 2037
    :goto_0
    return v0

    .line 2021
    :cond_0
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/email/activity/ContactPreviewPopup;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2022
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2023
    const-string v3, "index"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2024
    const-string v0, "type"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2026
    const-string v0, "from"

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->senderInfoForPhotoImage:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2028
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 2029
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v3, 0x7011214

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_1
    move v0, v1

    .line 2034
    goto :goto_0

    .line 2032
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private onDownloadAttachmentAll()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 3026
    const-string v0, "Email"

    const-string v2, "onDownloadAttachmentAll"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3028
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseRetrievesize()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3029
    iget-wide v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    invoke-static {v2, v3}, Lcom/android/email/adapter/ProtocolAdapter;->isPopAccount(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3030
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    invoke-static {v0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 3031
    if-eqz v0, :cond_1

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    if-eq v0, v4, :cond_1

    .line 3032
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0805b7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080042

    new-instance v2, Lcom/android/email/activity/MessageViewFragmentBase$7;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageViewFragmentBase$7;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3135
    :cond_0
    :goto_0
    return-void

    .line 3051
    :cond_1
    iget-wide v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    invoke-static {v2, v3}, Lcom/android/email/adapter/ProtocolAdapter;->isSevenAccount(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3053
    sput-boolean v4, Lcom/android/email/activity/MessageViewFragmentBase;->mIsAttachAll:Z

    .line 3054
    sput v1, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCnt_saved:I

    .line 3055
    sput v1, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCnt:I

    .line 3056
    sput-boolean v4, Lcom/android/email/activity/MessageViewFragmentBase;->mIsLaunchAttach:Z

    .line 3060
    invoke-static {v1}, Lcom/android/email/Controller;->SetAttachdownstop(Z)V

    .line 3062
    sput-boolean v1, Lcom/android/email/activity/MessageViewFragmentBase;->progress_rotated:Z

    .line 3064
    const-string v0, "MessageViewFragmentBase >>"

    const-string v2, "btl : Premium account onDownloadAttachmentAll called!"

    invoke-static {v0, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3065
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttatchmentCount:I

    .line 3066
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttatchmentCount:I

    new-array v0, v0, [Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentListForZ7:[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 3067
    iput-boolean v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadAttachmentSave:Z

    .line 3068
    :goto_1
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttatchmentCount:I

    if-ge v1, v0, :cond_2

    .line 3069
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/AttachmentInfo;

    .line 3071
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v3, v0, Lcom/android/email/AttachmentInfo;->mId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    .line 3073
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentListForZ7:[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    aput-object v0, v2, v1

    .line 3068
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 3075
    :cond_2
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->initAttachmentDownloadForZ7()V

    goto :goto_0

    .line 3080
    :cond_3
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v0

    if-eqz v0, :cond_7

    move v2, v1

    .line 3081
    :goto_2
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 3082
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/AttachmentInfo;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->checkDPM_Attachments(Lcom/android/email/AttachmentInfo;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 3083
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->showDownloadITPolicyToast()V

    .line 3081
    :cond_4
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 3084
    :cond_5
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    if-nez v0, :cond_6

    .line 3085
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->showPop3ImapITPolicyToast()V

    goto :goto_3

    .line 3087
    :cond_6
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    .line 3089
    iget-boolean v3, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->bSaveAllDownload:Z

    if-nez v3, :cond_4

    .line 3090
    iput-boolean v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->bSaveAllDownload:Z

    .line 3091
    iput-boolean v1, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->bDownloadCompleted:Z

    .line 3092
    invoke-direct {p0, v0, v4}, Lcom/android/email/activity/MessageViewFragmentBase;->onLoadAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Z)V

    goto :goto_3

    .line 3097
    :cond_7
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->downloadAttachmentAllTaskTaskReportInfo:Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;

    .line 3099
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 3100
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    const v2, 0x7f08022a

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 3101
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 3102
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 3103
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    const v2, 0x7f080043

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/android/email/activity/MessageViewFragmentBase$8;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageViewFragmentBase$8;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/ProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 3112
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/android/email/activity/MessageViewFragmentBase$9;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageViewFragmentBase$9;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 3130
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;

    invoke-static {}, Lcom/android/email/service/AttachmentDownloadService;->CheckActiveNetwork()Z

    move-result v2

    invoke-direct {v0, p0, v2}, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Z)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDownloadAttachmentAllTask:Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;

    .line 3132
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDownloadAttachmentAllTask:Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;

    new-array v2, v4, [Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->downloadAttachmentAllTaskTaskReportInfo:Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method

.method private onLoadAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Z)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 2548
    iget-boolean v1, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->loaded:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/email/service/AttachmentDownloadService;->CheckActiveNetwork()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2549
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f08010e

    invoke-static {v0, v1}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/app/Activity;I)V

    .line 2611
    :cond_0
    :goto_0
    return-void

    .line 2555
    :cond_1
    iget-boolean v1, p1, Lcom/android/email/AttachmentInfo;->mOverMax:Z

    if-ne v1, v5, :cond_2

    .line 2556
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0802ff

    invoke-static {v0, v1, v5}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    goto :goto_0

    .line 2563
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->checkBeforeViewAttachment(Lcom/android/email/AttachmentInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2566
    invoke-static {}, Lcom/android/email/service/AttachmentDownloadService;->getQueueSize()I

    move-result v1

    if-nez v1, :cond_4

    .line 2571
    iget-object v1, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->cancelButton:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2573
    new-instance v1, Lcom/android/email/activity/MessageViewFragmentBase$5;

    invoke-direct {v1, p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$5;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V

    new-array v2, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2597
    :goto_1
    iget-wide v1, p1, Lcom/android/email/AttachmentInfo;->mId:J

    sput-wide v1, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadAttachmentId:J

    .line 2598
    const-string v1, "SMIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attachment ID :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v3, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadAttachmentId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2601
    iget-object v1, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->progressView:Landroid/widget/ProgressBar;

    .line 2602
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2603
    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 2605
    if-nez p2, :cond_5

    move v7, v0

    .line 2607
    :goto_2
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseNewDownloadProgress()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2608
    invoke-static {v0}, Lcom/android/email/Controller;->SetAttachdownstop(Z)V

    .line 2610
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    iget-wide v1, p1, Lcom/android/email/AttachmentInfo;->mId:J

    iget-wide v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    iget-wide v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/Controller;->loadAttachment(JJJI)V

    goto :goto_0

    .line 2593
    :cond_4
    iget-object v1, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->cancelButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 2605
    :cond_5
    const/16 v7, 0x20

    goto :goto_2
.end method

.method private onLoadMessageForView()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 3702
    const-string v0, "MessageViewFragmentBase >>"

    const-string v1, "onLoadMessageForView : entered"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3705
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-eqz v0, :cond_6

    .line 3706
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 3709
    :goto_0
    iget-wide v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    invoke-static {v1, v2}, Lcom/android/email/adapter/ProtocolAdapter;->isPopAccount(J)Z

    move-result v1

    .line 3710
    const-string v2, "MessageViewFragmentBase >>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bIsPop3Acc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3712
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->checkITPolicy_AllowPOPIMAP()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3713
    const-string v0, "MessageViewFragmentBase >>"

    const-string v1, "onLoadMessageForView : POPIMAP is not allowed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3745
    :cond_0
    :goto_1
    return-void

    .line 3714
    :cond_1
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_4

    .line 3716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<html><body><table width=\"100%\" height=\"100%\"><tr><td align=\"center\" valign=\"center\"><font>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v2, 0x7f0805b8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</font></td></tr></table></body></html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3721
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 3722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "email://onLoadMessageForView/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3726
    :goto_2
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseHistoryUrl()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3727
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/activity/MessageWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3724
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "email://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 3729
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/activity/MessageWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3735
    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-eqz v0, :cond_0

    .line 3736
    const/4 v0, 0x1

    if-ne v1, v0, :cond_5

    .line 3737
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->removeAllAttachments()V

    .line 3739
    :cond_5
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Controller;->loadMessageForView(J)V

    .line 3740
    iput-boolean v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->showingLoadMore:Z

    .line 3741
    invoke-virtual {p0, v6}, Lcom/android/email/activity/MessageViewFragmentBase;->showLoadMoreButton(Z)V

    .line 3742
    const-string v0, "MessageViewFragmentBase >>"

    const-string v1, "onLoadMessageForView : call controller.loadMessageForView"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_6
    move-object v0, v5

    goto/16 :goto_0
.end method

.method private onMarkAsRead(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 9113
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-boolean v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    if-eq v0, p1, :cond_0

    .line 9114
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iput-boolean p1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    .line 9115
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    iget-wide v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    invoke-virtual {v0, v2, v3, p1}, Lcom/android/email/Controller;->setMessageRead(JZ)V

    .line 9119
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMailboxId:J

    invoke-static {v0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v0

    .line 9120
    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 9122
    :cond_1
    const/4 v0, 0x0

    .line 9125
    :goto_0
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_2

    if-ne v0, v1, :cond_2

    .line 9126
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 9127
    const v1, 0x7f08026d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 9129
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0805e9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 9130
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 9132
    const v1, 0x7f080042

    new-instance v2, Lcom/android/email/activity/MessageViewFragmentBase$17;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageViewFragmentBase$17;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 9162
    const v1, 0x7f080043

    new-instance v2, Lcom/android/email/activity/MessageViewFragmentBase$18;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageViewFragmentBase$18;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 9168
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 9170
    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private onMoreMessage()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3693
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-eqz v0, :cond_0

    .line 3694
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Controller;->loadMore(J)V

    .line 3695
    iput-boolean v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->showingLoadMore:Z

    .line 3696
    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->showLoadMoreButton(Z)V

    .line 3697
    const-string v0, "SMIME"

    const-string v1, "SMIMEUtilsCallback::onMoreMessage()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3699
    :cond_0
    return-void
.end method

.method private onSaveAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V
    .locals 13
    .parameter

    .prologue
    .line 2101
    const/4 v1, 0x0

    .line 2102
    const/4 v0, 0x0

    .line 2104
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v3, p1, Lcom/android/email/AttachmentInfo;->mId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v11

    .line 2106
    invoke-static {}, Lcom/android/emailcommon/utility/Utility;->isExternalStorageMounted()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2111
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f08008d

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    .line 2114
    iget-boolean v0, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->bSaveAllDownload:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2115
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->bSaveAllDownload:Z

    .line 2119
    :cond_0
    iget v0, v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_1

    .line 2120
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2123
    const-string v1, "flags"

    iget v2, v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v2, v2, -0x23

    iput v2, v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2124
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v1, v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 2126
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 2127
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    .line 2129
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 2130
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->downloadAttachmentAllTaskTaskReportInfo:Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;

    .line 2242
    :cond_1
    :goto_0
    return-void

    .line 2138
    :cond_2
    iget-wide v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    iget-wide v4, v11, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3, v4, v5}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentUri(JJ)Landroid/net/Uri;

    move-result-object v3

    .line 2141
    :try_start_0
    const-string v4, "application/octet-stream"

    .line 2143
    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 2145
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 2146
    iget-object v2, v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 2147
    if-nez v2, :cond_3

    .line 2148
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0802fc

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2150
    :cond_3
    invoke-static {v5, v2}, Lcom/android/emailcommon/utility/Utility;->createUniqueFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 2152
    if-nez v5, :cond_7

    .line 2153
    const-string v3, "Email"

    const-string v4, "Utility.createUniqueFile - return null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FileName ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "]\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    .line 2157
    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4

    .line 2196
    :catch_0
    move-exception v2

    .line 2197
    :goto_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f08008d

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    .line 2199
    if-eqz v0, :cond_4

    .line 2201
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2205
    :cond_4
    :goto_2
    if-eqz v1, :cond_5

    .line 2207
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 2222
    :cond_5
    :goto_3
    iget-boolean v0, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->bSaveAllDownload:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 2223
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->bSaveAllDownload:Z

    .line 2227
    :cond_6
    iget v0, v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_1

    .line 2228
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2230
    const-string v1, "flags"

    iget v2, v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v2, v2, -0x23

    iput v2, v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2231
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v1, v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 2233
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 2234
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    .line 2236
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 2237
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2238
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->downloadAttachmentAllTaskTaskReportInfo:Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;

    goto/16 :goto_0

    .line 2160
    :cond_7
    :try_start_3
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/emailcommon/utility/AttachmentUtilities;->resolveAttachmentIdToContentUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 2162
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v10

    .line 2163
    :try_start_4
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_4

    .line 2166
    :try_start_5
    invoke-static {v10, v9}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v0

    int-to-long v6, v0

    .line 2167
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V

    .line 2168
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 2169
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 2171
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v2, 0x7f08008c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, "/"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 2177
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 2185
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-lez v0, :cond_5

    .line 2186
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->downloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v8, p1, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    if-eqz v8, :cond_8

    iget-object v8, p1, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_9

    :cond_8
    :goto_4
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x1

    invoke-virtual/range {v0 .. v8}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZ)J

    goto/16 :goto_3

    .line 2196
    :catch_1
    move-exception v0

    move-object v0, v9

    move-object v1, v10

    goto/16 :goto_1

    .line 2186
    :cond_9
    iget-object v4, p1, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_4

    .line 2202
    :catch_2
    move-exception v0

    .line 2203
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 2208
    :catch_3
    move-exception v0

    .line 2209
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 2211
    :catch_4
    move-exception v1

    move-object v9, v0

    .line 2212
    :goto_5
    const-string v0, "Email"

    const-string v1, "onCopyImage : NullPointerException"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2214
    if-eqz v9, :cond_5

    .line 2215
    :try_start_6
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_3

    .line 2217
    :catch_5
    move-exception v0

    .line 2218
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 2211
    :catch_6
    move-exception v0

    goto :goto_5

    .line 2196
    :catch_7
    move-exception v1

    move-object v1, v10

    goto/16 :goto_1
.end method

.method private onSaveAttachmentFromSaveAll(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Z
    .locals 12
    .parameter

    .prologue
    .line 2245
    const/4 v1, 0x0

    .line 2246
    const/4 v0, 0x0

    .line 2248
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v3, p1, Lcom/android/email/AttachmentInfo;->mId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v2

    .line 2250
    invoke-static {}, Lcom/android/emailcommon/utility/Utility;->isExternalStorageMounted()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2255
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f08008d

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    .line 2258
    iget-boolean v0, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->bSaveAllDownload:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2259
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->bSaveAllDownload:Z

    .line 2263
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 2264
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    .line 2266
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 2267
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2268
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->downloadAttachmentAllTaskTaskReportInfo:Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;

    .line 2271
    :cond_1
    const/4 v0, 0x0

    .line 2365
    :goto_0
    return v0

    .line 2274
    :cond_2
    iget-wide v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    iget-wide v5, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4, v5, v6}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentUri(JJ)Landroid/net/Uri;

    move-result-object v3

    .line 2277
    :try_start_0
    const-string v4, "application/octet-stream"

    .line 2279
    sget-object v5, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v5}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 2281
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 2282
    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-static {v5, v2}, Lcom/android/emailcommon/utility/Utility;->createUniqueFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 2283
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/emailcommon/utility/AttachmentUtilities;->resolveAttachmentIdToContentUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 2285
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v10

    .line 2286
    :try_start_1
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    .line 2289
    :try_start_2
    invoke-static {v10, v9}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v0

    int-to-long v6, v0

    .line 2290
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V

    .line 2291
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 2292
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 2294
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v2, 0x7f08008c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "/"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 2302
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAlreadySaveList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2310
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-lez v0, :cond_4

    .line 2311
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->downloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v8, p1, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    if-eqz v8, :cond_3

    iget-object v8, p1, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_7

    :cond_3
    :goto_1
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x1

    invoke-virtual/range {v0 .. v8}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZ)J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_5

    .line 2347
    :cond_4
    :goto_2
    iget-boolean v0, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->bSaveAllDownload:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 2348
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->bSaveAllDownload:Z

    .line 2352
    :cond_5
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_6

    .line 2353
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    .line 2355
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_6

    .line 2356
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2359
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->startMediaScan(Landroid/content/Context;)V

    .line 2361
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->downloadAttachmentAllTaskTaskReportInfo:Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;

    .line 2365
    :cond_6
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 2311
    :cond_7
    :try_start_3
    iget-object v4, p1, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_1

    .line 2321
    :catch_0
    move-exception v2

    .line 2322
    :goto_3
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f08008d

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    .line 2324
    if-eqz v0, :cond_8

    .line 2326
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 2330
    :cond_8
    :goto_4
    if-eqz v1, :cond_4

    .line 2332
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 2333
    :catch_1
    move-exception v0

    .line 2334
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 2327
    :catch_2
    move-exception v0

    .line 2328
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 2336
    :catch_3
    move-exception v1

    move-object v9, v0

    .line 2337
    :goto_5
    const-string v0, "Email"

    const-string v1, "onCopyImage : NullPointerException"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2339
    if-eqz v9, :cond_4

    .line 2340
    :try_start_6
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    .line 2342
    :catch_4
    move-exception v0

    .line 2343
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 2336
    :catch_5
    move-exception v0

    goto :goto_5

    .line 2321
    :catch_6
    move-exception v1

    move-object v1, v10

    goto :goto_3

    :catch_7
    move-exception v0

    move-object v0, v9

    move-object v1, v10

    goto :goto_3
.end method

.method private onShowDetails2()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x0

    .line 3182
    .line 3184
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsOpenedRecipientInfo:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsOpenedRecipientInfo:Z

    .line 3186
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsOpenedRecipientInfo:Z

    if-eqz v0, :cond_7

    .line 3188
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3189
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurColorCode:I

    if-ne v0, v6, :cond_3

    .line 3190
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mExpanderButton:Landroid/widget/ImageButton;

    const v2, 0x7f020261

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 3200
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAnimation:Landroid/view/animation/Animation;

    .line 3201
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAnimation:Landroid/view/animation/Animation;

    .line 3202
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 3204
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHasToList:Z

    if-eqz v0, :cond_0

    .line 3205
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 3206
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3207
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->setVisibility(I)V

    .line 3208
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToMargin:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3212
    :cond_0
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHasCcList:Z

    if-eqz v0, :cond_1

    .line 3213
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 3214
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3215
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->setVisibility(I)V

    .line 3216
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcMargin:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3221
    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHasToList:Z

    if-eqz v0, :cond_5

    .line 3222
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->getBubbleLayout()Landroid/widget/LinearLayout;

    move-result-object v2

    .line 3223
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    .line 3224
    invoke-static {v2}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->setLayoutAnim_slidedownfromtop(Landroid/view/ViewGroup;)V

    move v0, v1

    .line 3225
    :goto_2
    if-ge v0, v3, :cond_5

    .line 3226
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3225
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move v0, v1

    .line 3184
    goto :goto_0

    .line 3193
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mExpanderButton:Landroid/widget/ImageButton;

    const v2, 0x7f020260

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 3197
    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mExpanderButton:Landroid/widget/ImageButton;

    const v2, 0x7f02025b

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 3229
    :cond_5
    :try_start_1
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHasCcList:Z

    if-eqz v0, :cond_6

    .line 3230
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->getBubbleLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 3231
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 3232
    invoke-static {v0}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->setLayoutAnim_slidedownfromtop(Landroid/view/ViewGroup;)V

    .line 3233
    :goto_3
    if-ge v1, v2, :cond_6

    .line 3234
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3233
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 3236
    :catch_0
    move-exception v0

    .line 3237
    const-string v0, "MessageViewFragmentBase >>"

    const-string v1, "ArrayIndexOutOfBoundsException when set visible bubble button"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 3290
    :cond_6
    :goto_4
    return-void

    .line 3243
    :cond_7
    :try_start_2
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHasToList:Z

    if-eqz v0, :cond_8

    .line 3244
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->getBubbleLayout()Landroid/widget/LinearLayout;

    move-result-object v2

    .line 3245
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    move v0, v1

    .line 3247
    :goto_5
    if-ge v0, v3, :cond_8

    .line 3248
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3247
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 3251
    :cond_8
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHasCcList:Z

    if-eqz v0, :cond_9

    .line 3252
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->getBubbleLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 3253
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 3255
    :goto_6
    if-ge v1, v2, :cond_9

    .line 3256
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3255
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 3260
    :cond_9
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v0

    if-nez v0, :cond_c

    .line 3261
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurColorCode:I

    if-ne v0, v6, :cond_b

    .line 3262
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mExpanderButton:Landroid/widget/ImageButton;

    const v1, 0x7f02025f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 3273
    :goto_7
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHasToList:Z

    if-eqz v0, :cond_a

    .line 3274
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3275
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->setVisibility(I)V

    .line 3276
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToMargin:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3280
    :cond_a
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHasCcList:Z

    if-eqz v0, :cond_6

    .line 3281
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3282
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->setVisibility(I)V

    .line 3283
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcMargin:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 3286
    :catch_1
    move-exception v0

    .line 3287
    const-string v0, "MessageViewFragmentBase >>"

    const-string v1, "ArrayIndexOutOfBoundsException when set visible bubble button"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 3265
    :cond_b
    :try_start_3
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mExpanderButton:Landroid/widget/ImageButton;

    const v1, 0x7f02025e

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_7

    .line 3269
    :cond_c
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mExpanderButton:Landroid/widget/ImageButton;

    const v1, 0x7f02025a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_7
.end method

.method private onViewAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2384
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2385
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    if-eqz v0, :cond_0

    .line 2386
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->clearSelection()V

    .line 2387
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->clearActionModes()V

    .line 2389
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBlockNetworkLoads(Z)V

    .line 2391
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0, v1, v1}, Lcom/android/email/activity/MessageWebView;->scrollTo(II)V

    .line 2392
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->clearView()V

    .line 2399
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->getAttachmentIntentToFile(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 2401
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2406
    :goto_0
    return-void

    .line 2402
    :catch_0
    move-exception v0

    .line 2403
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0800bc

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    goto :goto_0
.end method

.method private parseHtmlATag(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    .line 11649
    const-string v1, "<IMG+.*?>"

    .line 11650
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jebarlin >>> Entering parseHtmlATag Length :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 11651
    const/4 v0, 0x0

    .line 11653
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 11654
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 11655
    :cond_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 11656
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "jebarlin >>> Body Contains IMG tag"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 11657
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 11658
    if-eqz v2, :cond_0

    .line 11659
    const-string v3, "SRC=\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11660
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "jebarlin >>> Body Contains IMG tag but not SRC"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 11661
    const/4 v0, 0x1

    .line 11666
    :cond_1
    return v0
.end method

.method private reloadUiFromBody(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5856
    .line 5857
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    .line 5860
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->bSaveToCalendarIsText:Z

    .line 5865
    const/4 v1, 0x0

    .line 5869
    if-nez p2, :cond_1

    .line 5870
    const-string v0, "abcdef"

    const-string v2, "plain text"

    invoke-static {v0, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 5874
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v0, "<html> <body> <div style=\"word-break:keep-all;\">"

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 5875
    if-eqz p1, :cond_6

    .line 5876
    invoke-static {p1}, Lcom/android/email/mail/internet/EmailHtmlUtil;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5878
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5879
    const-string v0, "</div></body></html>"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5880
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    move v11, v1

    move-object v1, v0

    move v0, v11

    .line 5900
    :goto_1
    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSaveToCalendarHtmlText:Ljava/lang/String;

    .line 5901
    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBaseURL:Ljava/lang/String;

    .line 5903
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    if-eqz v2, :cond_5

    .line 5904
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v4

    .line 5906
    const/4 v2, 0x0

    sput-object v2, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    .line 5907
    array-length v2, v4

    new-array v2, v2, [Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    sput-object v2, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    .line 5908
    const/4 v3, 0x0

    .line 5912
    array-length v5, v4

    const/4 v2, 0x0

    move v11, v2

    move-object v2, v1

    move v1, v3

    move v3, v11

    :goto_2
    if-ge v3, v5, :cond_3

    aget-object v6, v4, v3

    .line 5913
    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 5917
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v7, "\\s+(?i)src=\"cid(?-i):\\Q"

    invoke-direct {v2, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 5918
    iget-object v7, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "\\E\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5920
    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, " src=\""

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 5921
    iget-object v8, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const/16 v9, 0x22

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 5923
    const-string v8, "Email"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " contentIdRe :: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5924
    const-string v8, "Email"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " srcContentUri :: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5926
    iget-object v8, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    .line 5931
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 5932
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\\s+(?i)background=\"cid(?-i):\\Q"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\\E\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5934
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 5935
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " background=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5936
    iget-object v8, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v2, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    .line 5941
    sget-object v2, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    new-instance v7, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;-><init>(Lcom/android/email/activity/MessageViewFragmentBase$1;)V

    aput-object v7, v2, v1

    .line 5943
    sget-object v2, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    aget-object v2, v2, v1

    iget-object v7, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    iput-object v7, v2, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;->mContentUri:Ljava/lang/String;

    .line 5944
    sget-object v2, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    aget-object v2, v2, v1

    iget-object v6, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    iput-object v6, v2, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;->mFileName:Ljava/lang/String;

    .line 5945
    add-int/lit8 v1, v1, 0x1

    .line 5947
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    .line 5950
    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    const-string v7, "width=\"0\""

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    .line 5951
    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    const-string v7, "height=\"0\""

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    .line 5953
    const-string v6, "Email"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HANATHEONE mBodyImageInfo number: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5912
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 5887
    :cond_1
    const-string v0, "(?i)<meta name=\"viewport\"[^>]+>"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5888
    const-string v0, "contenteditable=\"true\""

    const-string v1, "contenteditable=\"false\""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5891
    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    .line 5893
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->IMG_TAG_START_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 5895
    if-nez p2, :cond_2

    const/4 v0, 0x1

    .line 5897
    :goto_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->bSaveToCalendarIsText:Z

    goto/16 :goto_1

    .line 5895
    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    .line 5958
    :cond_3
    if-nez p3, :cond_4

    .line 5959
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/email/activity/MessageWebView;->setPreserveZoom(Z)V

    .line 5971
    :cond_4
    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHasNoBody:Z

    .line 5972
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mText1:Ljava/lang/String;

    .line 5973
    iput-object p2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyHtml:Ljava/lang/String;

    .line 5974
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyText:Ljava/lang/String;

    .line 5996
    :goto_4
    return-object v2

    :cond_5
    move-object v2, v1

    goto :goto_4

    :cond_6
    move-object v0, p1

    goto/16 :goto_0
.end method

.method private reloadUiFromBodyFromAttachmentCB(J)V
    .locals 9
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 5468
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBaseURL:Ljava/lang/String;

    .line 5469
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextWebView:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    .line 5471
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    if-eqz v2, :cond_1

    .line 5472
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v3

    .line 5474
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5479
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "\\s+(?i)src=\"cid(?-i):\\Q"

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 5480
    iget-object v2, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, "\\E\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5482
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v4, " src=\""

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 5483
    iget-object v4, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const/16 v6, 0x22

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 5485
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    .line 5490
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 5491
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\\s+(?i)background=\"cid(?-i):\\Q"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\\E\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5494
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 5495
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " background=\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5497
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    .line 5499
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextWebView:Ljava/lang/String;

    .line 5503
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    const-string v2, "width=\"0\""

    const-string v4, ""

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    .line 5504
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    const-string v2, "height=\"0\""

    const-string v4, ""

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    .line 5506
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    .line 5517
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageAttachmentId:[J

    if-eqz v2, :cond_0

    .line 5518
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageAttachmentId:[J

    array-length v6, v4

    move v2, v1

    :goto_0
    if-ge v2, v6, :cond_0

    aget-wide v7, v4, v2

    .line 5521
    cmp-long v7, v7, p1

    if-nez v7, :cond_6

    .line 5522
    sget-object v2, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    array-length v4, v2

    if-ge v1, v4, :cond_0

    aget-object v2, v2, v1

    .line 5524
    if-nez v2, :cond_2

    .line 5525
    new-instance v1, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    invoke-direct {v1, v5}, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;-><init>(Lcom/android/email/activity/MessageViewFragmentBase$1;)V

    .line 5527
    iget-object v2, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;->mContentUri:Ljava/lang/String;

    .line 5528
    iget-object v2, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;->mFileName:Ljava/lang/String;

    .line 5529
    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageDownloadCnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageDownloadCnt:I

    .line 5623
    :cond_0
    :goto_1
    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBaseURL:Ljava/lang/String;

    .line 5625
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseHistoryUrl()Z

    move-result v0

    if-nez v0, :cond_7

    .line 5626
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "email://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBaseURL:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/activity/MessageWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5634
    :cond_1
    :goto_2
    return-void

    .line 5532
    :cond_2
    iget-object v4, v2, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;->mFileName:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v2, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;->mContentUri:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 5535
    iget-object v1, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    iput-object v1, v2, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;->mContentUri:Ljava/lang/String;

    .line 5536
    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageDownloadCnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageDownloadCnt:I

    goto :goto_1

    .line 5539
    :cond_3
    const-string v2, "Email"

    const-string v4, "This routine can not be run."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5540
    const-string v2, "Email"

    const-string v4, "If this log appeared, something wrong on the BodyImageInfo inst.!\n"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5542
    const-string v2, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "New attachment added (id = : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " )"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5544
    const-string v2, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "attachment.mContentUri : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5546
    const-string v2, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "attachment.mFileName : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5548
    sget-object v2, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    array-length v2, v2

    .line 5549
    add-int/lit8 v4, v2, 0x1

    new-array v4, v4, [Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    .line 5552
    :goto_3
    if-ge v1, v2, :cond_5

    .line 5553
    new-instance v6, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    invoke-direct {v6, v5}, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;-><init>(Lcom/android/email/activity/MessageViewFragmentBase$1;)V

    aput-object v6, v4, v1

    .line 5555
    sget-object v6, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    aget-object v6, v6, v1

    if-nez v6, :cond_4

    .line 5556
    sget-object v6, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    new-instance v7, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    invoke-direct {v7, v5}, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;-><init>(Lcom/android/email/activity/MessageViewFragmentBase$1;)V

    aput-object v7, v6, v1

    .line 5558
    :cond_4
    aget-object v6, v4, v1

    sget-object v7, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    aget-object v7, v7, v1

    iget-object v7, v7, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;->mContentUri:Ljava/lang/String;

    iput-object v7, v6, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;->mContentUri:Ljava/lang/String;

    .line 5559
    aget-object v6, v4, v1

    sget-object v7, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    aget-object v7, v7, v1

    iget-object v7, v7, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;->mFileName:Ljava/lang/String;

    iput-object v7, v6, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;->mFileName:Ljava/lang/String;

    .line 5561
    sget-object v6, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    aget-object v6, v6, v1

    iput-object v5, v6, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;->mContentUri:Ljava/lang/String;

    .line 5562
    sget-object v6, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    aget-object v6, v6, v1

    iput-object v5, v6, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;->mFileName:Ljava/lang/String;

    .line 5563
    sget-object v6, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    aput-object v5, v6, v1

    .line 5552
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 5565
    :cond_5
    sput-object v5, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    .line 5568
    new-instance v1, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    invoke-direct {v1, v5}, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;-><init>(Lcom/android/email/activity/MessageViewFragmentBase$1;)V

    aput-object v1, v4, v2

    .line 5569
    aget-object v1, v4, v2

    iget-object v6, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    iput-object v6, v1, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;->mContentUri:Ljava/lang/String;

    .line 5570
    aget-object v1, v4, v2

    iget-object v2, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;->mFileName:Ljava/lang/String;

    .line 5572
    sput-object v4, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    .line 5573
    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageDownloadCnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageDownloadCnt:I

    .line 5574
    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageCnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageCnt:I

    goto/16 :goto_1

    .line 5518
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 5629
    :cond_7
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "email://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBaseURL:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "email://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/activity/MessageWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private removeAllAttachments()V
    .locals 4

    .prologue
    .line 1494
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    .line 1495
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1496
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    .line 1497
    .local v0, attachmentInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    const/4 v0, 0x0

    .line 1498
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 1495
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1500
    .end local v0           #attachmentInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1502
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method private setAttachmentCount(I)V
    .locals 2
    .parameter "count"

    .prologue
    const/4 v1, 0x1

    .line 1641
    iput p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCount:I

    .line 1642
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCount:I

    if-lez v0, :cond_0

    .line 1643
    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->addTabFlags(I)V

    .line 1647
    :goto_0
    return-void

    .line 1645
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->clearTabFlags(I)V

    goto :goto_0
.end method

.method private setMessageWebViewHeight()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f80

    .line 7812
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    if-nez v4, :cond_1

    .line 7847
    :cond_0
    :goto_0
    return-void

    .line 7814
    :cond_1
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageWebView;->getContentHeight()I

    move-result v0

    .line 7815
    .local v0, contentHeight:I
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageWebView;->getScale()F

    move-result v3

    .line 7817
    .local v3, scale:F
    if-lez v0, :cond_3

    cmpl-float v4, v3, v5

    if-nez v4, :cond_3

    .line 7818
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v4, v3}, Lcom/android/email/activity/MessageWebView;->setInitScale(F)V

    .line 7820
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageWebView;->computeVerticalScrollRange()I

    move-result v4

    const/16 v5, 0xbe

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 7823
    .local v1, nHeight:I
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 7828
    .local v2, params:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v1, :cond_2

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v1, v4, :cond_2

    .line 7829
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 7830
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v4, v2}, Lcom/android/email/activity/MessageWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7833
    :cond_2
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v4, v0}, Lcom/android/email/activity/MessageWebView;->setEmailWebViewContentHeight(I)V

    goto :goto_0

    .line 7835
    .end local v1           #nHeight:I
    .end local v2           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    if-nez v0, :cond_4

    .line 7837
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->setMessageWebView()V

    goto :goto_0

    .line 7844
    :cond_4
    cmpl-float v4, v3, v5

    if-lez v4, :cond_0

    goto :goto_0
.end method

.method private setResponseOptions(I)V
    .locals 2
    .parameter

    .prologue
    .line 1772
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->view:Landroid/view/View;

    const v1, 0x7f1001d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1773
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1774
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingDeleteEvent:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 1775
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingYes:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 1776
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingNo:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 1777
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingMaybe:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 1778
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProposeNewTime:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 1779
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteLink:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 1780
    return-void
.end method

.method private setTabTextStyle(I)V
    .locals 8
    .parameter

    .prologue
    const v7, 0x7f1001d5

    const/4 v6, 0x3

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1794
    .line 1797
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 1798
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 1800
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1801
    const v1, 0x7f0b0039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 1802
    const v2, 0x7f0b003a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1804
    packed-switch p1, :pswitch_data_0

    .line 1909
    :cond_0
    :goto_0
    return-void

    .line 1806
    :pswitch_0
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTab:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1808
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTab:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1810
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1812
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1815
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1817
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1821
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurrentTab:I

    if-eq v0, p1, :cond_1

    .line 1822
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    invoke-virtual {v0, v4}, Lcom/android/email/winset/MessageScrollView;->setToMessageTab(Z)V

    .line 1825
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    invoke-virtual {v0, v4}, Lcom/android/email/winset/MessageScrollView;->setIsMessageTab(Z)V

    .line 1827
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutContent:Landroid/widget/LinearLayout;

    invoke-static {v0, v4}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 1828
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutAttachment:Landroid/widget/LinearLayout;

    invoke-static {v0, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 1829
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mScrollviewInvite:Landroid/widget/ScrollView;

    invoke-static {v0, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    goto :goto_0

    .line 1833
    :pswitch_1
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTab:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1835
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTab:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1838
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1840
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1842
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1844
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1847
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    invoke-virtual {v0, v3}, Lcom/android/email/winset/MessageScrollView;->setIsMessageTab(Z)V

    .line 1849
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutContent:Landroid/widget/LinearLayout;

    invoke-static {v0, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 1850
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutAttachment:Landroid/widget/LinearLayout;

    invoke-static {v0, v4}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 1851
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mScrollviewInvite:Landroid/widget/ScrollView;

    invoke-static {v0, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    goto :goto_0

    .line 1855
    :pswitch_2
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTab:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1857
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTab:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1860
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1862
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1865
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1867
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1869
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    invoke-virtual {v0, v3}, Lcom/android/email/winset/MessageScrollView;->setIsMessageTab(Z)V

    .line 1871
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutContent:Landroid/widget/LinearLayout;

    invoke-static {v0, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 1872
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutAttachment:Landroid/widget/LinearLayout;

    invoke-static {v0, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 1873
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mScrollviewInvite:Landroid/widget/ScrollView;

    invoke-static {v0, v4}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 1876
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurColorCode:I

    if-ne v0, v6, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFontColorCode:[I

    aget v0, v0, v6

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->setResponseOptions(I)V

    .line 1877
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 1878
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingDeleteEvent:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1885
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mResponseOptionsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1886
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->view:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1887
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1876
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFontColorCode:[I

    aget v0, v0, v3

    goto :goto_1

    .line 1889
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 1891
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingDeleteEvent:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1898
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mResponseOptionsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1899
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->view:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1900
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1804
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private showContactStatusChangingLocale()V
    .locals 3

    .prologue
    .line 11791
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0805bb

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    .line 11792
    return-void
.end method

.method private showRecipientList(IIII)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 7480
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 7483
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mRecipientList:Ljava/util/ArrayList;

    .line 7484
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v3, 0x7f0802d8

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 7485
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v4, 0x7f0802d9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 7486
    if-nez p4, :cond_0

    .line 7487
    new-instance v4, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;

    invoke-direct {v4, p0, v0, v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7488
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mRecipientList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    move v0, v1

    .line 7491
    :goto_0
    if-ge v0, p1, :cond_1

    .line 7493
    new-instance v4, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v5, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/android/emailcommon/mail/Address;->getPersonal()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v6, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v6

    aget-object v6, v6, v0

    invoke-virtual {v6}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7495
    sget-object v5, Lcom/android/email/activity/MessageViewFragmentBase;->mRecipientList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7491
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7499
    :cond_1
    if-nez p4, :cond_2

    if-lez p2, :cond_2

    .line 7500
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;

    invoke-direct {v0, p0, v3, v3, v1}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7501
    sget-object v3, Lcom/android/email/activity/MessageViewFragmentBase;->mRecipientList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    move v0, v1

    .line 7504
    :goto_1
    if-ge v0, p2, :cond_3

    .line 7506
    new-instance v3, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/emailcommon/mail/Address;->getPersonal()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v5, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5, v7}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7508
    sget-object v4, Lcom/android/email/activity/MessageViewFragmentBase;->mRecipientList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7504
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7510
    :cond_3
    const-string v3, "test"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "test3   "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mRecipientList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;->getPersonal()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7512
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f040094

    sget-object v4, Lcom/android/email/activity/MessageViewFragmentBase;->mRecipientList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v3, v4}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 7515
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7516
    invoke-virtual {v1, p3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 7518
    invoke-virtual {v1, v0, v8}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080042

    new-instance v3, Lcom/android/email/activity/MessageViewFragmentBase$15;

    invoke-direct {v3, p0, v2}, Lcom/android/email/activity/MessageViewFragmentBase$15;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080043

    invoke-virtual {v0, v1, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 7542
    return-void
.end method

.method private showToast(II)V
    .locals 1
    .parameter "resID"
    .parameter "duration"

    .prologue
    .line 9101
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 9102
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToast:Landroid/widget/Toast;

    .line 9109
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 9110
    return-void

    .line 9104
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 9105
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    .line 9106
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p2}, Landroid/widget/Toast;->setDuration(I)V

    goto :goto_0
.end method

.method private showToast_checkBeforeViewAttachmentDownloadAll(Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2530
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;->ERROR_EXTERNALSRORAGE:Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    if-ne p1, v0, :cond_1

    .line 2531
    const v0, 0x7f08008d

    invoke-direct {p0, v0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->showToast(II)V

    .line 2544
    :cond_0
    :goto_0
    return-void

    .line 2532
    :cond_1
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;->ERROR_AVAILABLESTORAGESIZE:Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    if-ne p1, v0, :cond_2

    .line 2533
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v1, 0x7f080300

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2535
    :cond_2
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseRetrievesize()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;->ERROR_DOWNLOAD_NOT_CONPLETE:Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    if-ne p1, v0, :cond_0

    .line 2537
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0805b7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080042

    new-instance v2, Lcom/android/email/activity/MessageViewFragmentBase$4;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageViewFragmentBase$4;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private startMediaScan(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 2369
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAlreadySaveList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 2370
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAlreadySaveList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x64

    if-le v2, v3, :cond_1

    .line 2371
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2373
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2381
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 2375
    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAlreadySaveList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    .line 2376
    .local v0, files:[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAlreadySaveList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2378
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v4, v4}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    goto :goto_0
.end method

.method private updateAttachmentThumbnail(J)V
    .locals 6
    .parameter "attachmentId"

    .prologue
    .line 4658
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .local v1, count:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 4659
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    .line 4661
    .local v0, attachment:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    iget-wide v4, v0, Lcom/android/email/AttachmentInfo;->mId:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_1

    .line 4662
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->getPreviewIcon(Lcom/android/email/AttachmentInfo;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 4663
    .local v3, previewIcon:Landroid/graphics/Bitmap;
    if-eqz v3, :cond_0

    .line 4664
    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4669
    .end local v0           #attachment:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    .end local v3           #previewIcon:Landroid/graphics/Bitmap;
    :cond_0
    return-void

    .line 4658
    .restart local v0       #attachment:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public ControlBgColor(IZ)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 6175
    const-string v0, "Email"

    const-string v1, "Change background color!!"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 6176
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    if-nez v0, :cond_1

    .line 6267
    :cond_0
    :goto_0
    return-void

    .line 6179
    :cond_1
    iput p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurColorCode:I

    .line 6181
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 6182
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBGColorCode:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageWebView;->setBackgroundColor(I)V

    .line 6183
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBGColorCode:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/android/email/winset/MessageScrollView;->setBackgroundColor(I)V

    .line 6184
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mScrollviewInvite:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBGColorCode:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 6185
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutAttachment:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBGColorCode:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 6186
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutContent:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBGColorCode:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 6187
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBGColorCode:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageWebView;->setBackgroundColor(I)V

    .line 6190
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMoreMessageHolder:Landroid/view/View;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBGColorCode:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 6200
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurrentTab:I

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->setTabTextStyle(I)V

    .line 6206
    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:(function() { document.getElementsByTagName(\'body\')[0].getElementsByTagName(\'div\')[0].style.color = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFontColorString:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "})()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageWebView;->loadUrl(Ljava/lang/String;)V

    .line 6210
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:(function() { document.getElementsByTagName(\'body\')[0].style.color = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFontColorString:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "})()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6222
    :goto_1
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->policySet:Lcom/android/emailcommon/service/PolicySet;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->policySet:Lcom/android/emailcommon/service/PolicySet;

    iget-boolean v0, v0, Lcom/android/emailcommon/service/PolicySet;->mAllowHTMLEmail:Z

    if-nez v0, :cond_2

    .line 6223
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->showHTMLITPolicyToast()V

    .line 6227
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBaseURL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->extractTextFromHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6228
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 6229
    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBaseURL:Ljava/lang/String;

    .line 6233
    :cond_2
    if-eqz p2, :cond_3

    .line 6234
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseHistoryUrl()Z

    move-result v0

    if-nez v0, :cond_4

    .line 6235
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "email://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBaseURL:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/activity/MessageWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6247
    :cond_3
    :goto_2
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6248
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurColorCode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 6249
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsOpenedRecipientInfo:Z

    if-eqz v0, :cond_5

    .line 6250
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mExpanderButton:Landroid/widget/ImageButton;

    const v1, 0x7f020261

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 6214
    :catch_0
    move-exception v0

    .line 6215
    const-string v0, "Email"

    const-string v1, "mMessageWebView.loadUrl()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 6238
    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "email://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBaseURL:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "email://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/activity/MessageWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 6253
    :cond_5
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mExpanderButton:Landroid/widget/ImageButton;

    const v1, 0x7f02025f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 6257
    :cond_6
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsOpenedRecipientInfo:Z

    if-eqz v0, :cond_7

    .line 6258
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mExpanderButton:Landroid/widget/ImageButton;

    const v1, 0x7f020260

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 6261
    :cond_7
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mExpanderButton:Landroid/widget/ImageButton;

    const v1, 0x7f02025e

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method

.method public ControlPrint()V
    .locals 3

    .prologue
    .line 6274
    const-string v0, "Email"

    const-string v1, "ControlPrint started!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6276
    const-string v0, "com.sec.android.app.mobileprint.PRINT"

    .line 6279
    const-string v0, "email_printing_image.png"

    .line 6282
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->captureScreen()Ljava/lang/String;

    move-result-object v0

    .line 6284
    if-nez v0, :cond_0

    .line 6285
    const-string v0, "MessageViewFragmentBase >>"

    const-string v1, "requestPrint : captureScreen() fail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6308
    :goto_0
    return-void

    .line 6288
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6289
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_2

    .line 6291
    :cond_1
    const-string v0, "MessageViewFragmentBase >>"

    const-string v1, "requestPrint : The captured image does not exist"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6295
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.mobileprint.PRINT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6297
    const-string v2, "android.intent.extra.STREAM"

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6299
    const-string v1, "android.intent.extra.TITLE"

    const-string v2, "Email"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6301
    const-string v1, "android.intent.extra.SUBJECT"

    const-string v2, "email_printing_image.png"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6304
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6305
    :catch_0
    move-exception v0

    .line 6306
    const-string v0, "MessageViewFragmentBase >>"

    const-string v1, "requestPrint : There is no Activity prints"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected IsEAS()Z
    .locals 2

    .prologue
    .line 3493
    iget-wide v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    invoke-static {v0, v1}, Lcom/android/email/adapter/ProtocolAdapter;->isExchangeAccount(J)Z

    move-result v0

    return v0
.end method

.method protected final addTabFlags(I)V
    .locals 4
    .parameter

    .prologue
    const v3, 0x7f1001fd

    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 1585
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabFlags:I

    .line 1587
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 1588
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTab:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1589
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1590
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1591
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTab:Landroid/widget/TextView;

    .line 1592
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;

    .line 1593
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    .line 1594
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v1, 0x7f1001fe

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTab:Landroid/widget/TextView;

    .line 1595
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v1, 0x7f100202

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;

    .line 1596
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v1, 0x7f1001ff

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    .line 1598
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTab:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1599
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1600
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1633
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabFlags:I

    or-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->updateTabFlags(I)V

    .line 1634
    return-void

    .line 1602
    :cond_1
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 1603
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTab:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1604
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1605
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1606
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTab:Landroid/widget/TextView;

    .line 1608
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    .line 1609
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v1, 0x7f100200

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    .line 1610
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTab:Landroid/widget/TextView;

    .line 1614
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTab:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1616
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1618
    :cond_2
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1619
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTab:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1620
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1621
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1622
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTab:Landroid/widget/TextView;

    .line 1623
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;

    .line 1625
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTab:Landroid/widget/TextView;

    .line 1626
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v1, 0x7f100201

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;

    .line 1628
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTab:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1629
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public changeBgColorDialog()Landroid/app/Dialog;
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v1, 0x0

    .line 7546
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 7547
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v3

    .line 7549
    const-string v0, "Email"

    const-string v4, "changeBgColorDialog enter!!"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7551
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 7553
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7554
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$BGColorItem;

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mColor:[Ljava/lang/String;

    aget-object v5, v5, v1

    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mImageId:[I

    aget v6, v6, v1

    invoke-direct {v0, p0, v5, v6}, Lcom/android/email/activity/MessageViewFragmentBase$BGColorItem;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;I)V

    .line 7555
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7556
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$BGColorItem;

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mColor:[Ljava/lang/String;

    aget-object v5, v5, v7

    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mImageId:[I

    aget v6, v6, v7

    invoke-direct {v0, p0, v5, v6}, Lcom/android/email/activity/MessageViewFragmentBase$BGColorItem;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;I)V

    .line 7557
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7565
    :cond_0
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter;

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v6, 0x7f04005f

    invoke-direct {v0, p0, v5, v6, v4}, Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBGColorAdapter:Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter;

    .line 7567
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7568
    const v0, 0x7f0801df

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 7570
    invoke-virtual {v3}, Lcom/android/email/Preferences;->getDPModeColor()I

    move-result v0

    .line 7571
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v2

    if-nez v2, :cond_3

    .line 7572
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 7573
    const/4 v1, 0x1

    .line 7578
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBGColorAdapter:Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter;

    new-instance v2, Lcom/android/email/activity/MessageViewFragmentBase$16;

    invoke-direct {v2, p0, v3}, Lcom/android/email/activity/MessageViewFragmentBase$16;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/Preferences;)V

    invoke-virtual {v4, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7598
    const v0, 0x7f080043

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7599
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->BgColorDialog:Landroid/app/AlertDialog;

    .line 7600
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->BgColorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mList:Landroid/widget/ListView;

    .line 7602
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->BgColorDialog:Landroid/app/AlertDialog;

    return-object v0

    :cond_2
    move v0, v1

    .line 7559
    :goto_1
    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mColor:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_0

    .line 7560
    new-instance v5, Lcom/android/email/activity/MessageViewFragmentBase$BGColorItem;

    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mColor:[Ljava/lang/String;

    aget-object v6, v6, v0

    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mImageId:[I

    aget v7, v7, v0

    invoke-direct {v5, p0, v6, v7}, Lcom/android/email/activity/MessageViewFragmentBase$BGColorItem;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;I)V

    .line 7561
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7559
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v1, v0

    goto :goto_0
.end method

.method public checkDPM_Attachments(Lcom/android/email/AttachmentInfo;)Z
    .locals 7
    .parameter

    .prologue
    .line 3449
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v1

    .line 3450
    const/4 v0, 0x0

    .line 3451
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 3452
    iget-wide v2, p1, Lcom/android/email/AttachmentInfo;->mAccountKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/email/SecurityPolicy;->getAccountPolicy(Ljava/lang/Long;)Lcom/android/emailcommon/service/PolicySet;

    move-result-object v0

    .line 3453
    :cond_0
    if-eqz v0, :cond_2

    .line 3454
    iget v1, v0, Lcom/android/emailcommon/service/PolicySet;->mMaxAttachmentSize:I

    int-to-long v1, v1

    .line 3455
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " before checkDPM_Attachments DPM.size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " attachment.size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p1, Lcom/android/email/AttachmentInfo;->mSize:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3457
    iget-boolean v0, v0, Lcom/android/emailcommon/service/PolicySet;->mAttachmentsEnabled:Z

    if-eqz v0, :cond_1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-lez v0, :cond_2

    iget-wide v3, p1, Lcom/android/email/AttachmentInfo;->mSize:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_2

    .line 3458
    :cond_1
    const-string v0, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkDPM_Attachments  DPM.size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " attachment.size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/email/AttachmentInfo;->mSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3460
    const/4 v0, 0x0

    .line 3463
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkITPolicy_AllowPOPIMAP()Z
    .locals 1

    .prologue
    .line 3467
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/SecurityPolicy;->IsAllowPOPIMAPEmailSetted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3470
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3471
    const/4 v0, 0x0

    .line 3474
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public clearContent()V
    .locals 0

    .prologue
    .line 1458
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->cancelAllTasks()V

    .line 1459
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->resetView()V

    .line 1460
    return-void
.end method

.method public clearIsMessageLoadedForTest()V
    .locals 1

    .prologue
    .line 8618
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsMessageLoadedForTest:Z

    .line 8619
    return-void
.end method

.method public closePrevNextCursor()V
    .locals 2

    .prologue
    .line 9266
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPrevNextCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 9267
    const-string v0, "MessageViewFragmentBase >>"

    const-string v1, "mPrevNextCuror is not null, close cursor and observer"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 9269
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mNextPrevObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 9270
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPrevNextCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mNextPrevObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 9272
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPrevNextCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 9273
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPrevNextCursor:Landroid/database/Cursor;

    .line 9275
    :cond_1
    return-void
.end method

.method public extractTextFromHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 6089
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 6090
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 6093
    if-nez p1, :cond_0

    .line 6094
    const-string v0, ""

    .line 6169
    :goto_0
    return-object v0

    .line 6096
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    .line 6104
    array-length v10, v9

    move v5, v1

    move v2, v1

    move v4, v1

    move v0, v1

    move v6, v1

    :goto_1
    if-ge v5, v10, :cond_9

    .line 6105
    aget-char v11, v9, v5

    .line 6107
    const/16 v12, 0x3c

    if-ne v11, v12, :cond_1

    move v0, v3

    .line 6111
    :cond_1
    if-nez v0, :cond_2

    if-nez v4, :cond_2

    if-nez v2, :cond_2

    .line 6112
    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 6115
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 6116
    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 6118
    const/16 v12, 0x9

    if-le v6, v12, :cond_3

    .line 6119
    invoke-virtual {v8, v1, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 6122
    :cond_3
    if-nez v4, :cond_4

    .line 6123
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    const-string v13, "<script"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_4

    move v4, v3

    .line 6128
    :cond_4
    if-eqz v4, :cond_5

    .line 6129
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    const-string v13, "</script>"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_5

    move v4, v1

    .line 6134
    :cond_5
    if-nez v2, :cond_6

    .line 6136
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    const-string v13, "<style"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_6

    move v2, v3

    .line 6144
    :cond_6
    if-eqz v2, :cond_7

    .line 6146
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    const-string v13, "</style>"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_7

    move v2, v1

    .line 6154
    :cond_7
    const/16 v12, 0x3e

    if-ne v11, v12, :cond_8

    move v0, v1

    .line 6104
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 6162
    :cond_9
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6164
    const-string v1, "&nbsp;"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6165
    const-string v1, "&lt;"

    const-string v2, "<"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6166
    const-string v1, "&gt;"

    const-string v2, ">"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6167
    const-string v1, "&#43;"

    const-string v2, "+"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public finishAttachmentDownloadForZ7(J)V
    .locals 2
    .parameter

    .prologue
    .line 9208
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    if-nez v0, :cond_0

    .line 9209
    const-string v0, "MessageViewFragmentBase >>"

    const-string v1, "finishAttachmentDownloadForZ7 : mHandler is null"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 9216
    :goto_0
    return-void

    .line 9212
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 9213
    const v1, 0x186a2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 9214
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 9215
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    invoke-virtual {v1, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public getAccountId()J
    .locals 2

    .prologue
    .line 1451
    iget-wide v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    return-wide v0
.end method

.method public getAlwaysDecryptOrVerifyMails()Z
    .locals 5

    .prologue
    .line 8630
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->PREFERENCES_FILE:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 8632
    .local v1, mSharedPreferences:Landroid/content/SharedPreferences;
    const-string v2, "isCheckSMIME"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 8633
    .local v0, always:Z
    return v0
.end method

.method public getContactProviderStatus()I
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 11795
    const/4 v7, 0x0

    .line 11796
    .local v7, providerStatus:I
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$ProviderStatus;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "status"

    aput-object v4, v2, v5

    const/4 v4, 0x1

    const-string v5, "data1"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 11800
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 11802
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11803
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 11806
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 11809
    :cond_1
    return v7

    .line 11806
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method protected final getController()Lcom/android/email/Controller;
    .locals 1

    .prologue
    .line 1431
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    return-object v0
.end method

.method protected final getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 1

    .prologue
    .line 1439
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    return-object v0
.end method

.method public getMessageWebView()Lcom/android/email/activity/MessageWebView;
    .locals 1

    .prologue
    .line 11816
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    return-object v0
.end method

.method public getRecipientlength()I
    .locals 4

    .prologue
    .line 9943
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-nez v3, :cond_1

    .line 9944
    const/4 v1, 0x0

    .line 9957
    :cond_0
    :goto_0
    return v1

    .line 9947
    :cond_1
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v2

    .line 9948
    .local v2, to:[Lcom/android/emailcommon/mail/Address;
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    .line 9950
    .local v0, cc:[Lcom/android/emailcommon/mail/Address;
    const/4 v1, 0x0

    .line 9951
    .local v1, length:I
    if-eqz v2, :cond_2

    .line 9952
    array-length v3, v2

    add-int/2addr v1, v3

    .line 9954
    :cond_2
    if-eqz v0, :cond_0

    .line 9955
    array-length v3, v0

    add-int/2addr v1, v3

    goto :goto_0
.end method

.method public initAttachmentDownloadForZ7()V
    .locals 4

    .prologue
    const v3, 0x186a0

    .line 9175
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 9178
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    if-nez v0, :cond_0

    .line 9179
    const-string v0, "MessageViewFragmentBase >>"

    const-string v1, "initAttachmentDownloadForZ7 : mHandler is null"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 9188
    :goto_0
    return-void

    .line 9182
    :cond_0
    const-string v0, "MessageViewFragmentBase >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "btl : initAttachmentDownloadForZ7 mAttachmentCnt "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 9183
    sget v0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCnt:I

    if-lez v0, :cond_1

    .line 9184
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 9186
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public isMessageLoadedForTest()Z
    .locals 1

    .prologue
    .line 8614
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsMessageLoadedForTest:Z

    return v0
.end method

.method protected final isMessageOpen()Z
    .locals 1

    .prologue
    .line 1443
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract isMessageSpecified()Z
.end method

.method public loadContentFromServer(Z)V
    .locals 7
    .parameter "loadAttachment"

    .prologue
    .line 9912
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    iget-wide v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageViewForSeven;->isPremiumUser(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9940
    :cond_0
    :goto_0
    return-void

    .line 9915
    :cond_1
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHasNoBody:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    iget-wide v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageViewForSeven;->isPremiumUser(J)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewForSeven;->isBodyDownloadInProgress()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v6, 0x1

    .line 9918
    .local v6, dontShow:Z
    :goto_1
    if-nez v6, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    if-eqz v0, :cond_2

    .line 9920
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    const-string v1, "email://"

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mText1:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/activity/MessageWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9924
    :cond_2
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    iget-wide v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageViewForSeven;->isPremiumUser(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9925
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyHtml:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    .line 9926
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyText:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    .line 9927
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewForSeven;->setBusyIndicator()V

    .line 9937
    :cond_3
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v0, :cond_0

    .line 9938
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewForSeven;->readMoreAction()V

    goto :goto_0

    .line 9915
    .end local v6           #dontShow:Z
    :cond_4
    const/4 v6, 0x0

    goto :goto_1
.end method

.method protected final loadMessageIfResumed()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1463
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mResumed:Z

    if-nez v0, :cond_0

    .line 1464
    iput-boolean v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadWhenResumed:Z

    .line 1476
    :goto_0
    return-void

    .line 1467
    :cond_0
    iput-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadWhenResumed:Z

    .line 1468
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->cancelAllTasks()V

    .line 1469
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->resetView()V

    .line 1472
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->INSTANCE:Lcom/android/email/activity/MessageViewFragmentBase;

    if-nez v0, :cond_1

    .line 1473
    sput-object p0, Lcom/android/email/activity/MessageViewFragmentBase;->INSTANCE:Lcom/android/email/activity/MessageViewFragmentBase;

    .line 1474
    :cond_1
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    invoke-direct {v0, p0, v2}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Z)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    .line 1475
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public messageChanged()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x100

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v11, 0x8

    const/4 v8, 0x0

    .line 10154
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 10155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MessageView: messageChanged to id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Email;->log(Ljava/lang/String;)V

    .line 10157
    :cond_0
    sput-boolean v8, Lcom/android/email/activity/MessageViewFragmentBase;->isMessageList:Z

    .line 10163
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->cancelAllTasks()V

    .line 10164
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->closePrevNextCursor()V

    .line 10166
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    if-eqz v0, :cond_1

    .line 10167
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    sget-object v1, Lcom/android/email/activity/MessageViewFragmentBase;->EMPTY_TEXT_CONTENT:Ljava/lang/String;

    const-string v2, "text/html"

    const-string v3, "utf-8"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/activity/MessageWebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10172
    :cond_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->removeAllAttachments()V

    .line 10174
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10187
    iput-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRelativelayoutAttachmentsHeader:Landroid/widget/RelativeLayout;

    .line 10188
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->view:Landroid/view/View;

    const v1, 0x7f100209

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRelativelayoutAttachmentsHeader:Landroid/widget/RelativeLayout;

    .line 10195
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRelativelayoutAttachmentsHeader:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 10199
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRelativeLayoutSaveall:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 10201
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAllDownloadIcon:Landroid/widget/Button;

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 10206
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    if-eqz v0, :cond_2

    .line 10207
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->cancelTask(Landroid/os/AsyncTask;)V

    .line 10208
    iput-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    .line 10210
    :cond_2
    iget-wide v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 10215
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 10216
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v9, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 10222
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 10223
    const-string v0, "messageType"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    and-long/2addr v2, v12

    cmp-long v0, v2, v12

    if-nez v0, :cond_5

    move v0, v7

    :goto_0
    sput-boolean v0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsSms:Z

    .line 10225
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "************** SMS is True ********"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/email/activity/MessageViewFragmentBase;->mIsSms:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 10237
    :goto_1
    if-eqz v1, :cond_3

    .line 10238
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 10246
    :cond_3
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    iget-wide v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    invoke-direct {v0, p0, v1, v2, v7}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;JZ)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    .line 10247
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    new-array v1, v8, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 10251
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMailboxId:J

    const/16 v3, 0x61

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/EmailUtility;->isMailboxType(Landroid/content/Context;JI)Z

    move-result v0

    .line 10253
    if-eqz v0, :cond_4

    .line 10254
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->view:Landroid/view/View;

    const v1, 0x7f1002df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 10255
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->view:Landroid/view/View;

    const v1, 0x7f1002de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 10257
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->view:Landroid/view/View;

    const v1, 0x7f10011a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 10258
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10263
    :cond_4
    return-void

    :cond_5
    move v0, v8

    .line 10223
    goto :goto_0

    .line 10230
    :cond_6
    :try_start_2
    const-string v0, "Email"

    const-string v2, "Exception on getting mMessageId"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10231
    const v0, 0x7f0800c4

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->showToast(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 10234
    :catch_0
    move-exception v0

    .line 10235
    :goto_3
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 10237
    if-eqz v1, :cond_3

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_4
    if-eqz v1, :cond_7

    .line 10238
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 10237
    :cond_7
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    .line 10234
    :catch_1
    move-exception v0

    move-object v1, v6

    goto :goto_3

    :cond_8
    move-object v1, v6

    goto :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 1098
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 1099
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    .line 1100
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 9227
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v0, :cond_0

    .line 9228
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/email/activity/MessageViewForSeven;->onActivityResult(IILandroid/content/Intent;)V

    .line 9229
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3296
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->isMessageOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3425
    :cond_0
    :goto_0
    return-void

    .line 3299
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 3374
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->onCancelAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Z

    goto :goto_0

    .line 3305
    :sswitch_1
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCheckSenderTask:Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;

    if-eqz v0, :cond_2

    .line 3306
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCheckSenderTask:Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;

    .line 3308
    :cond_2
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;

    invoke-direct {v0, p0, v2}, Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Z)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCheckSenderTask:Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;

    .line 3309
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCheckSenderTask:Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 3315
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/AttachmentInfo;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->checkDPM_Attachments(Lcom/android/email/AttachmentInfo;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3316
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->showDownloadITPolicyToast()V

    goto :goto_0

    .line 3318
    :cond_3
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3319
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->showPop3ImapITPolicyToast()V

    goto :goto_0

    .line 3323
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    .line 3324
    iput-boolean v1, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->bDownloadCompleted:Z

    .line 3325
    iput-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDownloadZ7AttForSave:Z

    .line 3326
    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->onLoadAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Z)V

    goto :goto_0

    .line 3331
    :sswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/AttachmentInfo;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->checkDPM_Attachments(Lcom/android/email/AttachmentInfo;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 3332
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->showDownloadITPolicyToast()V

    goto :goto_0

    .line 3334
    :cond_5
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    if-nez v0, :cond_6

    .line 3335
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->showPop3ImapITPolicyToast()V

    goto :goto_0

    .line 3339
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    .line 3340
    iput-boolean v1, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->bDownloadCompleted:Z

    .line 3341
    iput-boolean v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDownloadZ7AttForSave:Z

    .line 3342
    invoke-direct {p0, v0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->onLoadAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Z)V

    goto :goto_0

    .line 3347
    :sswitch_4
    iput-boolean v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDownloadZ7AttForSave:Z

    .line 3348
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->onDownloadAttachmentAll()V

    goto :goto_0

    .line 3351
    :sswitch_5
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3352
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3353
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRelativeLayoutSaveall:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3354
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentsExpander:Landroid/widget/ImageButton;

    const v1, 0x7f02025a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 3357
    :cond_7
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3358
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRelativeLayoutSaveall:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3359
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentsExpander:Landroid/widget/ImageButton;

    const v1, 0x7f02025b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 3378
    :sswitch_6
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->setCurrentTab(I)V

    .line 3380
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseRetrievesize()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3381
    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->showLoadMoreButton(Z)V

    goto/16 :goto_0

    .line 3383
    :cond_8
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3384
    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->showLoadMoreButton(Z)V

    goto/16 :goto_0

    .line 3390
    :sswitch_7
    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->showLoadMoreButton(Z)V

    .line 3391
    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->setCurrentTab(I)V

    goto/16 :goto_0

    .line 3396
    :sswitch_8
    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->showLoadMoreButton(Z)V

    .line 3397
    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->setCurrentTab(I)V

    goto/16 :goto_0

    .line 3406
    :sswitch_9
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->onShowDetails2()V

    goto/16 :goto_0

    .line 3410
    :sswitch_a
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseRetrievesize()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3411
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3412
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->onMoreMessage()V

    goto/16 :goto_0

    .line 3414
    :cond_9
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->onLoadMessageForView()V

    goto/16 :goto_0

    .line 3416
    :cond_a
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->onMoreMessage()V

    goto/16 :goto_0

    .line 3420
    :sswitch_b
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    invoke-virtual {v0, v1, v1}, Lcom/android/email/winset/MessageScrollView;->smoothScrollTo(II)V

    .line 3421
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    invoke-virtual {v0, v1}, Lcom/android/email/winset/MessageScrollView;->ShowToTheTopButton(Z)V

    goto/16 :goto_0

    .line 3299
    :sswitch_data_0
    .sparse-switch
        0x7f100029 -> :sswitch_0
        0x7f1000dd -> :sswitch_2
        0x7f1001c8 -> :sswitch_3
        0x7f1001e5 -> :sswitch_9
        0x7f1001e6 -> :sswitch_1
        0x7f1001fd -> :sswitch_6
        0x7f1001fe -> :sswitch_6
        0x7f1001ff -> :sswitch_7
        0x7f100200 -> :sswitch_7
        0x7f100201 -> :sswitch_8
        0x7f100202 -> :sswitch_8
        0x7f100206 -> :sswitch_a
        0x7f10020c -> :sswitch_5
        0x7f10020e -> :sswitch_4
        0x7f100211 -> :sswitch_b
    .end sparse-switch
.end method

.method public onClickAddressButton(Ljava/lang/String;Lcom/android/email/bubblebutton/BubbleButton;I)V
    .locals 0
    .parameter "addressStr"
    .parameter "bb"
    .parameter "type"

    .prologue
    .line 9547
    iput-object p2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mClickedBubbleButton:Lcom/android/email/bubblebutton/BubbleButton;

    .line 9561
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1271
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1273
    const-string v0, "MessageViewFragmentBase >>"

    const-string v1, "[HJP] onConfigurationChanged() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    const-string v0, "MessageViewFragmentBase >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HJP] newConfig.orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    const-string v0, "MessageViewFragmentBase >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HJP] ThreePaneLayout.getCurrentPaneState() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_1

    .line 1281
    const/16 v0, 0x13a

    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLayoutWidth:I

    .line 1286
    :goto_0
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLayoutWidth:I

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->setBubbleLayout(I)V

    .line 1288
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsPatternMatchingEnd:Z

    if-ne v0, v3, :cond_0

    .line 1289
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSearchString()Ljava/lang/String;

    move-result-object v1

    .line 1290
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1293
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1296
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    .line 1297
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 1298
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageWebView;->showFindDialog(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1307
    :cond_0
    :goto_1
    return-void

    .line 1283
    :cond_1
    const/16 v0, 0x270

    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLayoutWidth:I

    goto :goto_0

    .line 1300
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageWebView;->showFindDialog(Ljava/lang/String;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1302
    :catch_0
    move-exception v0

    .line 1303
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onCopyImage(Ljava/lang/String;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 6788
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCopyImage : Copy image - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6793
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/download/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6794
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6795
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eq v1, v3, :cond_0

    .line 6796
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 6799
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/download/copyImage.bmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 6804
    :try_start_0
    const-string v3, "http://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "https://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6805
    :cond_1
    new-instance v3, Ljava/net/URL;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 6806
    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    move-object v4, v3

    .line 6811
    :goto_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6813
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    .line 6814
    :try_start_1
    invoke-static {v4, v3}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 6815
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_7

    .line 6847
    :try_start_2
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 6848
    if-nez v2, :cond_5

    .line 6849
    const-string v2, "Email"

    const-string v4, "onCopyImage : : failed to decode the image file."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 6851
    if-eqz v3, :cond_2

    .line 6852
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 6898
    :cond_2
    :goto_1
    return v0

    .line 6807
    :cond_3
    :try_start_4
    const-string v3, "content://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 6808
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v3

    move-object v4, v3

    goto :goto_0

    .line 6817
    :catch_0
    move-exception v1

    move-object v1, v2

    .line 6818
    :goto_2
    const-string v2, "Email"

    const-string v3, "onCopyImage : IOException"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6820
    if-eqz v1, :cond_2

    .line 6821
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 6823
    :catch_1
    move-exception v1

    .line 6824
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 6827
    :catch_2
    move-exception v1

    .line 6828
    :goto_3
    const-string v1, "Email"

    const-string v3, "onCopyImage : NullPointerException"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6830
    if-eqz v2, :cond_2

    .line 6831
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 6833
    :catch_3
    move-exception v1

    .line 6834
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 6854
    :catch_4
    move-exception v2

    .line 6855
    :try_start_7
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_1

    .line 6876
    :catch_5
    move-exception v0

    .line 6877
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 6891
    :goto_4
    if-eqz v3, :cond_4

    .line 6892
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    :cond_4
    :goto_5
    move v0, v1

    .line 6898
    goto :goto_1

    .line 6861
    :cond_5
    :try_start_9
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const-string v2, "clipboardEx"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    .line 6863
    new-instance v2, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    invoke-direct {v2}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;-><init>()V

    .line 6864
    invoke-virtual {v2, v5}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->SetBitmapPath(Ljava/lang/String;)Z

    .line 6867
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4, v2}, Landroid/sec/clipboard/ClipboardExManager;->setData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 6868
    const-string v0, "Email"

    const-string v2, "onCopyImage : : clipEx.setData returned false."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 6870
    :cond_6
    const-string v0, "Email"

    const-string v2, "onCopyImage : : Copied the selected image successfully"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_4

    .line 6894
    :catch_6
    move-exception v0

    .line 6895
    const-string v2, "MessageViewFragmentBase >>"

    const-string v3, "onCopyImage : IOException"

    invoke-static {v2, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 6896
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 6827
    :catch_7
    move-exception v1

    move-object v2, v3

    goto :goto_3

    .line 6817
    :catch_8
    move-exception v1

    move-object v1, v3

    goto :goto_2

    :cond_7
    move-object v4, v2

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 698
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 700
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    .line 701
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mActivity:Landroid/app/Activity;

    .line 703
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.REQ_INFO_FROM_MINI_MEMO"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 704
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->reqMemoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 706
    new-instance v0, Lcom/android/email/ControllerResultUiThreadWrapper;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    invoke-direct {v0, v1, v2}, Lcom/android/email/ControllerResultUiThreadWrapper;-><init>(Landroid/os/Handler;Lcom/android/email/Controller$Result;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    .line 709
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    .line 710
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageObserver:Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;

    .line 712
    sput-object p0, Lcom/android/email/activity/MessageViewFragmentBase;->INSTANCE:Lcom/android/email/activity/MessageViewFragmentBase;

    .line 714
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "download"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    check-cast v0, Landroid/app/DownloadManager;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->downloadManager:Landroid/app/DownloadManager;

    .line 717
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->securityPolicy:Lcom/android/email/SecurityPolicy;

    .line 718
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x3

    const/16 v8, 0xff

    const/4 v2, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 726
    const v0, 0x7f040086

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->view:Landroid/view/View;

    .line 727
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v3

    .line 728
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->view:Landroid/view/View;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageViewFragment:Landroid/view/View;

    .line 732
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mNoSelectedEmail:Landroid/widget/LinearLayout;

    .line 733
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageViewFragment:Landroid/view/View;

    const v4, 0x7f1001de

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mNoSelectedEmail:Landroid/widget/LinearLayout;

    .line 738
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->view:Landroid/view/View;

    const v4, 0x7f1001df

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/winset/MessageScrollView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    .line 742
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    const v4, 0x7f1001e0

    invoke-virtual {v0, v4}, Lcom/android/email/winset/MessageScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLastVerbDateTimeLayout:Landroid/widget/LinearLayout;

    .line 744
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    const v4, 0x7f1001e1

    invoke-virtual {v0, v4}, Lcom/android/email/winset/MessageScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLastVerbDateTimeView:Landroid/widget/TextView;

    .line 750
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    const v4, 0x7f1001e2

    invoke-virtual {v0, v4}, Lcom/android/email/winset/MessageScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearLayoutAddress:Landroid/widget/LinearLayout;

    .line 753
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearLayoutAddress:Landroid/widget/LinearLayout;

    const v4, 0x7f1001e4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    .line 755
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearLayoutAddress:Landroid/widget/LinearLayout;

    const v4, 0x7f1001e8

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    .line 757
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearLayoutAddress:Landroid/widget/LinearLayout;

    const v4, 0x7f1001eb

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    .line 759
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearLayoutAddress:Landroid/widget/LinearLayout;

    const v4, 0x7f1001e3

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromText:Landroid/widget/TextView;

    .line 760
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearLayoutAddress:Landroid/widget/LinearLayout;

    const v4, 0x7f1001e7

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToText:Landroid/widget/TextView;

    .line 761
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearLayoutAddress:Landroid/widget/LinearLayout;

    const v4, 0x7f1001ea

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcText:Landroid/widget/TextView;

    .line 762
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearLayoutAddress:Landroid/widget/LinearLayout;

    const v4, 0x7f1001e5

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mExpanderButton:Landroid/widget/ImageButton;

    .line 763
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearLayoutAddress:Landroid/widget/LinearLayout;

    const v4, 0x7f1001e9

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToMargin:Landroid/view/View;

    .line 764
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearLayoutAddress:Landroid/widget/LinearLayout;

    const v4, 0x7f1001ec

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcMargin:Landroid/view/View;

    .line 766
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->registerChildViewsFromOwnXML()V

    .line 767
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->registerChildViewsFromOwnXML()V

    .line 768
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->registerChildViewsFromOwnXML()V

    .line 769
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mExpanderButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 771
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_4

    .line 772
    const/16 v0, 0x270

    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLayoutWidth:I

    .line 777
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    iget v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLayoutWidth:I

    invoke-virtual {v0, v4}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->setExpectedLayoutWidth(I)V

    .line 778
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    iget v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLayoutWidth:I

    invoke-virtual {v0, v4}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->setExpectedLayoutWidth(I)V

    .line 780
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearLayoutAddress:Landroid/widget/LinearLayout;

    const v4, 0x7f1001e6

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromBadge:Landroid/widget/ImageView;

    .line 781
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromBadge:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 784
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    const v4, 0x7f1001ed

    invoke-virtual {v0, v4}, Lcom/android/email/winset/MessageScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    .line 787
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v4, 0x7f100008

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSubjectView:Landroid/widget/TextView;

    .line 789
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v4, 0x7f1001f9

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    .line 790
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 791
    const v4, 0x7f020206

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIconOn:Landroid/graphics/drawable/Drawable;

    .line 792
    const v4, 0x7f020207

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIconOff:Landroid/graphics/drawable/Drawable;

    .line 793
    const v4, 0x7f0200af

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFollowUpFlagSet:Landroid/graphics/drawable/Drawable;

    .line 794
    const v4, 0x7f0200b1

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFollowUpFlagComplete:Landroid/graphics/drawable/Drawable;

    .line 795
    const v4, 0x7f0200b0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFollowUpFlagClear:Landroid/graphics/drawable/Drawable;

    .line 797
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v4, 0x7f1001f3

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTypeIcon:Landroid/widget/ImageView;

    .line 798
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v4, 0x7f1001f7

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSignIcon:Landroid/widget/ImageView;

    .line 799
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v4, 0x7f1001f8

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mEncryptionIcon:Landroid/widget/ImageView;

    .line 800
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v4, 0x7f1001f2

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPriorityIcon:Landroid/widget/ImageView;

    .line 803
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v4, 0x7f1001f6

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPermission:Landroid/widget/ImageView;

    .line 804
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v4, 0x7f100171

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->templateDescriptionLayout:Landroid/widget/LinearLayout;

    .line 806
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v4, 0x7f100173

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->templateDescription:Landroid/widget/TextView;

    .line 809
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v4, 0x7f1001f5

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDateTimeView:Landroid/widget/TextView;

    .line 810
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v4, 0x7f1001fc

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabSection:Landroid/view/View;

    .line 812
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v4, 0x7f1001fd

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTab:Landroid/widget/TextView;

    .line 813
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v4, 0x7f1001ff

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    .line 814
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v4, 0x7f100201

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;

    .line 816
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTab:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 817
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 818
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 822
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    const v4, 0x7f100203

    invoke-virtual {v0, v4}, Lcom/android/email/winset/MessageScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutContent:Landroid/widget/LinearLayout;

    .line 826
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    const v4, 0x7f100204

    invoke-virtual {v0, v4}, Lcom/android/email/winset/MessageScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageWebView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    .line 827
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageWebView;->setScrollViewMain(Landroid/widget/ScrollView;)V

    .line 828
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageWebView;->setVerticalScrollBarEnabled(Z)V

    .line 829
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 830
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    new-instance v4, Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$1;)V

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 831
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageWebView;->setHapticFeedbackEnabled(Z)V

    .line 832
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageWebView;->setPreserveZoom(Z)V

    .line 833
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    new-instance v4, Lcom/android/email/activity/MessageViewFragmentBase$1;

    invoke-direct {v4, p0}, Lcom/android/email/activity/MessageViewFragmentBase$1;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageWebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 879
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0, v4}, Lcom/android/email/winset/MessageScrollView;->setMessageWebView(Lcom/android/email/activity/MessageWebView;)V

    .line 882
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 883
    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setAdvancedCopyPasteFeature(Z)V

    .line 884
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setEditableSupport(Z)V

    .line 885
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBlockNetworkLoads(Z)V

    .line 886
    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 887
    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 888
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 891
    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setEnableSmoothTransition(Z)V

    .line 894
    sget-object v4, Landroid/webkit/WebSettings$ZoomDensity;->FAR:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    .line 895
    sget-object v4, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 897
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseEmailViewPort()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 906
    :goto_1
    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 907
    invoke-virtual {v3}, Lcom/android/email/Preferences;->getTextZoom()I

    move-result v0

    .line 908
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->setViewFontSize(I)V

    .line 912
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->view:Landroid/view/View;

    const v4, 0x7f100205

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMoreMessageHolder:Landroid/view/View;

    .line 913
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->view:Landroid/view/View;

    const v4, 0x7f100206

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMoreMessage:Landroid/view/View;

    .line 914
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMoreMessage:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 915
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMoreMessage:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 919
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    const v4, 0x7f100207

    invoke-virtual {v0, v4}, Lcom/android/email/winset/MessageScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mScrollviewInvite:Landroid/widget/ScrollView;

    .line 920
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mScrollviewInvite:Landroid/widget/ScrollView;

    new-instance v4, Lcom/android/email/activity/MessageViewFragmentBase$2;

    invoke-direct {v4, p0}, Lcom/android/email/activity/MessageViewFragmentBase$2;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 930
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    const v4, 0x7f100208

    invoke-virtual {v0, v4}, Lcom/android/email/winset/MessageScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutAttachment:Landroid/widget/LinearLayout;

    .line 932
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->view:Landroid/view/View;

    const v4, 0x7f100209

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRelativelayoutAttachmentsHeader:Landroid/widget/RelativeLayout;

    .line 934
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->view:Landroid/view/View;

    const v4, 0x7f10020d

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRelativeLayoutSaveall:Landroid/widget/RelativeLayout;

    .line 935
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->view:Landroid/view/View;

    const v4, 0x7f10020b

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentsHeaderInfo:Landroid/widget/TextView;

    .line 936
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->view:Landroid/view/View;

    const v4, 0x7f10020e

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAllDownloadIcon:Landroid/widget/Button;

    .line 937
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAllDownloadIcon:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 939
    iput-boolean v7, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAlldownloadIconVisible:Z

    .line 941
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->view:Landroid/view/View;

    const v4, 0x7f10020c

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentsExpander:Landroid/widget/ImageButton;

    .line 942
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentsExpander:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 944
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->view:Landroid/view/View;

    const v4, 0x7f10020f

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    .line 948
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->view:Landroid/view/View;

    const v4, 0x7f100210

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutToTheTop:Landroid/widget/LinearLayout;

    .line 950
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->view:Landroid/view/View;

    const v4, 0x7f100211

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mbtnToTheTop:Landroid/widget/Button;

    .line 951
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mbtnToTheTop:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 953
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutToTheTop:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Lcom/android/email/winset/MessageScrollView;->setLinearlayoutToTheTop(Landroid/widget/LinearLayout;)V

    .line 957
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->view:Landroid/view/View;

    const v4, 0x7f100213

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadingProgress:Landroid/view/View;

    .line 961
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsEMLView:Z

    if-nez v0, :cond_8

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapterDirect(I)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/adapter/ProtocolAdapter;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 964
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 965
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    .line 982
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mColor:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 983
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const v4, 0x7f0801e0

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageViewFragmentBase;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    const v4, 0x7f0801e1

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageViewFragmentBase;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v7

    const v4, 0x7f0801e2

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageViewFragmentBase;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    const v4, 0x7f0801e3

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageViewFragmentBase;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v9

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mColor:[Ljava/lang/String;

    .line 988
    :cond_1
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsAmoledHardware()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1014
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v4, "#000000"

    aput-object v4, v0, v1

    const-string v4, "#000010"

    aput-object v4, v0, v7

    const-string v4, "#C8C8C8"

    aput-object v4, v0, v2

    const-string v4, "#FFFFFF"

    aput-object v4, v0, v9

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFontColorString:[Ljava/lang/String;

    .line 1017
    const/4 v0, 0x4

    new-array v0, v0, [I

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, v0, v1

    const/16 v4, 0x69

    const/16 v5, 0x61

    const/16 v6, 0x45

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, v0, v7

    const/16 v4, 0xc8

    const/16 v5, 0xc8

    const/16 v6, 0xc8

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, v0, v2

    invoke-static {v8, v8, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, v0, v9

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFontColorCode:[I

    .line 1022
    const/4 v0, 0x4

    new-array v0, v0, [I

    invoke-static {v8, v8, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, v0, v1

    const/16 v4, 0xde

    const/16 v5, 0xd5

    const/16 v6, 0xb3

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, v0, v7

    const/16 v4, 0x1f

    const/16 v5, 0x21

    const/16 v6, 0x24

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, v0, v2

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, v0, v9

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBGColorCode:[I

    .line 1059
    :goto_3
    invoke-virtual {v3}, Lcom/android/email/Preferences;->getDPModeColor()I

    move-result v0

    .line 1062
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBGColorCode:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Lcom/android/email/winset/MessageScrollView;->setBackgroundColor(I)V

    .line 1063
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mScrollviewInvite:Landroid/widget/ScrollView;

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBGColorCode:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 1064
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutAttachment:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBGColorCode:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1065
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutContent:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBGColorCode:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1066
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBGColorCode:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Lcom/android/email/activity/MessageWebView;->setBackgroundColor(I)V

    .line 1067
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMoreMessageHolder:Landroid/view/View;

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBGColorCode:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1069
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v4

    if-nez v4, :cond_a

    .line 1070
    if-eq v0, v2, :cond_2

    move v0, v1

    .line 1073
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->ControlBgColor(IZ)V

    .line 1074
    invoke-virtual {v3, v0}, Lcom/android/email/Preferences;->setBGColor(I)V

    .line 1090
    :cond_3
    :goto_4
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->view:Landroid/view/View;

    return-object v0

    .line 774
    :cond_4
    const/16 v0, 0x13a

    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLayoutWidth:I

    goto/16 :goto_0

    .line 900
    :cond_5
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWideViewPort()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 901
    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    goto/16 :goto_1

    .line 903
    :cond_6
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    goto/16 :goto_1

    .line 967
    :cond_7
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    sput-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    .line 968
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->view:Landroid/view/View;

    invoke-virtual {v0, v4, v5, p0}, Lcom/android/email/activity/MessageViewForSeven;->onInit(Landroid/content/Context;Landroid/view/View;Lcom/android/email/activity/MessageViewFragmentBase;)V

    .line 972
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    sget-boolean v0, Lcom/android/email/activity/MessageViewForSeven;->mInit:Z

    if-nez v0, :cond_0

    .line 973
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4, p0}, Lcom/android/email/activity/MessageViewForSeven;->z7initInstance(Landroid/content/Context;Lcom/android/email/activity/MessageViewFragmentBase;)V

    goto/16 :goto_2

    .line 977
    :cond_8
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    goto/16 :goto_2

    .line 1043
    :cond_9
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v4, "#000000"

    aput-object v4, v0, v1

    const-string v4, "#000010"

    aput-object v4, v0, v7

    const-string v4, "#696145"

    aput-object v4, v0, v2

    const-string v4, "#FFFFFF"

    aput-object v4, v0, v9

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFontColorString:[Ljava/lang/String;

    .line 1046
    const/4 v0, 0x4

    new-array v0, v0, [I

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, v0, v1

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, v0, v7

    const/16 v4, 0x69

    const/16 v5, 0x61

    const/16 v6, 0x45

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, v0, v2

    const/16 v4, 0xeb

    const/16 v5, 0xeb

    const/16 v6, 0xeb

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, v0, v9

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFontColorCode:[I

    .line 1052
    const/4 v0, 0x4

    new-array v0, v0, [I

    invoke-static {v8, v8, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, v0, v1

    const/16 v4, 0xde

    const/16 v5, 0xd5

    const/16 v6, 0xb3

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, v0, v7

    const/16 v4, 0x44

    const/16 v5, 0x44

    const/16 v6, 0x44

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, v0, v2

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, v0, v9

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBGColorCode:[I

    goto/16 :goto_3

    .line 1077
    :cond_a
    const/4 v4, -0x1

    if-ne v0, v4, :cond_3

    .line 1078
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsAmoledHardware()Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v2

    .line 1084
    :goto_5
    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->ControlBgColor(IZ)V

    .line 1085
    invoke-virtual {v3, v0}, Lcom/android/email/Preferences;->setBGColor(I)V

    goto/16 :goto_4

    :cond_b
    move v0, v1

    .line 1081
    goto :goto_5
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsDestoryStart:Z

    .line 1177
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->reqMemoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1178
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->reqMemoReceiver:Landroid/content/BroadcastReceiver;

    .line 1179
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCallback:Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageViewFragmentBase$Callback;->onMessageViewGone()V

    .line 1180
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 1181
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    .line 1182
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    .line 1183
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->clearContent()V

    .line 1184
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadingProgress:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1193
    :goto_0
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromBadge:Landroid/widget/ImageView;

    .line 1194
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mExpanderButton:Landroid/widget/ImageButton;

    .line 1195
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    .line 1196
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToText:Landroid/widget/TextView;

    .line 1197
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromText:Landroid/widget/TextView;

    .line 1198
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    .line 1199
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcText:Landroid/widget/TextView;

    .line 1200
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    .line 1201
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToMargin:Landroid/view/View;

    .line 1202
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcMargin:Landroid/view/View;

    .line 1205
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTypeIcon:Landroid/widget/ImageView;

    .line 1206
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDateTimeView:Landroid/widget/TextView;

    .line 1207
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSubjectView:Landroid/widget/TextView;

    .line 1208
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPriorityIcon:Landroid/widget/ImageView;

    .line 1209
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSignIcon:Landroid/widget/ImageView;

    .line 1210
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mEncryptionIcon:Landroid/widget/ImageView;

    .line 1211
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIconOff:Landroid/graphics/drawable/Drawable;

    .line 1212
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIconOn:Landroid/graphics/drawable/Drawable;

    .line 1213
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFollowUpFlagSet:Landroid/graphics/drawable/Drawable;

    .line 1214
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFollowUpFlagComplete:Landroid/graphics/drawable/Drawable;

    .line 1215
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFollowUpFlagClear:Landroid/graphics/drawable/Drawable;

    .line 1216
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    .line 1217
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTab:Landroid/widget/TextView;

    .line 1218
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    .line 1221
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;

    .line 1222
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearLayoutAddress:Landroid/widget/LinearLayout;

    .line 1224
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabSection:Landroid/view/View;

    .line 1225
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    .line 1228
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLastVerbDateTimeLayout:Landroid/widget/LinearLayout;

    .line 1229
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLastVerbDateTimeView:Landroid/widget/TextView;

    .line 1233
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    if-eqz v0, :cond_0

    .line 1234
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->destroy()V

    .line 1235
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    .line 1237
    :cond_0
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMoreMessage:Landroid/view/View;

    .line 1238
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMoreMessageHolder:Landroid/view/View;

    .line 1239
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentsExpander:Landroid/widget/ImageButton;

    .line 1240
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAllDownloadIcon:Landroid/widget/Button;

    .line 1241
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentsHeaderInfo:Landroid/widget/TextView;

    .line 1242
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    .line 1243
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadingProgress:Landroid/view/View;

    .line 1244
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRelativeLayoutSaveall:Landroid/widget/RelativeLayout;

    .line 1245
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRelativelayoutAttachmentsHeader:Landroid/widget/RelativeLayout;

    .line 1246
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutContent:Landroid/widget/LinearLayout;

    .line 1247
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mScrollviewInvite:Landroid/widget/ScrollView;

    .line 1248
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutAttachment:Landroid/widget/LinearLayout;

    .line 1250
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mList:Landroid/widget/ListView;

    .line 1251
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->downloadManager:Landroid/app/DownloadManager;

    .line 1252
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 1253
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageObserver:Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;

    .line 1254
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAnimation:Landroid/view/animation/Animation;

    .line 1255
    sput-object v2, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    .line 1256
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageViewFragment:Landroid/view/View;

    .line 1257
    sput-object v2, Lcom/android/email/activity/MessageViewFragmentBase;->INSTANCE:Lcom/android/email/activity/MessageViewFragmentBase;

    .line 1258
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    .line 1259
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mActivity:Landroid/app/Activity;

    .line 1262
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    .line 1263
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSMIMEUtilsCallback:Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;

    .line 1265
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContactStatusLoaderCallbacks:Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;

    .line 1266
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 1267
    return-void

    .line 1188
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    invoke-static {v0, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 1189
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadingProgress:Landroid/view/View;

    invoke-static {v0, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    goto/16 :goto_0
.end method

.method public onMemoPlus()V
    .locals 3

    .prologue
    .line 6044
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EMAIL_TO_MEMO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6047
    :try_start_0
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSubjectView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6048
    const-string v1, "email_title"

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 6054
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDateTimeView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDateTimeView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6055
    const-string v1, "email_date"

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDateTimeView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 6069
    :cond_1
    iget-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->bSaveToCalendarIsText:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 6070
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSaveToCalendarHtmlText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    .line 6071
    const-string v2, "email_message"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6084
    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 6085
    return-void

    .line 6075
    :cond_2
    :try_start_1
    const-string v1, "email_message"

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSaveToCalendarHtmlText:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->extractTextFromHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 6080
    :catch_0
    move-exception v1

    .line 6081
    const-string v1, "Email"

    const-string v2, "onMemoPlus : NullPointerException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onMessageShown(JI)V
    .locals 1
    .parameter "messageId"
    .parameter "mailboxType"

    .prologue
    .line 3794
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCallback:Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    invoke-interface {v0, p3}, Lcom/android/email/activity/MessageViewFragmentBase$Callback;->onMessageViewShown(I)V

    .line 3795
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mResumed:Z

    .line 1152
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v0, :cond_0

    .line 1153
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewForSeven;->onPause()V

    .line 1158
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 1159
    return-void
.end method

.method protected onPostLoadBody()V
    .locals 0

    .prologue
    .line 3801
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1115
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 1117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mResumed:Z

    .line 1118
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->isMessageSpecified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1119
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadWhenResumed:Z

    if-eqz v0, :cond_0

    .line 1120
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->loadMessageIfResumed()V

    .line 1135
    :cond_0
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v0, :cond_1

    .line 1136
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewForSeven;->onResume()V

    .line 1140
    :cond_1
    return-void
.end method

.method public onSaveImage(Z)V
    .locals 12
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 6667
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v0

    .line 6668
    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v6

    .line 6669
    const-string v2, ""

    .line 6675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "/download/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 6678
    :try_start_0
    const-string v0, "content://"

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    move v5, v4

    move v0, v4

    .line 6680
    :goto_0
    sget-object v8, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    array-length v8, v8

    if-ge v5, v8, :cond_1

    if-nez v0, :cond_1

    .line 6681
    sget-object v8, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;->mContentUri:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 6682
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    aget-object v0, v0, v5

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;->mFileName:Ljava/lang/String;

    move-object v2, v0

    move v0, v1

    .line 6680
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 6687
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    move-object v5, v2

    move-object v2, v0

    .line 6697
    :goto_1
    :try_start_1
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HANATHEONE file name: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6699
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6700
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2

    .line 6701
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 6703
    :cond_2
    invoke-static {v0, v5}, Lcom/android/email/activity/MessageViewFragmentBase;->createUniqueFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_f

    move-result-object v0

    .line 6705
    :try_start_2
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_16
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_10

    .line 6706
    :try_start_3
    invoke-static {v2, v1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 6707
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 6709
    if-nez p1, :cond_3

    .line 6710
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v8, 0x7f08008c

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v3, v7, v8}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_17
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_14
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_11

    .line 6725
    :cond_3
    if-eqz v2, :cond_4

    .line 6727
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_c

    .line 6732
    :cond_4
    :goto_2
    if-eqz v1, :cond_5

    .line 6734
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 6740
    if-eqz v0, :cond_5

    .line 6741
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 6750
    :cond_5
    :goto_3
    if-eqz p1, :cond_6

    .line 6754
    if-nez v4, :cond_e

    .line 6755
    :try_start_6
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 6767
    :goto_4
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    .line 6768
    invoke-virtual {v1, v0}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V

    .line 6769
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v2, 0x7f0801c0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;Ljava/lang/String;I)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    .line 6785
    :cond_6
    :goto_5
    return-void

    .line 6689
    :cond_7
    :try_start_7
    new-instance v0, Ljava/net/URL;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 6691
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 6692
    array-length v8, v5

    add-int/lit8 v8, v8, -0x1

    aget-object v2, v5, v8

    .line 6693
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_3

    move-result-object v0

    move v4, v1

    move-object v5, v2

    move-object v2, v0

    .line 6694
    goto/16 :goto_1

    .line 6714
    :catch_0
    move-exception v0

    move-object v0, v3

    move-object v1, v3

    move v11, v4

    move-object v4, v2

    move v2, v11

    .line 6715
    :goto_6
    :try_start_8
    const-string v5, "Email"

    const-string v7, "ActivityNotFoundException1"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 6725
    if-eqz v1, :cond_8

    .line 6727
    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 6732
    :cond_8
    :goto_7
    if-eqz v3, :cond_9

    .line 6734
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 6740
    if-eqz v0, :cond_9

    .line 6741
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    const/4 v0, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v3, v0, v5}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_d

    :cond_9
    :goto_8
    move-object v5, v4

    move v4, v2

    .line 6748
    goto/16 :goto_3

    .line 6716
    :catch_1
    move-exception v0

    move-object v1, v3

    move-object v5, v2

    move-object v2, v3

    .line 6717
    :goto_9
    :try_start_b
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v7, 0x7f08008d

    const/4 v8, 0x1

    invoke-static {v0, v7, v8}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 6725
    if-eqz v2, :cond_a

    .line 6727
    :try_start_c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    .line 6732
    :cond_a
    :goto_a
    if-eqz v1, :cond_5

    .line 6734
    :try_start_d
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 6740
    if-eqz v3, :cond_5

    .line 6741
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    goto/16 :goto_3

    .line 6745
    :catch_2
    move-exception v0

    goto/16 :goto_3

    .line 6719
    :catch_3
    move-exception v0

    move-object v1, v3

    move-object v5, v2

    move-object v2, v3

    .line 6720
    :goto_b
    :try_start_e
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v7, 0x7f08008d

    const/4 v8, 0x1

    invoke-static {v0, v7, v8}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 6725
    if-eqz v2, :cond_b

    .line 6727
    :try_start_f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_b

    .line 6732
    :cond_b
    :goto_c
    if-eqz v1, :cond_5

    .line 6734
    :try_start_10
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 6740
    if-eqz v3, :cond_5

    .line 6741
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2

    goto/16 :goto_3

    .line 6725
    :catchall_0
    move-exception v0

    move-object v1, v3

    move-object v2, v3

    :goto_d
    if-eqz v2, :cond_c

    .line 6727
    :try_start_11
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8

    .line 6732
    :cond_c
    :goto_e
    if-eqz v1, :cond_d

    .line 6734
    :try_start_12
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 6740
    if-eqz v3, :cond_d

    .line 6741
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_e

    .line 6725
    :cond_d
    :goto_f
    throw v0

    .line 6757
    :cond_e
    :try_start_13
    new-instance v0, Ljava/net/URL;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 6758
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_4
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_13 .. :try_end_13} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_13} :catch_6
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_7

    move-result-object v0

    goto/16 :goto_4

    .line 6773
    :catch_4
    move-exception v0

    .line 6774
    const-string v1, "Email"

    const-string v2, "Failed to set wallpaper."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 6775
    :catch_5
    move-exception v0

    .line 6776
    const-string v1, "Email"

    const-string v2, "BadTokenException!!!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6777
    invoke-virtual {v0}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto/16 :goto_5

    .line 6778
    :catch_6
    move-exception v0

    .line 6779
    const-string v1, "Email"

    const-string v2, "IllegalStateException!!!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6780
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_5

    .line 6781
    :catch_7
    move-exception v0

    .line 6782
    const-string v1, "Email"

    const-string v2, "Failed to set wallpaper2."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 6728
    :catch_8
    move-exception v2

    goto :goto_e

    :catch_9
    move-exception v1

    goto/16 :goto_7

    :catch_a
    move-exception v0

    goto/16 :goto_a

    :catch_b
    move-exception v0

    goto/16 :goto_c

    :catch_c
    move-exception v2

    goto/16 :goto_2

    .line 6745
    :catch_d
    move-exception v0

    goto/16 :goto_8

    :catch_e
    move-exception v1

    goto :goto_f

    .line 6725
    :catchall_1
    move-exception v0

    move-object v1, v3

    goto :goto_d

    :catchall_2
    move-exception v1

    move-object v11, v1

    move-object v1, v3

    move-object v3, v0

    move-object v0, v11

    goto :goto_d

    :catchall_3
    move-exception v3

    move-object v11, v3

    move-object v3, v0

    move-object v0, v11

    goto :goto_d

    :catchall_4
    move-exception v2

    move-object v11, v2

    move-object v2, v1

    move-object v1, v3

    move-object v3, v0

    move-object v0, v11

    goto/16 :goto_d

    :catchall_5
    move-exception v0

    goto/16 :goto_d

    .line 6719
    :catch_f
    move-exception v0

    move-object v1, v3

    goto/16 :goto_b

    :catch_10
    move-exception v1

    move-object v1, v3

    move-object v3, v0

    goto/16 :goto_b

    :catch_11
    move-exception v3

    move-object v3, v0

    goto/16 :goto_b

    .line 6716
    :catch_12
    move-exception v0

    move-object v1, v3

    goto/16 :goto_9

    :catch_13
    move-exception v1

    move-object v1, v3

    move-object v3, v0

    goto/16 :goto_9

    :catch_14
    move-exception v3

    move-object v3, v0

    goto/16 :goto_9

    .line 6714
    :catch_15
    move-exception v0

    move-object v0, v3

    move-object v1, v2

    move v2, v4

    move-object v4, v5

    goto/16 :goto_6

    :catch_16
    move-exception v1

    move-object v1, v2

    move v2, v4

    move-object v4, v5

    goto/16 :goto_6

    :catch_17
    move-exception v3

    move-object v3, v1

    move-object v1, v2

    move v2, v4

    move-object v4, v5

    goto/16 :goto_6
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "outState"

    .prologue
    .line 1355
    iget-wide v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1356
    const-string v0, "messageId"

    iget-wide v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1360
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v0, :cond_0

    .line 1361
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessageViewForSeven;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1368
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1369
    return-void
.end method

.method public onSetWallpaper()V
    .locals 1

    .prologue
    .line 6662
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->onSaveImage(Z)V

    .line 6663
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 1107
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 1108
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 1166
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 1167
    return-void
.end method

.method protected abstract openMessageSync(Landroid/app/Activity;)Lcom/android/emailcommon/provider/EmailContent$Message;
.end method

.method protected reloadUiFromMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Z)V
    .locals 13
    .parameter
    .parameter

    .prologue
    const-wide/16 v11, -0x1

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v10, 0x1

    .line 4999
    iget-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    iput-wide v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    .line 5001
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->securityPolicy:Lcom/android/email/SecurityPolicy;

    iget-wide v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/SecurityPolicy;->getAccountPolicy(Ljava/lang/Long;)Lcom/android/emailcommon/service/PolicySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->policySet:Lcom/android/emailcommon/service/PolicySet;

    .line 5004
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 5005
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5006
    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->versionDouble:Ljava/lang/Double;

    .line 5009
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageObserver:Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;->register(Landroid/net/Uri;)V

    .line 5012
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v0, :cond_1

    .line 5015
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenMessageKey:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageViewForSeven;->makeAttachmentInfos(J)V

    .line 5019
    :cond_1
    invoke-static {}, Lcom/android/email/ContactInfoCache;->getInstance()Lcom/android/email/ContactInfoCache;

    move-result-object v0

    .line 5020
    if-nez v0, :cond_2

    .line 5021
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/ContactInfoCache;->init(Landroid/content/Context;)V

    .line 5024
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-virtual {p0, v0, v10}, Lcom/android/email/activity/MessageViewFragmentBase;->updateHeaderView(Lcom/android/emailcommon/provider/EmailContent$Message;Z)V

    .line 5027
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 5028
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    new-array v4, v10, [Ljava/lang/String;

    iget-wide v8, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 5035
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 5036
    const-string v0, "isMimeLoaded"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 5042
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 5049
    :goto_1
    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagTruncated:I

    if-eq v1, v10, :cond_3

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIsMimeLoaded:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->hasInlineDataImage(JI)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 5052
    :cond_3
    iget-boolean v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    if-nez v0, :cond_4

    iget-boolean v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    if-eqz v0, :cond_6

    .line 5053
    :cond_4
    iput-boolean v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->showingLoadMore:Z

    .line 5057
    :goto_2
    invoke-virtual {p0, v10}, Lcom/android/email/activity/MessageViewFragmentBase;->showLoadMoreButton(Z)V

    .line 5058
    const-string v0, "MessageView"

    const-string v1, "mFlagTruncated == FLAG_TRUNCATED_YES"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5116
    :cond_5
    :goto_3
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseRetrievesize()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 5117
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 5118
    if-eqz p2, :cond_e

    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    if-eq v0, v10, :cond_e

    .line 5119
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->getWrappee()Lcom/android/email/Controller$Result;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->setWaitForLoadMessageId(J)V

    .line 5120
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Controller;->loadMessageForView(J)V

    .line 5170
    :goto_4
    return-void

    .line 5039
    :catch_0
    move-exception v0

    .line 5040
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5042
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v6

    .line 5043
    goto :goto_1

    .line 5042
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 5055
    :cond_6
    iput-boolean v10, p0, Lcom/android/email/activity/MessageViewFragmentBase;->showingLoadMore:Z

    goto :goto_2

    .line 5063
    :cond_7
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    .line 5064
    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    .line 5065
    iget v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    if-eq v2, v10, :cond_8

    .line 5066
    const-string v2, "MessageView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "message.mFlagLoaded = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Message.FLAG_LOADED_COMPLETE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5069
    :cond_8
    if-eqz v1, :cond_5

    const-string v2, "2.5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 5073
    if-nez v0, :cond_9

    .line 5074
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5075
    const-string v2, "isMimeLoaded"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5076
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 5078
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v0, v7

    .line 5081
    :cond_9
    if-ne v0, v7, :cond_c

    .line 5082
    const-string v0, "MessageView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEx2003 = true, Protocol Version = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Message Truncated = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagTruncated:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5084
    iget-boolean v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    if-nez v0, :cond_a

    iget-boolean v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    if-eqz v0, :cond_b

    .line 5085
    :cond_a
    iput-boolean v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->showingLoadMore:Z

    .line 5089
    :goto_5
    invoke-virtual {p0, v10}, Lcom/android/email/activity/MessageViewFragmentBase;->showLoadMoreButton(Z)V

    .line 5108
    :goto_6
    const-string v0, "MessageView"

    const-string v1, "mFlagTruncated == FLAG_TRUNCATED_NO"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 5087
    :cond_b
    iput-boolean v10, p0, Lcom/android/email/activity/MessageViewFragmentBase;->showingLoadMore:Z

    goto :goto_5

    .line 5096
    :cond_c
    invoke-virtual {p0, v6}, Lcom/android/email/activity/MessageViewFragmentBase;->showLoadMoreButton(Z)V

    goto :goto_6

    .line 5113
    :cond_d
    invoke-virtual {p0, v6}, Lcom/android/email/activity/MessageViewFragmentBase;->showLoadMoreButton(Z)V

    goto/16 :goto_3

    .line 5122
    :cond_e
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->getWrappee()Lcom/android/email/Controller$Result;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;

    invoke-virtual {v0, v11, v12}, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->setWaitForLoadMessageId(J)V

    .line 5124
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;JZ)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadBodyTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    .line 5125
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadBodyTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_4

    .line 5128
    :cond_f
    if-eqz p2, :cond_10

    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_10

    .line 5129
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->getWrappee()Lcom/android/email/Controller$Result;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->setWaitForLoadMessageId(J)V

    .line 5130
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Controller;->loadMessageForView(J)V

    goto/16 :goto_4

    .line 5132
    :cond_10
    if-eqz p2, :cond_11

    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    if-eq v0, v10, :cond_11

    .line 5133
    iput-boolean v10, p0, Lcom/android/email/activity/MessageViewFragmentBase;->showingLoadMore:Z

    .line 5134
    invoke-virtual {p0, v10}, Lcom/android/email/activity/MessageViewFragmentBase;->showLoadMoreButton(Z)V

    .line 5135
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->getWrappee()Lcom/android/email/Controller$Result;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->setWaitForLoadMessageId(J)V

    .line 5139
    :goto_7
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsEMLView:Z

    if-eqz v0, :cond_12

    .line 5140
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;JZ)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadBodyTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    .line 5144
    :goto_8
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadBodyTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_4

    .line 5137
    :cond_11
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->getWrappee()Lcom/android/email/Controller$Result;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;

    invoke-virtual {v0, v11, v12}, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->setWaitForLoadMessageId(J)V

    goto :goto_7

    .line 5142
    :cond_12
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-direct {v0, p0, v1, v2, v10}, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;JZ)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadBodyTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    goto :goto_8

    .line 5156
    :cond_13
    if-eqz p2, :cond_14

    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    if-eq v0, v10, :cond_14

    .line 5157
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->getWrappee()Lcom/android/email/Controller$Result;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->setWaitForLoadMessageId(J)V

    .line 5158
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Controller;->loadMessageForView(J)V

    goto/16 :goto_4

    .line 5160
    :cond_14
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->getWrappee()Lcom/android/email/Controller$Result;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;

    invoke-virtual {v0, v11, v12}, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->setWaitForLoadMessageId(J)V

    .line 5162
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v0

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsEMLView:Z

    if-eqz v0, :cond_16

    .line 5163
    :cond_15
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;JZ)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadBodyTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    .line 5167
    :goto_9
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadBodyTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_4

    .line 5165
    :cond_16
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-direct {v0, p0, v1, v2, v10}, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;JZ)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadBodyTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    goto :goto_9

    :cond_17
    move v0, v6

    goto/16 :goto_0
.end method

.method protected resetView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1506
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadingProgress:Landroid/view/View;

    if-nez v0, :cond_2

    .line 1514
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTab:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1515
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->setCurrentTab(I)V

    .line 1516
    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->updateTabFlags(I)V

    .line 1519
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    invoke-virtual {v0}, Lcom/android/email/winset/MessageScrollView;->resetMessageScrollView()V

    .line 1520
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->resetMessageWebView()V

    .line 1522
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->stopLoading()V

    .line 1526
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->clearSelection()V

    .line 1528
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->clearActionModes()V

    .line 1529
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBlockNetworkLoads(Z)V

    .line 1531
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0, v2, v2}, Lcom/android/email/activity/MessageWebView;->scrollTo(II)V

    .line 1532
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->clearHistory()V

    .line 1534
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->clearViewState()V

    .line 1535
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->clearView()V

    .line 1537
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageWebView;->setInitialScale(I)V

    .line 1539
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 1540
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseEmailViewPort()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1541
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUseEmailViewPort(Z)V

    .line 1547
    :goto_1
    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 1549
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1552
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1553
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v1, v0}, Lcom/android/email/activity/MessageWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1555
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->removeAllAttachments()V

    .line 1557
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1559
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v0, :cond_1

    .line 1560
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewForSeven;->z7StopDownloading()V

    .line 1562
    :cond_1
    iput-boolean v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsPatternMatchingEnd:Z

    .line 1564
    const-string v0, "Email"

    const-string v1, "resetView()"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1565
    return-void

    .line 1511
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadingProgress:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    goto/16 :goto_0

    .line 1542
    :cond_3
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWideViewPort()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1543
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    goto :goto_1

    .line 1545
    :cond_4
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    goto :goto_1
.end method

.method public saveRecipientAsGroupDialog()Landroid/app/Dialog;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const v8, 0x7f0802d8

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 7149
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 7155
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->toFriendly1([Lcom/android/emailcommon/mail/Address;)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCclength:I

    .line 7156
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->toFriendly1([Lcom/android/emailcommon/mail/Address;)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTolength:I

    .line 7158
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCclength:I

    if-lez v0, :cond_2

    .line 7160
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 7162
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mGroupRange:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 7163
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v6, 0x7f0802d0

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v7

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v7, 0x7f0802d9

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mGroupRange:[Ljava/lang/String;

    :cond_0
    move v0, v1

    .line 7170
    :goto_0
    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mGroupRange:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_1

    .line 7171
    new-instance v5, Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeItem;

    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mGroupRange:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-direct {v5, p0, v6}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeItem;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;)V

    .line 7173
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7176
    :cond_1
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeAdapter;

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v6, 0x7f040095

    invoke-direct {v0, p0, v5, v6, v4}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeAdapter;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRecipientRangeAdapter:Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeAdapter;

    .line 7179
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7180
    const-string v3, "range"

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 7182
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRecipientRangeAdapter:Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeAdapter;

    new-instance v4, Lcom/android/email/activity/MessageViewFragmentBase$14;

    invoke-direct {v4, p0}, Lcom/android/email/activity/MessageViewFragmentBase$14;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    invoke-virtual {v0, v3, v1, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7205
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v3, 0x7f080043

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7207
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->BgColorDialog:Landroid/app/AlertDialog;

    .line 7208
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mList:Landroid/widget/ListView;

    .line 7209
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 7210
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->BgColorDialog:Landroid/app/AlertDialog;

    .line 7214
    :goto_1
    return-object v0

    .line 7213
    :cond_2
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTolength:I

    invoke-direct {p0, v0, v1, v8, v7}, Lcom/android/email/activity/MessageViewFragmentBase;->showRecipientList(IIII)V

    move-object v0, v2

    .line 7214
    goto :goto_1
.end method

.method public setAlwaysDecryptOrVerifyMails(Z)V
    .locals 5
    .parameter "always"

    .prologue
    .line 8622
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->PREFERENCES_FILE:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 8624
    .local v1, mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 8625
    .local v0, editPref:Landroid/content/SharedPreferences$Editor;
    const-string v2, "isCheckSMIME"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 8626
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 8627
    return-void
.end method

.method public setBubbleLayout(I)V
    .locals 2
    .parameter "newWidth"

    .prologue
    const/4 v1, 0x0

    .line 1310
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->setExpectedLayoutWidth(I)V

    .line 1311
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->setExpectedLayoutWidth(I)V

    .line 1312
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->rebuildBubbleLayout(I)V

    .line 1313
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->rebuildBubbleLayout(I)V

    .line 1314
    return-void
.end method

.method public setCallback(Lcom/android/email/activity/MessageViewFragmentBase$Callback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 1391
    if-nez p1, :cond_0

    sget-object p1, Lcom/android/email/activity/MessageViewFragmentBase$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    .end local p1
    :cond_0
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCallback:Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    .line 1392
    return-void
.end method

.method setCurrentTab(I)V
    .locals 0
    .parameter "tab"

    .prologue
    .line 1789
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->setTabTextStyle(I)V

    .line 1790
    iput p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurrentTab:I

    .line 1791
    return-void
.end method

.method public setViewFontSize(I)V
    .locals 9
    .parameter "zoom"

    .prologue
    const/16 v8, 0xd

    const/16 v7, 0x12

    const/4 v6, 0x1

    const/16 v5, 0x10

    const/16 v4, 0x14

    .line 6952
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 6954
    .local v2, webSettings:Landroid/webkit/WebSettings;
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;->USE_MINIMUMFONTSIZE_SEC2:Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;

    .line 6955
    .local v0, fontSizeMode:Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;
    sget-object v3, Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;->USE_TEXTSIZE:Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;

    if-ne v0, v3, :cond_1

    .line 6956
    sget-object v1, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    .line 6958
    .local v1, size:Landroid/webkit/WebSettings$TextSize;
    packed-switch p1, :pswitch_data_0

    .line 6975
    :goto_0
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    .line 7145
    .end local v1           #size:Landroid/webkit/WebSettings$TextSize;
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->loadMessageIfResumed()V

    .line 7146
    return-void

    .line 6960
    .restart local v1       #size:Landroid/webkit/WebSettings$TextSize;
    :pswitch_0
    sget-object v1, Landroid/webkit/WebSettings$TextSize;->SMALLEST:Landroid/webkit/WebSettings$TextSize;

    .line 6961
    goto :goto_0

    .line 6963
    :pswitch_1
    sget-object v1, Landroid/webkit/WebSettings$TextSize;->SMALLER:Landroid/webkit/WebSettings$TextSize;

    .line 6964
    goto :goto_0

    .line 6966
    :pswitch_2
    sget-object v1, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    .line 6967
    goto :goto_0

    .line 6969
    :pswitch_3
    sget-object v1, Landroid/webkit/WebSettings$TextSize;->LARGER:Landroid/webkit/WebSettings$TextSize;

    .line 6970
    goto :goto_0

    .line 6972
    :pswitch_4
    sget-object v1, Landroid/webkit/WebSettings$TextSize;->LARGEST:Landroid/webkit/WebSettings$TextSize;

    goto :goto_0

    .line 6976
    .end local v1           #size:Landroid/webkit/WebSettings$TextSize;
    :cond_1
    sget-object v3, Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;->USE_MINIMUMFONTSIZE_IPAD1:Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;

    if-ne v0, v3, :cond_2

    .line 6977
    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 6978
    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    .line 6979
    packed-switch p1, :pswitch_data_1

    goto :goto_1

    .line 6981
    :pswitch_5
    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 6982
    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto :goto_1

    .line 6985
    :pswitch_6
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 6986
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto :goto_1

    .line 6989
    :pswitch_7
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 6990
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto :goto_1

    .line 6993
    :pswitch_8
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 6994
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto :goto_1

    .line 6997
    :pswitch_9
    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 6998
    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto :goto_1

    .line 7001
    :cond_2
    sget-object v3, Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;->USE_MINIMUMFONTSIZE_IPAD2:Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;

    if-ne v0, v3, :cond_3

    .line 7002
    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 7003
    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    .line 7004
    packed-switch p1, :pswitch_data_2

    goto :goto_1

    .line 7006
    :pswitch_a
    invoke-virtual {v2, v8}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 7007
    invoke-virtual {v2, v8}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto :goto_1

    .line 7010
    :pswitch_b
    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 7011
    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto :goto_1

    .line 7014
    :pswitch_c
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 7015
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto :goto_1

    .line 7018
    :pswitch_d
    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 7019
    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto :goto_1

    .line 7022
    :pswitch_e
    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 7023
    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_1

    .line 7026
    :cond_3
    sget-object v3, Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;->USE_MINIMUMFONTSIZE_SEC:Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;

    if-ne v0, v3, :cond_4

    .line 7027
    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 7028
    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    .line 7029
    packed-switch p1, :pswitch_data_3

    goto/16 :goto_1

    .line 7031
    :pswitch_f
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 7032
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_1

    .line 7035
    :pswitch_10
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 7036
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_1

    .line 7039
    :pswitch_11
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 7040
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_1

    .line 7043
    :pswitch_12
    const/16 v3, 0x1c

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 7044
    const/16 v3, 0x1c

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_1

    .line 7047
    :pswitch_13
    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 7048
    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_1

    .line 7051
    :cond_4
    sget-object v3, Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;->USE_MINIMUMFONTSIZE_SEC2:Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;

    if-ne v0, v3, :cond_6

    .line 7052
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseEmailViewPort()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 7053
    packed-switch p1, :pswitch_data_4

    goto/16 :goto_1

    .line 7055
    :pswitch_14
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 7056
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    .line 7057
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 7058
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_1

    .line 7061
    :pswitch_15
    invoke-virtual {v2, v8}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 7062
    invoke-virtual {v2, v8}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    .line 7063
    invoke-virtual {v2, v8}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 7064
    invoke-virtual {v2, v8}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_1

    .line 7067
    :pswitch_16
    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 7068
    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    .line 7069
    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 7070
    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_1

    .line 7073
    :pswitch_17
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 7074
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    .line 7075
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 7076
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_1

    .line 7079
    :pswitch_18
    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 7080
    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    .line 7081
    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 7082
    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_1

    .line 7086
    :cond_5
    packed-switch p1, :pswitch_data_5

    goto/16 :goto_1

    .line 7088
    :pswitch_19
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 7089
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    .line 7090
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 7091
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_1

    .line 7094
    :pswitch_1a
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 7095
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    .line 7096
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 7097
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_1

    .line 7100
    :pswitch_1b
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 7101
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    .line 7102
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 7103
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_1

    .line 7106
    :pswitch_1c
    const/16 v3, 0x1c

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 7107
    const/16 v3, 0x1c

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    .line 7108
    const/16 v3, 0x1c

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 7109
    const/16 v3, 0x1c

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_1

    .line 7112
    :pswitch_1d
    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 7113
    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    .line 7114
    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 7115
    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_1

    .line 7119
    :cond_6
    sget-object v3, Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;->USE_MINIMUMLOGICALFONTSIZE:Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;

    if-ne v0, v3, :cond_0

    .line 7120
    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 7121
    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    .line 7122
    packed-switch p1, :pswitch_data_6

    goto/16 :goto_1

    .line 7124
    :pswitch_1e
    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_1

    .line 7127
    :pswitch_1f
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_1

    .line 7130
    :pswitch_20
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_1

    .line 7133
    :pswitch_21
    const/16 v3, 0x1a

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_1

    .line 7136
    :pswitch_22
    const/16 v3, 0x3c

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_1

    .line 6958
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 6979
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 7004
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch

    .line 7029
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch

    .line 7053
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch

    .line 7086
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
    .end packed-switch

    .line 7122
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
    .end packed-switch
.end method

.method public showContent(ZZ)V
    .locals 2
    .parameter "showContent"
    .parameter "showProgressWhenHidden"

    .prologue
    .line 1483
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadingProgress:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1490
    :goto_0
    return-void

    .line 1487
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    invoke-static {v0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 1488
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadingProgress:Landroid/view/View;

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public showDownloadITPolicyToast()V
    .locals 3

    .prologue
    .line 3429
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0803ce

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    .line 3431
    return-void
.end method

.method public showHTMLITPolicyToast()V
    .locals 3

    .prologue
    .line 3438
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0803d0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    .line 3439
    return-void
.end method

.method public showLoadMoreButton(Z)V
    .locals 4
    .parameter

    .prologue
    const/16 v1, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1318
    .line 1320
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 1321
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->showingLoadMore:Z

    if-eqz v0, :cond_2

    .line 1322
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMoreMessage:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1323
    const-string v0, "Inline Image"

    const-string v1, "Showing Load More2"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMoreMessage:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 1325
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMoreMessage:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1327
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMoreMessageHolder:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1328
    const-string v0, "Inline Image"

    const-string v1, "Showing Load More1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMoreMessageHolder:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 1330
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMoreMessageHolder:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1341
    :cond_1
    :goto_0
    return-void

    .line 1333
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMoreMessageHolder:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1334
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMoreMessageHolder:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1336
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMoreMessage:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1337
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMoreMessage:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showPop3ImapITPolicyToast()V
    .locals 3

    .prologue
    .line 3434
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0803cf

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    .line 3435
    return-void
.end method

.method protected showPopUpOnImage(I)Landroid/app/Dialog;
    .locals 11
    .parameter

    .prologue
    const/4 v4, 0x0

    const v10, 0x7f0801e9

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 6548
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 6550
    packed-switch p1, :pswitch_data_0

    .line 6655
    :goto_0
    return-object v4

    .line 6555
    :pswitch_0
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageWebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v3

    .line 6556
    invoke-virtual {v3}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v5

    .line 6558
    const/4 v3, 0x4

    new-array v6, v3, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v7, 0x7f0801a7

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v0

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v7, 0x7f0801a8

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v1

    const/4 v3, 0x2

    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v8, 0x7f0801a9

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    const/4 v3, 0x3

    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v8, 0x7f0801aa

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    .line 6565
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6569
    const-string v2, "content://"

    invoke-virtual {v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    move v3, v0

    move-object v2, v4

    .line 6570
    :goto_1
    sget-object v8, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    array-length v8, v8

    if-ge v3, v8, :cond_3

    if-nez v0, :cond_3

    .line 6571
    sget-object v8, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    aget-object v8, v8, v3

    if-nez v8, :cond_1

    .line 6572
    const-string v8, "Email"

    const-string v9, "FILENAME = mBodyImageInfo is null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6570
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 6576
    :cond_1
    sget-object v8, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    aget-object v8, v8, v3

    iget-object v8, v8, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;->mContentUri:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 6577
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;->mFileName:Ljava/lang/String;

    move-object v2, v0

    move v0, v1

    .line 6578
    goto :goto_2

    .line 6581
    :cond_2
    const-string v2, "http://"

    invoke-virtual {v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6

    .line 6582
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 6583
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    move v0, v1

    .line 6587
    :cond_3
    :goto_3
    if-ne v0, v1, :cond_5

    .line 6588
    if-eqz v2, :cond_4

    .line 6589
    invoke-virtual {v7, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 6597
    :goto_4
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v1, 0x7f080043

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/email/activity/MessageViewFragmentBase$12;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageViewFragmentBase$12;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6603
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$13;

    invoke-direct {v0, p0, v5}, Lcom/android/email/activity/MessageViewFragmentBase$13;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;)V

    invoke-virtual {v7, v6, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6650
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 6591
    :cond_4
    invoke-virtual {v7, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_4

    .line 6594
    :cond_5
    invoke-virtual {v7, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_4

    :cond_6
    move-object v2, v4

    goto :goto_3

    .line 6550
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public startAttachmentDownloadForZ7(JJ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 9191
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    if-nez v0, :cond_0

    .line 9192
    const-string v0, "MessageViewFragmentBase >>"

    const-string v1, "startAttachmentDownloadForZ7 : mHandler is null"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 9205
    :goto_0
    return-void

    .line 9195
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 9196
    const v1, 0x186a1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 9197
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 9199
    long-to-int v1, p3

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 9200
    sget v1, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCnt_saved:I

    if-nez v1, :cond_1

    .line 9201
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    invoke-virtual {v1, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 9203
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public startSmimeProcessing()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 8638
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-boolean v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-boolean v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mProcessed:Z

    if-nez v0, :cond_1

    .line 8639
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeHandlerTask:Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;

    .line 8640
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeHandlerTask:Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 8650
    :cond_0
    :goto_0
    return-void

    .line 8641
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-boolean v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-boolean v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mProcessed:Z

    if-nez v0, :cond_0

    .line 8644
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    const-string v1, "__attachment_message_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8645
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeHandlerTask:Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;

    .line 8646
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeHandlerTask:Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 8648
    :cond_2
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->onMoreMessage()V

    goto :goto_0
.end method

.method protected updateHeaderView(Lcom/android/emailcommon/provider/EmailContent$Message;Z)V
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x4

    const/4 v10, 0x1

    const/16 v9, 0x8

    const/4 v2, 0x0

    .line 5188
    if-ne p2, v10, :cond_a

    .line 5189
    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->unpackFirst(Ljava/lang/String;)Lcom/android/emailcommon/mail/Address;

    move-result-object v3

    .line 5190
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v4

    .line 5191
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v5

    .line 5193
    const-string v1, ""

    .line 5194
    const-string v0, ""

    .line 5195
    if-eqz v3, :cond_0

    .line 5196
    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Address;->toFriendly()Ljava/lang/String;

    move-result-object v1

    .line 5197
    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 5198
    iget-object v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->senderInfoForPhotoImage:Ljava/lang/String;

    .line 5201
    :cond_0
    iget-object v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    if-eqz v6, :cond_1

    const-string v6, ""

    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 5202
    :cond_1
    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSubjectView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v8, 0x7f0801e9

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5206
    :goto_0
    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    invoke-virtual {v6}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->resetLayout()V

    .line 5207
    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    invoke-virtual {v6}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->resetLayout()V

    .line 5208
    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    invoke-virtual {v6}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->resetLayout()V

    .line 5210
    iput-boolean v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHasCcList:Z

    .line 5211
    iput-boolean v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHasToList:Z

    .line 5212
    iput-boolean v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsOpenedRecipientInfo:Z

    .line 5220
    if-eqz v3, :cond_2

    .line 5221
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    iget-object v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-virtual {v3, v10, v6}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->setType(ILjava/lang/String;)V

    .line 5222
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    invoke-virtual {v3, v1, v0, v2}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->addButton(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 5225
    :cond_2
    array-length v0, v4

    if-lez v0, :cond_4

    .line 5226
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-virtual {v0, v12, v1}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->setType(ILjava/lang/String;)V

    .line 5227
    iput-boolean v10, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHasToList:Z

    move v0, v2

    .line 5228
    :goto_1
    array-length v1, v4

    if-ge v0, v1, :cond_4

    .line 5229
    aget-object v1, v4, v0

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Address;->toFriendly()Ljava/lang/String;

    move-result-object v1

    .line 5230
    aget-object v3, v4, v0

    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 5231
    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    invoke-virtual {v6, v1, v3, v0}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->addButton(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 5228
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5204
    :cond_3
    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSubjectView:Landroid/widget/TextView;

    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5235
    :cond_4
    array-length v0, v5

    if-lez v0, :cond_5

    .line 5236
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    const/4 v1, 0x3

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->setType(ILjava/lang/String;)V

    .line 5237
    iput-boolean v10, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHasCcList:Z

    move v0, v2

    .line 5238
    :goto_2
    array-length v1, v5

    if-ge v0, v1, :cond_5

    .line 5239
    aget-object v1, v5, v0

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Address;->toFriendly()Ljava/lang/String;

    move-result-object v1

    .line 5240
    aget-object v3, v5, v0

    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 5241
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    invoke-virtual {v4, v1, v3, v0}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->addButton(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 5238
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 5245
    :cond_5
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHasToList:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHasCcList:Z

    if-nez v0, :cond_e

    .line 5246
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mExpanderButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 5251
    :goto_3
    const-string v0, "eas"

    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountSchema:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPriorityIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    .line 5252
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPriorityIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5255
    :cond_6
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v0

    if-nez v0, :cond_9

    .line 5256
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLastVerbDateTimeLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_7

    .line 5257
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLastVerbDateTimeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5259
    :cond_7
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPermission:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    .line 5260
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPermission:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5262
    :cond_8
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->templateDescriptionLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    .line 5263
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->templateDescriptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5267
    :cond_9
    new-instance v0, Ljava/util/Date;

    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 5269
    :try_start_0
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDateTimeView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5277
    :goto_4
    const-string v0, "eas"

    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountSchema:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 5279
    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagStatus:I

    .line 5281
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSplitMode()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 5282
    packed-switch v0, :pswitch_data_0

    .line 5311
    :cond_a
    :goto_5
    const-string v0, "eas"

    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountSchema:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 5312
    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mImportance:I

    if-ne v0, v12, :cond_14

    .line 5313
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPriorityIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200ba

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5314
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPriorityIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5322
    :goto_6
    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageType:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_16

    .line 5323
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTypeIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200c4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5324
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTypeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5332
    :goto_7
    iget-boolean v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    if-eqz v0, :cond_18

    .line 5333
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSignIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5338
    :goto_8
    iget-boolean v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    if-eqz v0, :cond_19

    .line 5339
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mEncryptionIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5347
    :cond_b
    :goto_9
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mLastVerb:I

    if-lez v0, :cond_c

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mLastVerbTime:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-lez v0, :cond_c

    .line 5348
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLastVerbDateTimeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5349
    const/4 v0, 0x0

    .line 5351
    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mLastVerb:I

    packed-switch v1, :pswitch_data_1

    .line 5365
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLastVerbDateTimeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5367
    :goto_a
    if-eqz v0, :cond_c

    .line 5368
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLastVerbDateTimeView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5395
    :cond_c
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v0

    if-ne v0, v10, :cond_d

    .line 5396
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v0, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 5397
    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide v3, 0x402c333333333333L

    cmpl-double v0, v0, v3

    if-ltz v0, :cond_1b

    .line 5398
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/irm/IRMEnforcer;->getInstance(Landroid/content/Context;)Lcom/android/email/irm/IRMEnforcer;

    move-result-object v0

    .line 5399
    iget-wide v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    invoke-virtual {v0, v3, v4}, Lcom/android/email/irm/IRMEnforcer;->isIRMEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 5400
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPermission:Landroid/widget/ImageView;

    if-eqz v0, :cond_d

    .line 5401
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPermission:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5402
    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateName:Ljava/lang/String;

    .line 5403
    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateDescription:Ljava/lang/String;

    .line 5404
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->templateDescription:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5405
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->templateDescription:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5407
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPermission:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/email/activity/MessageViewFragmentBase$10;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageViewFragmentBase$10;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5434
    :cond_d
    :goto_b
    return-void

    .line 5248
    :cond_e
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mExpanderButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v10}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_3

    .line 5273
    :catch_0
    move-exception v0

    .line 5274
    const-string v0, "MessageViewFragmentBase >>"

    const-string v1, "updateHeaderView : Exception has occoured"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 5284
    :pswitch_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFollowUpFlagClear:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    .line 5287
    :pswitch_1
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFollowUpFlagComplete:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    .line 5290
    :pswitch_2
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFollowUpFlagSet:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    .line 5294
    :cond_f
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    .line 5297
    :cond_10
    iget-boolean v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    .line 5298
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIconOn:Landroid/graphics/drawable/Drawable;

    :goto_c
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5299
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSplitMode()Z

    move-result v0

    if-eqz v0, :cond_13

    sget-boolean v0, Lcom/android/email/activity/Welcome;->needFull:Z

    if-nez v0, :cond_13

    .line 5300
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v10, :cond_12

    .line 5301
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    .line 5298
    :cond_11
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIconOff:Landroid/graphics/drawable/Drawable;

    goto :goto_c

    .line 5303
    :cond_12
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    .line 5306
    :cond_13
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    .line 5315
    :cond_14
    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mImportance:I

    if-nez v0, :cond_15

    .line 5316
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPriorityIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200bc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5317
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPriorityIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    .line 5319
    :cond_15
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPriorityIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    .line 5325
    :cond_16
    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageType:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_17

    .line 5326
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTypeIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200c2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5327
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTypeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    .line 5329
    :cond_17
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTypeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    .line 5335
    :cond_18
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSignIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_8

    .line 5341
    :cond_19
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mEncryptionIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_9

    .line 5353
    :pswitch_3
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v1, 0x7f0803c5

    new-array v3, v10, [Ljava/lang/Object;

    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mLastVerbTime:J

    invoke-direct {p0, v4, v5}, Lcom/android/email/activity/MessageViewFragmentBase;->formatDateTime(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    .line 5357
    :pswitch_4
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v1, 0x7f0803c6

    new-array v3, v10, [Ljava/lang/Object;

    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mLastVerbTime:J

    invoke-direct {p0, v4, v5}, Lcom/android/email/activity/MessageViewFragmentBase;->formatDateTime(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    .line 5361
    :pswitch_5
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v1, 0x7f0803c7

    new-array v3, v10, [Ljava/lang/Object;

    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mLastVerbTime:J

    invoke-direct {p0, v4, v5}, Lcom/android/email/activity/MessageViewFragmentBase;->formatDateTime(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    .line 5423
    :cond_1a
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPermission:Landroid/widget/ImageView;

    if-eqz v0, :cond_d

    .line 5424
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPermission:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5425
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->templateDescriptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_b

    .line 5428
    :cond_1b
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPermission:Landroid/widget/ImageView;

    if-eqz v0, :cond_d

    .line 5429
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPermission:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5430
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->templateDescriptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_b

    .line 5282
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 5351
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected updateTabFlags(I)V
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1726
    iput p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabFlags:I

    .line 1728
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_2

    .line 1729
    new-instance v3, Lcom/android/emailcommon/mail/PackedString;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    invoke-direct {v3, v0}, Lcom/android/emailcommon/mail/PackedString;-><init>(Ljava/lang/String;)V

    .line 1730
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-wide v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    invoke-static {v0, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 1731
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProposeNewTime:Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    .line 1732
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->view:Landroid/view/View;

    const v4, 0x7f1001db

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProposeNewTime:Landroid/widget/CheckBox;

    .line 1733
    :cond_0
    const-string v0, "PROPOSE_NEW_TIME"

    invoke-virtual {v3, v0}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1734
    if-eqz v0, :cond_8

    .line 1735
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_7

    .line 1736
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProposeNewTime:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 1744
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProposeNewTime:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1746
    :cond_2
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_3

    .line 1747
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurColorCode:I

    if-ne v0, v6, :cond_9

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFontColorCode:[I

    aget v0, v0, v6

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->setResponseOptions(I)V

    .line 1750
    :cond_3
    and-int/lit8 v0, p1, 0x3

    if-eqz v0, :cond_a

    move v0, v1

    .line 1751
    :goto_2
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTab:Landroid/widget/TextView;

    invoke-static {v3, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 1752
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_b

    move v0, v1

    :goto_3
    invoke-static {v3, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 1753
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_c

    move v0, v1

    :goto_4
    invoke-static {v3, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 1755
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0007

    iget v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCount:I

    new-array v6, v1, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1761
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabSection:Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTab:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->isVisible(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->isVisible(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->isVisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    move v2, v1

    :cond_5
    invoke-static {v0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 1764
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1765
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1766
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1769
    :cond_6
    return-void

    .line 1737
    :cond_7
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 1739
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProposeNewTime:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1742
    :cond_8
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProposeNewTime:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1747
    :cond_9
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFontColorCode:[I

    aget v0, v0, v2

    goto/16 :goto_1

    :cond_a
    move v0, v2

    .line 1750
    goto/16 :goto_2

    :cond_b
    move v0, v2

    .line 1752
    goto :goto_3

    :cond_c
    move v0, v2

    .line 1753
    goto :goto_4
.end method
