.class public Lcom/android/email/activity/MessageCompose;
.super Landroid/app/Activity;
.source "MessageCompose.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/email/activity/DeleteMessageConfirmationDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageCompose$AddAddessTask;,
        Lcom/android/email/activity/MessageCompose$ControllerResults;,
        Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;,
        Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;,
        Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;,
        Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;,
        Lcom/android/email/activity/MessageCompose$MessageComposeListener;,
        Lcom/android/email/activity/MessageCompose$AccountInfoItem;,
        Lcom/android/email/activity/MessageCompose$AccountDialogArrayAdaptor;,
        Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;,
        Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;,
        Lcom/android/email/activity/MessageCompose$LoadAttachmentTask;,
        Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;,
        Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;,
        Lcom/android/email/activity/MessageCompose$LoadMessageTask;,
        Lcom/android/email/activity/MessageCompose$SecurityPolicyArrayAdaptor;
    }
.end annotation


# static fields
.field private static final ATTACHMENT_META_COLUMNS:[Ljava/lang/String;

.field private static final ATTACHMENT_META_SIZE_PROJECTION:[Ljava/lang/String;

.field public static Notificationdata:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mDefaultFontSize:I

.field public static mIsSpellCheckMode:Z

.field private static mMainDictionary:Lcom/android/email/activity/utils/spellcheck/BinaryDictionary;

.field private static mStartWithIntent:Landroid/content/Intent;

.field private static mUserDictionary:Lcom/android/email/activity/utils/spellcheck/UserDictionary;

.field public static note:Landroid/app/Notification;

.field public static notificationManager:Landroid/app/NotificationManager;

.field private static sSaveInProgress:Z

.field private static final sSaveInProgressCondition:Ljava/lang/Object;

.field private static spellcheck_x:I

.field private static spellcheck_y:I

.field private static tLastSpellcheck:J


# instance fields
.field private DPMReceiver:Landroid/content/BroadcastReceiver;

.field private bIsDeliveryChecked:Z

.field private bIsEncryptChecked:Z

.field private bIsHtmlComposerFocused:Z

.field private bIsReadChecked:Z

.field private bIsSignChecked:Z

.field private bUserDictionaryPushedToWebkit:Z

.field private irmRemoveView:Landroid/widget/ImageView;

.field private isFirstCall:Z

.field private isSyncedDraftMessage:Z

.field private mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

.field private mAccountCheckDialog:Landroid/app/AlertDialog;

.field private mAccountDialog:Landroid/app/AlertDialog;

.field private mAccountInfoArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MessageCompose$AccountInfoItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAction:Ljava/lang/String;

.field private mActionBar:Landroid/app/ActionBar;

.field private mActionBar_Title:Landroid/widget/TextView;

.field private mActionBar_attach:Landroid/widget/LinearLayout;

.field private mActionBar_mail:Landroid/widget/LinearLayout;

.field private mAddAddressContactButtonTask:Landroid/os/AsyncTask;

.field private mAddAddressFromIntentTask:Landroid/os/AsyncTask;

.field private mAddAddressProgressDialog:Landroid/app/ProgressDialog;

.field private mAddAttachmentDialog:Landroid/app/AlertDialog;

.field private mAddAttachmentTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mAddBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

.field private mAddressAdapterBcc:Lcom/android/email/EmailAddressAdapter;

.field private mAddressAdapterCc:Lcom/android/email/EmailAddressAdapter;

.field private mAddressAdapterTo:Lcom/android/email/EmailAddressAdapter;

.field private mApp:Lcom/android/email/Email;

.field private mAttachmentCnt:I

.field private mAttachmentDeleteAllDialog:Landroid/app/AlertDialog;

.field private mAttachmentLayout:Landroid/widget/LinearLayout;

.field private mAttachmentSummaryLayout:Landroid/widget/RelativeLayout;

.field private mAttachmentSummaryUpDownBtn:Landroid/widget/ImageView;

.field private mAttachmentTotalCount:I

.field private mAttachmentTotalSize:I

.field private mAttachments:Landroid/widget/LinearLayout;

.field private mAttatchment_fetched:I

.field private mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

.field private mBccContactBtn:Landroid/widget/ImageButton;

.field private mBccEditLayout:Landroid/widget/RelativeLayout;

.field private mBccEditView:Lcom/android/email/activity/AddressTextView;

.field private mBccLayout:Landroid/widget/RelativeLayout;

.field private mBccSummaryText:Landroid/widget/TextView;

.field private mBccTitleText:Landroid/widget/TextView;

.field private mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

.field private mCcContactBtn:Landroid/widget/ImageButton;

.field private mCcEditLayout:Landroid/widget/RelativeLayout;

.field private mCcEditView:Lcom/android/email/activity/AddressTextView;

.field private mCcLayout:Landroid/widget/RelativeLayout;

.field private mCcSummaryText:Landroid/widget/TextView;

.field private mCcTitleText:Landroid/widget/TextView;

.field private mChangeFontSize:I

.field private mCntPressedSemicolon:I

.field private mCompose_header_layout:Landroid/widget/LinearLayout;

.field private mController:Lcom/android/email/Controller;

.field private mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/email/ControllerResultUiThreadWrapper",
            "<",
            "Lcom/android/email/activity/MessageCompose$ControllerResults;",
            ">;"
        }
    .end annotation
.end field

.field private mControllerResult:Lcom/android/email/Controller$Result;

.field private mCurrentAccountInfoItem:Lcom/android/email/activity/MessageCompose$AccountInfoItem;

.field private mCurrentOrientation:I

.field private mDoNotSaveDraft:Z

.field private mDownloadSmimeAttachment:Z

.field private mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

.field private mDraftNeedsSaving:Z

.field private mDummy_view:Landroid/widget/LinearLayout;

.field private mEditFromBubble:Z

.field private mEmbeddedImageDownload:Z

.field private mEncryptionIcon:Landroid/widget/ImageView;

.field private mFromLayout:Landroid/widget/LinearLayout;

.field private mFromLayoutMode:I

.field private mFromSummaryText:Landroid/widget/TextView;

.field private mGetCertificatesTask:Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;

.field private mHandler:Landroid/os/Handler;

.field private mHeightLayout_TooBarView:Landroid/widget/LinearLayout;

.field private mHtmlComposeMenu:Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;

.field private mHtmlComposerView:Landroid/webkit/HtmlComposerView;

.field private mIgnoreDraftNeedsSaving:Z

.field private mInitialText:Ljava/lang/StringBuffer;

.field private mInlineImageCallbackCount:I

.field private mInlineImageCount:I

.field private mInlineImageDialog:Landroid/app/ProgressDialog;

.field private mInsertTextOrImageDialog:Landroid/app/AlertDialog;

.field private mIrmIcon:Landroid/widget/ImageView;

.field private mIrmWait:Landroid/app/ProgressDialog;

.field private mIsDeliveryChecked:Z

.field private mIsDetectedUserAction:Z

.field private mIsEncryptChecked:Z

.field private mIsExistFile:Z

.field private mIsOriginMsgEdited:Z

.field private mIsReadChecked:Z

.field private mIsSignChecked:Z

.field private mLastDeleteBtn:Landroid/widget/ImageView;

.field private mLayout_ToolBarView:Landroid/widget/LinearLayout;

.field private mLayout_ToolBarView_noscroll:Landroid/widget/LinearLayout;

.field private mLoadAttachmentId:J

.field private mLoadAttachmentName:Ljava/lang/String;

.field private mLoadAttachmentSave:Z

.field private mLoadAttachmentsTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;",
            "[",
            "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadAttachmentsTaskFromIntent:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Parcelable;",
            ">;",
            "Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadAttachmentsTaskFromUri:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Landroid/net/Uri;",
            "Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadEmbeddedAttachmentsTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Void;",
            "[",
            "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadMessageTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadMoreDialog:Landroid/app/ProgressDialog;

.field private mLocationMode:I

.field private mMessageId:J

.field private mMessageLoaded:Z

.field private mOnSend:Z

.field private mOriginalMessageId:J

.field private mOriginalMessageIdForIRM:J

.field private mPriority:I

.field private mPriorityDialog:Landroid/app/AlertDialog;

.field private mPriorityHighIcon:Landroid/widget/ImageView;

.field private mPriorityLowIcon:Landroid/widget/ImageView;

.field private mProgressDialog1:Landroid/app/ProgressDialog;

.field private mProgressSpellChecking:Landroid/app/ProgressDialog;

.field private mQuotedMenu:Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;

.field private mQuotedText:Landroid/webkit/HtmlComposerView;

.field private mQuotedTextBar:Landroid/view/View;

.field private mQuotedTextDelete:Landroid/widget/ImageView;

.field private mReceiptsOptionsDialog:Landroid/app/AlertDialog;

.field private mSMIMEUtilsCallback:Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;

.field private mSaveDialog:Landroid/app/AlertDialog;

.field private mSaveEnabled:Z

.field private mScrollCount:I

.field private mScrollView:Lcom/android/email/ExtendedScrollView;

.field private mScrolledDistance:F

.field private mSecurityOptions:Z

.field private mSecurityOptionsDialog:Landroid/app/AlertDialog;

.field private mSecurityPolicyDialog:Landroid/app/AlertDialog;

.field private mSelectedQuickResponseStringType:I

.field private mSelectedResizeType:I

.field private mSendOrSaveMessageTask:Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;

.field private mSignIcon:Landroid/widget/ImageView;

.field private mSmimeHandlerTask:Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;

.field private mSmimeProgressDialog:Landroid/app/ProgressDialog;

.field private mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

.field private mSourceMessageProcessed:Z

.field private mSubjectTitleText:Landroid/widget/TextView;

.field private mSubjectView:Landroid/widget/EditText;

.field private mTemplateDescription:Ljava/lang/String;

.field private mTemplateId:Ljava/lang/String;

.field private mTemplateName:Ljava/lang/String;

.field private mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

.field private mToContactBtn:Landroid/widget/ImageButton;

.field private mToEditLayout:Landroid/widget/RelativeLayout;

.field private mToEditView:Lcom/android/email/activity/AddressTextView;

.field private mToLayout:Landroid/widget/RelativeLayout;

.field private mToSummaryText:Landroid/widget/TextView;

.field private mToTitleText:Landroid/widget/TextView;

.field private mToast:Landroid/widget/Toast;

.field private mToolBarView:Lcom/android/email/activity/ToolBarView;

.field private mToolBarView_noscroll:Lcom/android/email/activity/ToolBarView;

.field private mToolbarLayout:Landroid/widget/RelativeLayout;

.field private mToolbarLayoutNoscroll:Landroid/widget/RelativeLayout;

.field private mTouchEventY:F

.field public m_bIsSoftInputPadShowing:Z

.field private misspelledWordSelected:Z

.field private reqReceiver:Landroid/content/BroadcastReceiver;

.field private sendorsave:Z

.field private showMoreHandler:Landroid/os/Handler;

.field private smimeutils:Lcom/android/email/SMIMEHelperUtils;

.field suggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private templateDescription:Landroid/widget/TextView;

.field private templateDescriptionLayout:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 283
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_display_name"

    aput-object v1, v0, v2

    const-string v1, "_size"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/email/activity/MessageCompose;->ATTACHMENT_META_COLUMNS:[Ljava/lang/String;

    .line 287
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_size"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/email/activity/MessageCompose;->ATTACHMENT_META_SIZE_PROJECTION:[Ljava/lang/String;

    .line 385
    sput-boolean v2, Lcom/android/email/activity/MessageCompose;->sSaveInProgress:Z

    .line 388
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageCompose;->sSaveInProgressCondition:Ljava/lang/Object;

    .line 533
    sput-object v3, Lcom/android/email/activity/MessageCompose;->mMainDictionary:Lcom/android/email/activity/utils/spellcheck/BinaryDictionary;

    .line 534
    sput-object v3, Lcom/android/email/activity/MessageCompose;->mUserDictionary:Lcom/android/email/activity/utils/spellcheck/UserDictionary;

    .line 542
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/email/activity/MessageCompose;->tLastSpellcheck:J

    .line 708
    sput-object v3, Lcom/android/email/activity/MessageCompose;->mStartWithIntent:Landroid/content/Intent;

    .line 764
    const/16 v0, 0x18

    sput v0, Lcom/android/email/activity/MessageCompose;->mDefaultFontSize:I

    .line 6753
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageCompose;->Notificationdata:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 235
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 300
    iput v2, p0, Lcom/android/email/activity/MessageCompose;->mFromLayoutMode:I

    .line 393
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 409
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mSourceMessageProcessed:Z

    .line 436
    const/16 v0, 0x3f1

    iput v0, p0, Lcom/android/email/activity/MessageCompose;->mLocationMode:I

    .line 439
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mDownloadSmimeAttachment:Z

    .line 462
    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAccountCheckDialog:Landroid/app/AlertDialog;

    .line 464
    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mSecurityPolicyDialog:Landroid/app/AlertDialog;

    .line 466
    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mSaveDialog:Landroid/app/AlertDialog;

    .line 469
    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mSecurityOptionsDialog:Landroid/app/AlertDialog;

    .line 470
    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mReceiptsOptionsDialog:Landroid/app/AlertDialog;

    .line 472
    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAddAttachmentDialog:Landroid/app/AlertDialog;

    .line 474
    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mPriorityDialog:Landroid/app/AlertDialog;

    .line 476
    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mInsertTextOrImageDialog:Landroid/app/AlertDialog;

    .line 478
    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAccountDialog:Landroid/app/AlertDialog;

    .line 481
    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentDeleteAllDialog:Landroid/app/AlertDialog;

    .line 485
    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mSmimeProgressDialog:Landroid/app/ProgressDialog;

    .line 486
    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mLoadMoreDialog:Landroid/app/ProgressDialog;

    .line 487
    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mInlineImageDialog:Landroid/app/ProgressDialog;

    .line 526
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mDoNotSaveDraft:Z

    .line 537
    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mProgressSpellChecking:Landroid/app/ProgressDialog;

    .line 544
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->misspelledWordSelected:Z

    .line 545
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->bUserDictionaryPushedToWebkit:Z

    .line 553
    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentsTaskFromIntent:Landroid/os/AsyncTask;

    .line 556
    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentsTaskFromUri:Landroid/os/AsyncTask;

    .line 561
    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAddAttachmentTask:Landroid/os/AsyncTask;

    .line 564
    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mLoadEmbeddedAttachmentsTask:Landroid/os/AsyncTask;

    .line 565
    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mSmimeHandlerTask:Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;

    .line 577
    iput v4, p0, Lcom/android/email/activity/MessageCompose;->mPriority:I

    .line 579
    iput v2, p0, Lcom/android/email/activity/MessageCompose;->mCntPressedSemicolon:I

    .line 581
    iput v5, p0, Lcom/android/email/activity/MessageCompose;->mSelectedResizeType:I

    .line 585
    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mToast:Landroid/widget/Toast;

    .line 667
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mIsDetectedUserAction:Z

    .line 668
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mIgnoreDraftNeedsSaving:Z

    .line 671
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mIsSignChecked:Z

    .line 672
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mIsEncryptChecked:Z

    .line 673
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->bIsEncryptChecked:Z

    .line 674
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->bIsSignChecked:Z

    .line 676
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mIsOriginMsgEdited:Z

    .line 679
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mIsReadChecked:Z

    .line 680
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mIsDeliveryChecked:Z

    .line 681
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->bIsReadChecked:Z

    .line 682
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->bIsDeliveryChecked:Z

    .line 686
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mInitialText:Ljava/lang/StringBuffer;

    .line 694
    iput v2, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    .line 696
    iput v2, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalCount:I

    .line 701
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->bIsHtmlComposerFocused:Z

    .line 704
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mEditFromBubble:Z

    .line 711
    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mIrmWait:Landroid/app/ProgressDialog;

    .line 713
    new-instance v0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;

    invoke-direct {v0, p0, v3}, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposeMenu:Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;

    .line 715
    new-instance v0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;

    invoke-direct {v0, p0, v3}, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedMenu:Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;

    .line 733
    iput v2, p0, Lcom/android/email/activity/MessageCompose;->mScrollCount:I

    .line 734
    iput v1, p0, Lcom/android/email/activity/MessageCompose;->mTouchEventY:F

    .line 735
    iput v1, p0, Lcom/android/email/activity/MessageCompose;->mScrolledDistance:F

    .line 740
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->isSyncedDraftMessage:Z

    .line 741
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mEmbeddedImageDownload:Z

    .line 743
    iput v2, p0, Lcom/android/email/activity/MessageCompose;->mInlineImageCount:I

    .line 744
    iput v2, p0, Lcom/android/email/activity/MessageCompose;->mInlineImageCallbackCount:I

    .line 748
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/MessageCompose;->mOriginalMessageId:J

    .line 750
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/MessageCompose;->mOriginalMessageIdForIRM:J

    .line 752
    iput v5, p0, Lcom/android/email/activity/MessageCompose;->mSelectedQuickResponseStringType:I

    .line 757
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->m_bIsSoftInputPadShowing:Z

    .line 766
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/email/activity/MessageCompose;->mChangeFontSize:I

    .line 768
    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAddBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    .line 770
    iput-boolean v4, p0, Lcom/android/email/activity/MessageCompose;->isFirstCall:Z

    .line 1069
    new-instance v0, Lcom/android/email/activity/MessageCompose$1;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageCompose$1;-><init>(Lcom/android/email/activity/MessageCompose;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->reqReceiver:Landroid/content/BroadcastReceiver;

    .line 1362
    new-instance v0, Lcom/android/email/activity/MessageCompose$2;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageCompose$2;-><init>(Lcom/android/email/activity/MessageCompose;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->DPMReceiver:Landroid/content/BroadcastReceiver;

    .line 2865
    new-instance v0, Lcom/android/email/activity/MessageCompose$21;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageCompose$21;-><init>(Lcom/android/email/activity/MessageCompose;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->showMoreHandler:Landroid/os/Handler;

    .line 5186
    iput v2, p0, Lcom/android/email/activity/MessageCompose;->mAttatchment_fetched:I

    .line 5188
    iput-boolean v4, p0, Lcom/android/email/activity/MessageCompose;->sendorsave:Z

    .line 5190
    iput v2, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentCnt:I

    .line 6952
    new-instance v0, Lcom/android/email/activity/MessageCompose$25;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageCompose$25;-><init>(Lcom/android/email/activity/MessageCompose;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHandler:Landroid/os/Handler;

    .line 12629
    return-void
.end method

.method private AddComposeToMe()V
    .locals 6

    .prologue
    .line 6480
    const/4 v1, 0x0

    .line 6481
    .local v1, isExistMyAccount:Z
    const/4 v2, 0x0

    .line 6482
    .local v2, strArray:[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v3}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->getAddressesAsStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 6484
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 6485
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6486
    const/4 v1, 0x1

    .line 6484
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6490
    :cond_1
    if-nez v1, :cond_2

    .line 6491
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->focusToLayout(Z)V

    .line 6492
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->addButton(Ljava/lang/String;Z)Z

    .line 6493
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->shrinkCcBccLayout()V

    .line 6495
    :cond_2
    return-void
.end method

.method public static ClearComposerIntent()V
    .locals 1

    .prologue
    .line 773
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/activity/MessageCompose;->mStartWithIntent:Landroid/content/Intent;

    .line 774
    return-void
.end method

.method public static GetComposerIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 760
    sget-object v0, Lcom/android/email/activity/MessageCompose;->mStartWithIntent:Landroid/content/Intent;

    return-object v0
.end method

.method private IsDRMFile(Ljava/lang/String;)Z
    .locals 1
    .parameter "fileName"

    .prologue
    .line 11771
    const/4 v0, 0x0

    return v0
.end method

.method private IsEAS()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1022
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 1024
    if-nez v1, :cond_1

    .line 1036
    :cond_0
    :goto_0
    return v0

    .line 1027
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v1

    .line 1031
    if-eqz v1, :cond_0

    .line 1034
    iget-object v0, v1, Lcom/android/email/mail/Store$StoreInfo;->mScheme:Ljava/lang/String;

    .line 1036
    const-string v1, "eas"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private IsSnc()Z
    .locals 3

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 1043
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v0, :cond_0

    .line 1044
    const/4 v1, 0x0

    .line 1046
    :goto_0
    return v1

    :cond_0
    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2}, Lcom/android/email/Controller;->isSnc(J)Z

    move-result v1

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/email/activity/MessageCompose;)Landroid/webkit/HtmlComposerView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->arrangeScrollView()V

    return-void
.end method

.method static synthetic access$10002(Lcom/android/email/activity/MessageCompose;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->mIsOriginMsgEdited:Z

    return p1
.end method

.method static synthetic access$10100(Lcom/android/email/activity/MessageCompose;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 235
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageCompose;->changeSmimeOptions(ZZ)V

    return-void
.end method

.method static synthetic access$10200(Lcom/android/email/activity/MessageCompose;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->isEnabledGPS()Z

    move-result v0

    return v0
.end method

.method static synthetic access$10300(Lcom/android/email/activity/MessageCompose;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget v0, p0, Lcom/android/email/activity/MessageCompose;->mLocationMode:I

    return v0
.end method

.method static synthetic access$10400(Lcom/android/email/activity/MessageCompose;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->startAttachmentActivity(I)V

    return-void
.end method

.method static synthetic access$10500(Lcom/android/email/activity/MessageCompose;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mPriorityHighIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$10600(Lcom/android/email/activity/MessageCompose;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mPriorityLowIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$10700(Lcom/android/email/activity/MessageCompose;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->bIsEncryptChecked:Z

    return v0
.end method

.method static synthetic access$10702(Lcom/android/email/activity/MessageCompose;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->bIsEncryptChecked:Z

    return p1
.end method

.method static synthetic access$10800(Lcom/android/email/activity/MessageCompose;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->bIsSignChecked:Z

    return v0
.end method

.method static synthetic access$10802(Lcom/android/email/activity/MessageCompose;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->bIsSignChecked:Z

    return p1
.end method

.method static synthetic access$10902(Lcom/android/email/activity/MessageCompose;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mSecurityOptionsDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mTemplateId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11000(Lcom/android/email/activity/MessageCompose;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->onAddTextActivity(I)V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mTemplateId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$11100(Lcom/android/email/activity/MessageCompose;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->bIsReadChecked:Z

    return v0
.end method

.method static synthetic access$11102(Lcom/android/email/activity/MessageCompose;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->bIsReadChecked:Z

    return p1
.end method

.method static synthetic access$11200(Lcom/android/email/activity/MessageCompose;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->bIsDeliveryChecked:Z

    return v0
.end method

.method static synthetic access$11202(Lcom/android/email/activity/MessageCompose;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->bIsDeliveryChecked:Z

    return p1
.end method

.method static synthetic access$11302(Lcom/android/email/activity/MessageCompose;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mReceiptsOptionsDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$11400(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mIrmWait:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$11402(Lcom/android/email/activity/MessageCompose;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mIrmWait:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$11600(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/Controller$Result;
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mControllerResult:Lcom/android/email/Controller$Result;

    return-object v0
.end method

.method static synthetic access$11700(Lcom/android/email/activity/MessageCompose;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->templateDescription:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$11800(Lcom/android/email/activity/MessageCompose;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget v0, p0, Lcom/android/email/activity/MessageCompose;->mSelectedQuickResponseStringType:I

    return v0
.end method

.method static synthetic access$11802(Lcom/android/email/activity/MessageCompose;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    iput p1, p0, Lcom/android/email/activity/MessageCompose;->mSelectedQuickResponseStringType:I

    return p1
.end method

.method static synthetic access$11900(Lcom/android/email/activity/MessageCompose;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget v0, p0, Lcom/android/email/activity/MessageCompose;->mSelectedResizeType:I

    return v0
.end method

.method static synthetic access$11902(Lcom/android/email/activity/MessageCompose;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    iput p1, p0, Lcom/android/email/activity/MessageCompose;->mSelectedResizeType:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mTemplateDescription:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12000(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;III)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 235
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/activity/MessageCompose;->imageResizeByResolution(Ljava/lang/String;III)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mTemplateDescription:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$12100(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Attachment;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I

    move-result v0

    return v0
.end method

.method static synthetic access$12200(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/SMIMEHelperUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->smimeutils:Lcom/android/email/SMIMEHelperUtils;

    return-object v0
.end method

.method static synthetic access$12202(Lcom/android/email/activity/MessageCompose;Lcom/android/email/SMIMEHelperUtils;)Lcom/android/email/SMIMEHelperUtils;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->smimeutils:Lcom/android/email/SMIMEHelperUtils;

    return-object p1
.end method

.method static synthetic access$12300(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSMIMEUtilsCallback:Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;

    return-object v0
.end method

.method static synthetic access$12400(Lcom/android/email/activity/MessageCompose;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 235
    iget-wide v0, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentId:J

    return-wide v0
.end method

.method static synthetic access$12402(Lcom/android/email/activity/MessageCompose;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    iput-wide p1, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentId:J

    return-wide p1
.end method

.method static synthetic access$12502(Lcom/android/email/activity/MessageCompose;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentSave:Z

    return p1
.end method

.method static synthetic access$12602(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$12700(Lcom/android/email/activity/MessageCompose;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->misspelledWordSelected:Z

    return v0
.end method

.method static synthetic access$12800(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->doSpellCheck()V

    return-void
.end method

.method static synthetic access$12902(J)J
    .locals 0
    .parameter "x0"

    .prologue
    .line 235
    sput-wide p0, Lcom/android/email/activity/MessageCompose;->tLastSpellcheck:J

    return-wide p0
.end method

.method static synthetic access$1300(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mTemplateName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13000()Lcom/android/email/activity/utils/spellcheck/UserDictionary;
    .locals 1

    .prologue
    .line 235
    sget-object v0, Lcom/android/email/activity/MessageCompose;->mUserDictionary:Lcom/android/email/activity/utils/spellcheck/UserDictionary;

    return-object v0
.end method

.method static synthetic access$13002(Lcom/android/email/activity/utils/spellcheck/UserDictionary;)Lcom/android/email/activity/utils/spellcheck/UserDictionary;
    .locals 0
    .parameter "x0"

    .prologue
    .line 235
    sput-object p0, Lcom/android/email/activity/MessageCompose;->mUserDictionary:Lcom/android/email/activity/utils/spellcheck/UserDictionary;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mTemplateName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$13100(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddAddressProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$13102(Lcom/android/email/activity/MessageCompose;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mAddAddressProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$13300(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/bubblelayout/BubbleLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    return-object v0
.end method

.method static synthetic access$13400(Lcom/android/email/activity/MessageCompose;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 235
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageCompose;->showToast(II)V

    return-void
.end method

.method static synthetic access$13500(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->focusOutRecipient()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/email/activity/MessageCompose;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mIrmIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/email/activity/MessageCompose;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->templateDescriptionLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/email/activity/MessageCompose;)Landroid/webkit/HtmlComposerView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/email/activity/MessageCompose;)Ljava/lang/StringBuffer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mInitialText:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/bubblelayout/BubbleLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/bubblelayout/BubbleLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/bubblelayout/BubbleLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/ToolBarView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView_noscroll:Lcom/android/email/activity/ToolBarView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/ToolBarView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/email/activity/MessageCompose;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->setDraftNeedsSaving(Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/ExtendedScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mScrollView:Lcom/android/email/ExtendedScrollView;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/email/activity/MessageCompose;)Landroid/app/ActionBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/email/activity/MessageCompose;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar_Title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/email/activity/MessageCompose;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget v0, p0, Lcom/android/email/activity/MessageCompose;->mCntPressedSemicolon:I

    return v0
.end method

.method static synthetic access$3202(Lcom/android/email/activity/MessageCompose;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    iput p1, p0, Lcom/android/email/activity/MessageCompose;->mCntPressedSemicolon:I

    return p1
.end method

.method static synthetic access$3208(Lcom/android/email/activity/MessageCompose;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 235
    iget v0, p0, Lcom/android/email/activity/MessageCompose;->mCntPressedSemicolon:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageCompose;->mCntPressedSemicolon:I

    return v0
.end method

.method static synthetic access$3300(Lcom/android/email/activity/MessageCompose;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->addToAddressFromEditText(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/email/activity/MessageCompose;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->addCcAddressFromEditText(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/email/activity/MessageCompose;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->addBccAddressFromEditText(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/android/email/activity/MessageCompose;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mEditFromBubble:Z

    return v0
.end method

.method static synthetic access$3602(Lcom/android/email/activity/MessageCompose;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->mEditFromBubble:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/EmailAddressAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterTo:Lcom/android/email/EmailAddressAdapter;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/email/activity/MessageCompose;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->showMoreHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->addAddressFromGroup(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/email/activity/MessageCompose;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 235
    sget-object v0, Lcom/android/email/activity/MessageCompose;->sSaveInProgressCondition:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4100()Z
    .locals 1

    .prologue
    .line 235
    sget-boolean v0, Lcom/android/email/activity/MessageCompose;->sSaveInProgress:Z

    return v0
.end method

.method static synthetic access$4102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 235
    sput-boolean p0, Lcom/android/email/activity/MessageCompose;->sSaveInProgress:Z

    return p0
.end method

.method static synthetic access$4202(Lcom/android/email/activity/MessageCompose;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    iput p1, p0, Lcom/android/email/activity/MessageCompose;->mPriority:I

    return p1
.end method

.method static synthetic access$4302(Lcom/android/email/activity/MessageCompose;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->mIsReadChecked:Z

    return p1
.end method

.method static synthetic access$4402(Lcom/android/email/activity/MessageCompose;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->mIsDeliveryChecked:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/android/email/activity/MessageCompose;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->IsEAS()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4600(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSmimeHandlerTask:Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;

    return-object v0
.end method

.method static synthetic access$4602(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;)Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mSmimeHandlerTask:Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;

    return-object p1
.end method

.method static synthetic access$4700(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onLoadMoreMessage()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/email/activity/MessageCompose;JI)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 235
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MessageCompose;->hasInlineDataImage(JI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Lcom/android/email/activity/MessageCompose;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mEmbeddedImageDownload:Z

    return v0
.end method

.method static synthetic access$4902(Lcom/android/email/activity/MessageCompose;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->mEmbeddedImageDownload:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onShowSecurityPolicyDialog()V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/email/activity/MessageCompose;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget v0, p0, Lcom/android/email/activity/MessageCompose;->mInlineImageCallbackCount:I

    return v0
.end method

.method static synthetic access$5002(Lcom/android/email/activity/MessageCompose;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    iput p1, p0, Lcom/android/email/activity/MessageCompose;->mInlineImageCallbackCount:I

    return p1
.end method

.method static synthetic access$5008(Lcom/android/email/activity/MessageCompose;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 235
    iget v0, p0, Lcom/android/email/activity/MessageCompose;->mInlineImageCallbackCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageCompose;->mInlineImageCallbackCount:I

    return v0
.end method

.method static synthetic access$5100(Lcom/android/email/activity/MessageCompose;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget v0, p0, Lcom/android/email/activity/MessageCompose;->mInlineImageCount:I

    return v0
.end method

.method static synthetic access$5102(Lcom/android/email/activity/MessageCompose;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    iput p1, p0, Lcom/android/email/activity/MessageCompose;->mInlineImageCount:I

    return p1
.end method

.method static synthetic access$5108(Lcom/android/email/activity/MessageCompose;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 235
    iget v0, p0, Lcom/android/email/activity/MessageCompose;->mInlineImageCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageCompose;->mInlineImageCount:I

    return v0
.end method

.method static synthetic access$5202(Lcom/android/email/activity/MessageCompose;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mLoadEmbeddedAttachmentsTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$5300(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mInlineImageDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$5302(Lcom/android/email/activity/MessageCompose;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mInlineImageDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$5400(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/Controller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    return-object v0
.end method

.method static synthetic access$5502(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Account;)Lcom/android/emailcommon/provider/EmailContent$Account;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    return-object p1
.end method

.method static synthetic access$5600(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/ControllerResultUiThreadWrapper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    return-object v0
.end method

.method static synthetic access$5702(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    return-object p1
.end method

.method static synthetic access$5802(Lcom/android/email/activity/MessageCompose;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentsTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$5900(Lcom/android/email/activity/MessageCompose;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->getMaxAttachmentUploadSize()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onAccountSetup()V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/email/activity/MessageCompose;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 235
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MessageCompose;->createPreviewBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Attachment;ZLandroid/graphics/Bitmap;Z)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 235
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;ZLandroid/graphics/Bitmap;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$6300(Lcom/android/email/activity/MessageCompose;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->showResultToast(I)V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->configureSmimeOptions(Lcom/android/emailcommon/provider/EmailContent$Message;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->setFromAccount()V

    return-void
.end method

.method static synthetic access$6702(Lcom/android/email/activity/MessageCompose;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->mMessageLoaded:Z

    return p1
.end method

.method static synthetic access$6800(Lcom/android/email/activity/MessageCompose;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 235
    iget-wide v0, p0, Lcom/android/email/activity/MessageCompose;->mOriginalMessageIdForIRM:J

    return-wide v0
.end method

.method static synthetic access$6802(Lcom/android/email/activity/MessageCompose;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    iput-wide p1, p0, Lcom/android/email/activity/MessageCompose;->mOriginalMessageIdForIRM:J

    return-wide p1
.end method

.method static synthetic access$6900(Lcom/android/email/activity/MessageCompose;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageCompose;->applyIRMresctrition(J)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/email/activity/MessageCompose;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/email/activity/MessageCompose;Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7100(Lcom/android/email/activity/MessageCompose;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->getAttachmentsFromUI()[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7200(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Account;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 235
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/activity/MessageCompose;->updateMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Account;ZZ)V

    return-void
.end method

.method static synthetic access$7300(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;)Landroid/content/ContentValues;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->getUpdateContentValues(Lcom/android/emailcommon/provider/EmailContent$Message;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7400(Lcom/android/email/activity/MessageCompose;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->IsSnc()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7502(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;)Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mSendOrSaveMessageTask:Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;

    return-object p1
.end method

.method static synthetic access$7600(Lcom/android/email/activity/MessageCompose;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mSecurityOptions:Z

    return v0
.end method

.method static synthetic access$7700([Lcom/android/emailcommon/mail/Address;)[Ljavax/mail/Address;
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    invoke-static {p0}, Lcom/android/email/activity/MessageCompose;->convertAddresses([Lcom/android/emailcommon/mail/Address;)[Ljavax/mail/Address;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7900(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->send()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onSave()V

    return-void
.end method

.method static synthetic access$8200(Lcom/android/email/activity/MessageCompose;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    return v0
.end method

.method static synthetic access$8202(Lcom/android/email/activity/MessageCompose;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    iput p1, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    return p1
.end method

.method static synthetic access$8300(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->IsDRMFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8500(Lcom/android/email/activity/MessageCompose;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$8600(Lcom/android/email/activity/MessageCompose;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$8700(Lcom/android/email/activity/MessageCompose;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$8800(Lcom/android/email/activity/MessageCompose;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mDownloadSmimeAttachment:Z

    return v0
.end method

.method static synthetic access$8802(Lcom/android/email/activity/MessageCompose;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->mDownloadSmimeAttachment:Z

    return p1
.end method

.method static synthetic access$8900(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSmimeProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$8902(Lcom/android/email/activity/MessageCompose;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mSmimeProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onDiscard()V

    return-void
.end method

.method static synthetic access$9000(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mGetCertificatesTask:Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;

    return-object v0
.end method

.method static synthetic access$9002(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;)Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mGetCertificatesTask:Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;

    return-object p1
.end method

.method static synthetic access$9100(Lcom/android/email/activity/MessageCompose;)Landroid/os/AsyncTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLoadMessageTask:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic access$9102(Lcom/android/email/activity/MessageCompose;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mLoadMessageTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$9200(Lcom/android/email/activity/MessageCompose;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 235
    iget-wide v0, p0, Lcom/android/email/activity/MessageCompose;->mMessageId:J

    return-wide v0
.end method

.method static synthetic access$9300(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLoadMoreDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$9302(Lcom/android/email/activity/MessageCompose;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mLoadMoreDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$9400(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mProgressSpellChecking:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$9500(Lcom/android/email/activity/MessageCompose;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->getComposerActivityContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9600(Lcom/android/email/activity/MessageCompose;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$9700(Lcom/android/email/activity/MessageCompose;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout(Z)V

    return-void
.end method

.method static synthetic access$9802(Lcom/android/email/activity/MessageCompose;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    iput p1, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalCount:I

    return p1
.end method

.method static synthetic access$9900(Lcom/android/email/activity/MessageCompose;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountInfoArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static actionCompose(Landroid/content/Context;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 813
    :try_start_0
    const-string v0, "Email"

    const-string v1, "[Email_log] actionCompose IN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    invoke-static {p0}, Lcom/android/email/activity/MessageCompose;->getBaseIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 815
    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 816
    const-string v1, "account_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 817
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 824
    :goto_0
    return-void

    .line 818
    :catch_0
    move-exception v0

    .line 822
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Email;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static actionCompose(Landroid/content/Context;Landroid/content/Intent;J)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 854
    const/high16 v0, 0x2400

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 855
    const-string v0, "account_id"

    invoke-virtual {p1, v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 857
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 858
    const/4 v0, 0x1

    .line 864
    :goto_0
    return v0

    .line 859
    :catch_0
    move-exception v0

    .line 863
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Email;->log(Ljava/lang/String;)V

    .line 864
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static actionCompose(Landroid/content/Context;Ljava/lang/String;J)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 837
    :try_start_0
    invoke-static {p0, p2, p3}, Lcom/android/email/activity/MessageCompose;->getMessageComposeIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 838
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 839
    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 840
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 841
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 842
    const/4 v0, 0x1

    .line 848
    :goto_0
    return v0

    .line 843
    :catch_0
    move-exception v0

    .line 847
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Email;->log(Ljava/lang/String;)V

    .line 848
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static actionEditDraft(Landroid/content/Context;J)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 924
    const-string v0, "com.android.email.intent.action.EDIT_DRAFT"

    invoke-static {p0, v0, p1, p2}, Lcom/android/email/activity/MessageCompose;->startActivityWithMessage(Landroid/content/Context;Ljava/lang/String;J)V

    .line 925
    return-void
.end method

.method public static actionEmailDoc(Landroid/content/Context;J)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 910
    const-string v0, "com.android.email.intent.action.EMAIL_DOC"

    invoke-static {p0, v0, p1, p2}, Lcom/android/email/activity/MessageCompose;->startActivityWithMessage(Landroid/content/Context;Ljava/lang/String;J)V

    .line 911
    return-void
.end method

.method public static actionForward(Landroid/content/Context;J)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 900
    const-string v0, "com.android.email.intent.action.FORWARD"

    invoke-static {p0, v0, p1, p2}, Lcom/android/email/activity/MessageCompose;->startActivityWithMessage(Landroid/content/Context;Ljava/lang/String;J)V

    .line 901
    return-void
.end method

.method public static actionMeetingResponse(Landroid/content/Context;JI)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 888
    const-string v0, "com.android.email.intent.action.MEETING_RESPONSE"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/email/activity/MessageCompose;->startActivityWithMessage(Landroid/content/Context;Ljava/lang/String;JI)V

    .line 889
    return-void
.end method

.method public static actionProposeNewTime(Landroid/content/Context;J)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 881
    const-string v0, "com.android.email.intent.action.PROPOSE_NEW_TIME"

    invoke-static {p0, v0, p1, p2}, Lcom/android/email/activity/MessageCompose;->startActivityWithMessage(Landroid/content/Context;Ljava/lang/String;J)V

    .line 882
    return-void
.end method

.method public static actionReply(Landroid/content/Context;JZ)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 877
    if-eqz p3, :cond_0

    const-string v0, "com.android.email.intent.action.REPLY_ALL"

    :goto_0
    invoke-static {p0, v0, p1, p2}, Lcom/android/email/activity/MessageCompose;->startActivityWithMessage(Landroid/content/Context;Ljava/lang/String;J)V

    .line 878
    return-void

    .line 877
    :cond_0
    const-string v0, "com.android.email.intent.action.REPLY"

    goto :goto_0
.end method

.method private addAddress(Landroid/widget/MultiAutoCompleteTextView;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 3945
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/MultiAutoCompleteTextView;->append(Ljava/lang/CharSequence;)V

    .line 3946
    return-void
.end method

.method private addAddress(Lcom/android/email/activity/bubblelayout/BubbleLayout;Ljava/lang/String;)V
    .locals 1
    .parameter "bubbleLayout"
    .parameter "address"

    .prologue
    .line 3920
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 3924
    :cond_0
    :goto_0
    return-void

    .line 3923
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->addButtonAfterDuplicateCheck(Ljava/lang/String;Z)Z

    goto :goto_0
.end method

.method private addAddressFromGroup(Ljava/lang/String;)V
    .locals 11
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x1

    .line 12567
    .line 12568
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->isFocused()Z

    move-result v0

    if-ne v0, v10, :cond_1

    .line 12569
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    .line 12570
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    move-object v8, v0

    .line 12582
    :goto_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 12583
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    move v6, v7

    .line 12584
    :goto_1
    array-length v0, v9

    if-ge v6, v0, :cond_4

    .line 12585
    aget-object v0, v9, v6

    .line 12587
    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "primary_emails"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 12590
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v7

    const-string v0, "data1"

    aput-object v0, v2, v10

    const/4 v0, 0x2

    const-string v4, "display_name"

    aput-object v4, v2, v0

    .line 12594
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 12598
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_5

    .line 12599
    const v0, 0x7f0805d7

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12610
    :cond_0
    const-string v0, ""

    invoke-virtual {v8, v0}, Lcom/android/email/activity/AddressTextView;->setText(Ljava/lang/CharSequence;)V

    .line 12611
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 12584
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    .line 12571
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->isFocused()Z

    move-result v0

    if-ne v0, v10, :cond_2

    .line 12572
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    .line 12573
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    move-object v8, v0

    goto :goto_0

    .line 12574
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->isFocused()Z

    move-result v0

    if-ne v0, v10, :cond_3

    .line 12575
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    .line 12576
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    move-object v8, v0

    goto/16 :goto_0

    .line 12578
    :cond_3
    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAddBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    .line 12615
    :cond_4
    return-void

    .line 12602
    :cond_5
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move v0, v7

    .line 12603
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 12604
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 12605
    invoke-direct {p0, v8, v2}, Lcom/android/email/activity/MessageCompose;->addAddress(Landroid/widget/MultiAutoCompleteTextView;Ljava/lang/String;)V

    .line 12606
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12603
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 12610
    :catchall_0
    move-exception v0

    const-string v2, ""

    invoke-virtual {v8, v2}, Lcom/android/email/activity/AddressTextView;->setText(Ljava/lang/CharSequence;)V

    .line 12611
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 12610
    throw v0
.end method

.method private addAddresses(Lcom/android/email/activity/bubblelayout/BubbleLayout;[Lcom/android/emailcommon/mail/Address;)V
    .locals 6
    .parameter "bubbleLayout"
    .parameter "addresses"

    .prologue
    .line 3900
    if-nez p2, :cond_1

    .line 3906
    :cond_0
    return-void

    .line 3903
    :cond_1
    move-object v1, p2

    .local v1, arr$:[Lcom/android/emailcommon/mail/Address;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 3904
    .local v0, address:Lcom/android/emailcommon/mail/Address;
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Address;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->addButton(Ljava/lang/String;Z)Z

    .line 3903
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private addAddresses(Lcom/android/email/activity/bubblelayout/BubbleLayout;[Ljava/lang/String;)V
    .locals 5
    .parameter "bubbleLayout"
    .parameter "addresses"

    .prologue
    .line 3909
    if-nez p2, :cond_1

    .line 3917
    :cond_0
    return-void

    .line 3912
    :cond_1
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 3913
    .local v3, oneAddress:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    .line 3914
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->addButton(Ljava/lang/String;Z)Z

    .line 3912
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private addAllAddressFromEditText(Z)V
    .locals 1
    .parameter "animationOn"

    .prologue
    .line 9649
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 9650
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->addToAddressFromEditText(Z)Z

    .line 9652
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 9653
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->addCcAddressFromEditText(Z)Z

    .line 9655
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 9656
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->addBccAddressFromEditText(Z)Z

    .line 9658
    :cond_2
    return-void
.end method

.method private addAttachment(Landroid/net/Uri;)I
    .locals 3
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 11132
    new-instance v0, Lcom/android/email/activity/MessageCompose$46;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageCompose$46;-><init>(Lcom/android/email/activity/MessageCompose;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageCompose$46;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentsTaskFromUri:Landroid/os/AsyncTask;

    .line 11231
    return v2
.end method

.method private addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I
    .locals 1
    .parameter "attachment"

    .prologue
    .line 11124
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;Z)I

    move-result v0

    return v0
.end method

.method private addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;Z)I
    .locals 2
    .parameter "attachment"
    .parameter "isExchange"

    .prologue
    .line 10837
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;ZLandroid/graphics/Bitmap;Z)I

    move-result v0

    return v0
.end method

.method private addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;ZLandroid/graphics/Bitmap;Z)I
    .locals 16
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 10843
    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 10844
    const-string v1, "Compose >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachment uri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 10846
    :cond_0
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/email/activity/MessageCompose;->mIsExistFile:Z

    .line 10848
    :try_start_0
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 10849
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 10851
    const-string v2, "file"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10852
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageCompose;->IsDRMFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10853
    const/4 v1, 0x2

    .line 11097
    :goto_0
    return v1

    .line 10857
    :cond_1
    const-string v1, "application/vnd.oma.drm.content"

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_2

    .line 10858
    const/4 v1, 0x2

    goto :goto_0

    .line 10861
    :catch_0
    move-exception v1

    .line 10862
    const-string v2, "Compose >>"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 10866
    :cond_2
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 10867
    const/16 v1, 0x8

    goto :goto_0

    .line 10874
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->getMaxAttachmentUploadSize()I

    move-result v7

    .line 10876
    move-object/from16 v0, p1

    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    int-to-long v3, v7

    cmp-long v1, v1, v3

    if-lez v1, :cond_4

    .line 10877
    const/4 v1, 0x1

    goto :goto_0

    .line 10880
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    int-to-long v1, v1

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    add-long/2addr v1, v3

    long-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    .line 10881
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalCount:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalCount:I

    .line 10882
    const-string v1, "Compose >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachment uri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 10883
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    if-le v1, v7, :cond_5

    .line 10884
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    int-to-long v1, v1

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    .line 10885
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalCount:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalCount:I

    .line 10886
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 10889
    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalCount:I

    const/16 v2, 0xfa

    if-le v1, v2, :cond_6

    .line 10890
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    int-to-long v1, v1

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    .line 10891
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalCount:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalCount:I

    .line 10892
    const/16 v1, 0x10

    goto/16 :goto_0

    .line 10895
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040071

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 10898
    const v1, 0x7f1000dd

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 10899
    const v2, 0x7f1000dc

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 10900
    const v2, 0x7f100187

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 10905
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->IsSnc()Z

    move-result v3

    if-eqz v3, :cond_c

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    if-eqz v3, :cond_c

    const/4 v3, 0x1

    .line 10906
    :goto_1
    if-nez p2, :cond_7

    if-eqz v3, :cond_8

    .line 10907
    :cond_7
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10909
    :cond_8
    if-eqz v3, :cond_9

    .line 10916
    :cond_9
    const v3, 0x7f100186

    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Landroid/widget/ImageView;

    .line 10918
    invoke-direct/range {p0 .. p1}, Lcom/android/email/activity/MessageCompose;->getPreviewImageOfAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I

    move-result v3

    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 10932
    const-string v3, "Compose >>"

    const-string v4, "In case of attaching vcf: start"

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 10933
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-eqz v3, :cond_16

    .line 10934
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    const-string v4, ".vcf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_a

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    const-string v4, "com.android.contacts/contacts"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_f

    :cond_a
    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_f

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v3, v3, 0x10

    if-nez v3, :cond_f

    .line 10940
    const-wide/16 v5, 0x0

    .line 10942
    const/4 v4, 0x0

    .line 10943
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 10945
    sget-boolean v10, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v10, :cond_b

    .line 10946
    const-string v10, "Compose >>"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "case 1: fileUri = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 10950
    :cond_b
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 10951
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-virtual {v12, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 10953
    const/16 v3, 0xff

    new-array v3, v3, [B

    .line 10954
    :goto_2
    const/4 v12, -0x1

    invoke-virtual {v4, v3}, Ljava/io/InputStream;->read([B)I

    move-result v13

    if-eq v12, v13, :cond_d

    .line 10955
    int-to-long v12, v13

    add-long/2addr v5, v12

    goto :goto_2

    .line 10905
    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 10957
    :cond_d
    const-wide/16 v12, 0x0

    cmp-long v3, v5, v12

    if-lez v3, :cond_e

    .line 10958
    move-object/from16 v0, p1

    iput-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    .line 10959
    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 10960
    const-string v3, "Compose >>"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Total Elapsed time : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sub-long v10, v12, v10

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " count="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 10968
    const-wide/16 v10, 0x0

    cmp-long v3, v5, v10

    if-lez v3, :cond_1b

    .line 10969
    move-object/from16 v0, p1

    iput-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    .line 10970
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    long-to-float v6, v10

    invoke-static {v5, v6}, Lcom/android/email/EmailUtility;->formatSize(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10977
    :goto_3
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 10979
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    int-to-long v3, v3

    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    add-long/2addr v3, v5

    long-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    .line 10980
    const-string v3, "Compose >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "attachment uri : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 10981
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    if-le v3, v7, :cond_12

    .line 10982
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    int-to-long v1, v1

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    .line 10983
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 10961
    :catch_1
    move-exception v3

    .line 10963
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10968
    const-wide/16 v10, 0x0

    cmp-long v3, v5, v10

    if-lez v3, :cond_19

    .line 10969
    move-object/from16 v0, p1

    iput-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    .line 10970
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    long-to-float v6, v10

    invoke-static {v5, v6}, Lcom/android/email/EmailUtility;->formatSize(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 10964
    :catch_2
    move-exception v3

    .line 10966
    :try_start_3
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 10968
    const-wide/16 v10, 0x0

    cmp-long v3, v5, v10

    if-lez v3, :cond_1a

    .line 10969
    move-object/from16 v0, p1

    iput-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    .line 10970
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    long-to-float v6, v10

    invoke-static {v5, v6}, Lcom/android/email/EmailUtility;->formatSize(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 10968
    :catchall_0
    move-exception v2

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-lez v3, :cond_18

    .line 10969
    move-object/from16 v0, p1

    iput-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    .line 10970
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    long-to-float v6, v6

    invoke-static {v5, v6}, Lcom/android/email/EmailUtility;->formatSize(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10977
    :goto_4
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 10968
    throw v2

    .line 10985
    :cond_f
    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_15

    .line 10986
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 10988
    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_10

    .line 10989
    const-string v4, "Compose >>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "case 2: fileUri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 10992
    :cond_10
    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10993
    if-eqz v4, :cond_11

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_11

    .line 10994
    const/4 v1, 0x4

    goto/16 :goto_0

    .line 10996
    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    long-to-float v5, v5

    invoke-static {v4, v5}, Lcom/android/email/EmailUtility;->formatSize(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11006
    :cond_12
    :goto_5
    const-string v3, "Compose >>"

    const-string v4, "In case of attaching vcf: end"

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 11009
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11010
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 11011
    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11012
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 11013
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11014
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 11015
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/email/activity/MessageCompose;->mLastDeleteBtn:Landroid/widget/ImageView;

    .line 11016
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 11018
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x7f05

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 11019
    invoke-virtual {v9, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 11026
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 11027
    if-lez v1, :cond_13

    .line 11032
    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 11033
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout(Z)V

    .line 11036
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-eqz v1, :cond_14

    .line 11037
    const/4 v2, 0x0

    .line 11039
    if-eqz p4, :cond_17

    .line 11042
    :try_start_4
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v1, v0}, Lcom/android/email/activity/MessageCompose;->getRotatedDegree(Landroid/net/Uri;Landroid/content/Context;)I

    move-result v3

    .line 11043
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 11045
    if-eqz v1, :cond_1f

    .line 11047
    const/16 v10, 0x27

    .line 11048
    const/16 v9, 0x27

    .line 11050
    if-eqz v3, :cond_1e

    .line 11051
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 11052
    int-to-float v2, v3

    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 11053
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v3, v1

    .line 11056
    :goto_6
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 11058
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 11062
    if-le v10, v2, :cond_1d

    .line 11065
    :goto_7
    if-le v9, v1, :cond_1c

    .line 11070
    :goto_8
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v1}, Lcom/android/email/activity/MessageCompose;->createPreviewBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_5

    move-result-object v1

    .line 11092
    :goto_9
    if-eqz v1, :cond_14

    .line 11093
    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 11097
    :cond_14
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 10999
    :cond_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    long-to-float v5, v5

    invoke-static {v4, v5}, Lcom/android/email/EmailUtility;->formatSize(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 11003
    :cond_16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    long-to-float v5, v5

    invoke-static {v4, v5}, Lcom/android/email/EmailUtility;->formatSize(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 11073
    :catch_3
    move-exception v1

    .line 11074
    const-string v2, "Compose >>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: addAttachment(),File not found \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 11076
    const/4 v1, 0x0

    .line 11077
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/email/activity/MessageCompose;->mIsExistFile:Z

    goto/16 :goto_9

    .line 11078
    :catch_4
    move-exception v1

    .line 11079
    const-string v2, "Compose >>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: addAttachment().Thumnail Out of Memory \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 11081
    const/4 v1, 0x0

    .line 11086
    goto/16 :goto_9

    .line 11082
    :catch_5
    move-exception v1

    .line 11083
    const-string v2, "Compose >>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: addAttachment().Illegal Argument \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 11085
    const/4 v1, 0x0

    goto/16 :goto_9

    :cond_17
    move-object/from16 v1, p3

    .line 11089
    goto/16 :goto_9

    .line 10975
    :cond_18
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_19
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_1a
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_1b
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_1c
    move v1, v9

    goto/16 :goto_8

    :cond_1d
    move v2, v10

    goto/16 :goto_7

    :cond_1e
    move-object v3, v1

    goto/16 :goto_6

    :cond_1f
    move-object v1, v2

    goto/16 :goto_9
.end method

.method private addBccAddressFromEditText(Z)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 9721
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v1}, Lcom/android/email/activity/AddressTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9722
    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v2

    .line 9723
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 9724
    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->isAllValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9725
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 9726
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v5, v4, p1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->addButton(Lcom/android/emailcommon/mail/Address;Z)Z

    .line 9725
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9728
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/email/activity/AddressTextView;->setText(Ljava/lang/CharSequence;)V

    .line 9736
    :cond_1
    :goto_1
    return v0

    .line 9733
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private addCcAddressFromEditText(Z)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 9695
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v1}, Lcom/android/email/activity/AddressTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9696
    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v2

    .line 9697
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 9698
    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->isAllValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9699
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 9700
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v5, v4, p1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->addButton(Lcom/android/emailcommon/mail/Address;Z)Z

    .line 9699
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9702
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/email/activity/AddressTextView;->setText(Ljava/lang/CharSequence;)V

    .line 9710
    :cond_1
    :goto_1
    return v0

    .line 9707
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private addToAddressFromEditText(Z)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 9668
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v1}, Lcom/android/email/activity/AddressTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9669
    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v2

    .line 9671
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 9672
    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->isAllValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9673
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 9674
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v5, v4, p1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->addButton(Lcom/android/emailcommon/mail/Address;Z)Z

    .line 9673
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9676
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/email/activity/AddressTextView;->setText(Ljava/lang/CharSequence;)V

    .line 9684
    :cond_1
    :goto_1
    return v0

    .line 9681
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private applyIRMresctrition(J)V
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3390
    const-wide/16 v2, 0x0

    .line 3391
    :try_start_0
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 3392
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 3393
    :cond_0
    const-wide v4, 0x402c333333333333L

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_2

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    if-eqz v2, :cond_2

    .line 3394
    invoke-static {p0}, Lcom/android/email/irm/IRMEnforcer;->getInstance(Landroid/content/Context;)Lcom/android/email/irm/IRMEnforcer;

    move-result-object v2

    .line 3395
    invoke-virtual {v2, p1, p2}, Lcom/android/email/irm/IRMEnforcer;->getIRMLicenseFlag(J)I

    move-result v4

    .line 3400
    const/4 v2, -0x1

    if-eq v4, v2, :cond_2

    .line 3401
    and-int/lit8 v2, v4, 0x8

    if-eqz v2, :cond_3

    move v3, v0

    .line 3402
    :goto_0
    and-int/lit8 v2, v4, 0x20

    if-eqz v2, :cond_4

    move v2, v0

    .line 3403
    :goto_1
    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_5

    .line 3405
    :goto_2
    if-nez v0, :cond_1

    .line 3406
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/AddressTextView;->setFocusable(Z)V

    .line 3407
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 3408
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/AddressTextView;->setFocusable(Z)V

    .line 3409
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 3410
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/AddressTextView;->setFocusable(Z)V

    .line 3411
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 3412
    const-string v0, "Compose >>"

    const-string v1, "Editing Recipients is disabled by IRM"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 3415
    :cond_1
    if-nez v3, :cond_6

    .line 3416
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    if-eqz v0, :cond_2

    .line 3417
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->disableEditing()V

    .line 3418
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->setFocusable(Z)V

    .line 3430
    :cond_2
    :goto_3
    return-void

    :cond_3
    move v3, v1

    .line 3401
    goto :goto_0

    :cond_4
    move v2, v1

    .line 3402
    goto :goto_1

    :cond_5
    move v0, v1

    .line 3403
    goto :goto_2

    .line 3420
    :cond_6
    if-nez v2, :cond_2

    .line 3421
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedMenu:Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;

    if-eqz v0, :cond_2

    .line 3422
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedMenu:Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->setDisableCopyNCut(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 3427
    :catch_0
    move-exception v0

    .line 3428
    const-string v0, "Compose >>"

    const-string v1, "Caught Exception: applyIRMresctrition"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private arrangeAttachments()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 9214
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 9217
    if-le v1, v7, :cond_0

    .line 9219
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentSummaryLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f100189

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 9221
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->getMaxAttachmentUploadSize()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/android/email/EmailUtility;->formatSize(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v2

    .line 9227
    iget v3, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    if-nez v3, :cond_1

    .line 9228
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08030b

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9243
    :cond_0
    :goto_0
    return-void

    .line 9234
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0802e1

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget v6, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    int-to-float v6, v6

    invoke-static {v1, v6}, Lcom/android/email/EmailUtility;->formatSize(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v7

    const/4 v1, 0x2

    aput-object v2, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private arrangeScrollView()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 12084
    const-string v0, "Compose >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zarrangeScrollView() mScrolledDistance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/email/activity/MessageCompose;->mScrolledDistance:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 12085
    const-string v0, "Compose >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zarrangeScrollView() mScrollView.getScrollY() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mScrollView:Lcom/android/email/ExtendedScrollView;

    invoke-virtual {v2}, Lcom/android/email/ExtendedScrollView;->getScrollY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 12087
    const-string v0, "Compose >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zarrangeScrollView() mScrollView.getHeight() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mScrollView:Lcom/android/email/ExtendedScrollView;

    invoke-virtual {v2}, Lcom/android/email/ExtendedScrollView;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 12088
    const-string v0, "Compose >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zarrangeScrollView() mCompose_header_layout.getHeight() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mCompose_header_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 12091
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCompose_header_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    .line 12092
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mScrollView:Lcom/android/email/ExtendedScrollView;

    invoke-virtual {v1}, Lcom/android/email/ExtendedScrollView;->getHeight()I

    .line 12096
    new-array v1, v6, [I

    .line 12097
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mToolbarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->getLocationInWindow([I)V

    .line 12099
    new-array v2, v6, [I

    .line 12100
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mToolbarLayoutNoscroll:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->getLocationInWindow([I)V

    .line 12102
    iget v3, p0, Lcom/android/email/activity/MessageCompose;->mScrolledDistance:F

    cmpl-float v3, v3, v8

    if-lez v3, :cond_2

    .line 12131
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/email/activity/MessageCompose;->mScrolledDistance:F

    cmpl-float v1, v1, v8

    if-ltz v1, :cond_1

    .line 12132
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mScrollView:Lcom/android/email/ExtendedScrollView;

    invoke-virtual {v1}, Lcom/android/email/ExtendedScrollView;->getScrollY()I

    move-result v1

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mHeightLayout_TooBarView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    sub-int v3, v0, v3

    if-ge v1, v3, :cond_1

    .line 12133
    const-string v1, "Compose >>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mScrollView:Lcom/android/email/ExtendedScrollView;

    invoke-virtual {v4}, Lcom/android/email/ExtendedScrollView;->getScrollY()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  <  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "  -  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mHeightLayout_TooBarView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "  - 4"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 12135
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLayout_ToolBarView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 12153
    :cond_1
    :goto_1
    return-void

    .line 12104
    :cond_2
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mScrollView:Lcom/android/email/ExtendedScrollView;

    invoke-virtual {v3}, Lcom/android/email/ExtendedScrollView;->getScrollY()I

    move-result v3

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mHeightLayout_TooBarView:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v4

    sub-int v4, v0, v4

    if-le v3, v4, :cond_0

    .line 12105
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mLayout_ToolBarView_noscroll:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    .line 12109
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView_noscroll:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v3}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v4}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/email/activity/ToolBarScrollView;->getToolBarState()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/email/activity/ToolBarScrollView;->changeToolBarState(I)V

    .line 12111
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView_noscroll:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v3}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v4}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/email/activity/ToolBarScrollView;->getToolBarFontColor()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/email/activity/ToolBarScrollView;->changeToolBarFontColor(I)V

    .line 12113
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView_noscroll:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v3}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v4}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/email/activity/ToolBarScrollView;->getToolBarFontBgColor()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/email/activity/ToolBarScrollView;->changeToolBarFontBgColor(I)V

    .line 12116
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView_noscroll:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v3}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v3

    aget v1, v1, v5

    neg-int v1, v1

    invoke-virtual {v3, v1, v5}, Lcom/android/email/activity/ToolBarScrollView;->scrollTo(II)V

    .line 12118
    iget v1, p0, Lcom/android/email/activity/MessageCompose;->mCurrentOrientation:I

    if-ne v1, v6, :cond_3

    .line 12119
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mLayout_ToolBarView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 12120
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mLayout_ToolBarView_noscroll:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 12122
    :cond_3
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mLayout_ToolBarView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 12123
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mLayout_ToolBarView_noscroll:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 12138
    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v0}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView_noscroll:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v1}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/ToolBarScrollView;->getToolBarState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ToolBarScrollView;->changeToolBarState(I)V

    .line 12140
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v0}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView_noscroll:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v1}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/ToolBarScrollView;->getToolBarFontColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ToolBarScrollView;->changeToolBarFontColor(I)V

    .line 12142
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v0}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView_noscroll:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v1}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/ToolBarScrollView;->getToolBarFontBgColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ToolBarScrollView;->changeToolBarFontBgColor(I)V

    .line 12144
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLayout_ToolBarView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 12145
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v0}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v0

    aget v1, v2, v5

    neg-int v1, v1

    invoke-virtual {v0, v1, v5}, Lcom/android/email/activity/ToolBarScrollView;->scrollTo(II)V

    .line 12146
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLayout_ToolBarView_noscroll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private arrangeScrollViewForHeaderChange()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 12078
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mScrollView:Lcom/android/email/ExtendedScrollView;

    invoke-virtual {v0, v2, v2}, Lcom/android/email/ExtendedScrollView;->measure(II)V

    .line 12079
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mScrollView:Lcom/android/email/ExtendedScrollView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mScrollView:Lcom/android/email/ExtendedScrollView;

    invoke-virtual {v1}, Lcom/android/email/ExtendedScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/android/email/ExtendedScrollView;->scrollTo(II)V

    .line 12080
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mScrollView:Lcom/android/email/ExtendedScrollView;

    invoke-virtual {v0}, Lcom/android/email/ExtendedScrollView;->invalidate()V

    .line 12081
    return-void
.end method

.method private changeSmimeOptions(ZZ)V
    .locals 0
    .parameter "bSign"
    .parameter "bEncrypt"

    .prologue
    .line 8916
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->mIsSignChecked:Z

    .line 8917
    iput-boolean p2, p0, Lcom/android/email/activity/MessageCompose;->mIsEncryptChecked:Z

    .line 8919
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->updateSignEncryptIcons()V

    .line 8920
    return-void
.end method

.method private checkAttachment()V
    .locals 7

    .prologue
    .line 11237
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->getMaxAttachmentUploadSize()I

    move-result v3

    .line 11239
    .local v3, maxSize:I
    const/4 v1, 0x0

    .line 11241
    .local v1, atSize:I
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_0

    .line 11242
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 11243
    .local v0, at:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    iget v4, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    if-le v4, v3, :cond_0

    .line 11244
    iget v4, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    long-to-int v5, v5

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    .line 11245
    iget v4, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalCount:I

    .line 11246
    add-int/lit8 v1, v1, 0x1

    .line 11241
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 11250
    .end local v0           #at:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 11251
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 11250
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 11253
    :cond_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout()V

    .line 11254
    return-void
.end method

.method private checkITPolicy_AllowPOPIMAP()Z
    .locals 1

    .prologue
    .line 1376
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/SecurityPolicy;->IsAllowPOPIMAPEmailSetted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1377
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->IsEAS()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1378
    const/4 v0, 0x0

    .line 1381
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkValidityOfAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 981
    if-nez p1, :cond_0

    move v0, v6

    .line 1018
    :goto_0
    return v0

    .line 987
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    invoke-virtual {v0}, Lcom/android/email/Controller;->hasPremiumExpiredAccounts()Z

    move-result v0

    if-nez v0, :cond_2

    .line 988
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "displayName is not \'##snc##\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v1, v0

    .line 1004
    :goto_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1006
    :cond_1
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    const-string v2, "emailAddress"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_3

    .line 1008
    const/4 v0, 0x1

    .line 1016
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 994
    :cond_2
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "typeMsg = 0  AND  displayName is not \'##snc##\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 1010
    :cond_3
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-nez v0, :cond_1

    .line 1016
    :cond_4
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v6

    .line 1018
    goto :goto_0

    .line 1012
    :catch_0
    move-exception v0

    .line 1013
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Email;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1016
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private configureSmimeOptions(Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8869
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->IsEAS()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8870
    iput-boolean v3, p0, Lcom/android/email/activity/MessageCompose;->mIsSignChecked:Z

    .line 8871
    iput-boolean v3, p0, Lcom/android/email/activity/MessageCompose;->mIsEncryptChecked:Z

    .line 8912
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->updateSignEncryptIcons()V

    .line 8913
    return-void

    .line 8874
    :cond_1
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/SecurityPolicy;->getAccountPolicy(Ljava/lang/Long;)Lcom/android/emailcommon/service/PolicySet;

    move-result-object v0

    .line 8878
    iget-boolean v1, v0, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEMessages:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-boolean v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeSignAll:Z

    if-eqz v1, :cond_3

    .line 8879
    :cond_2
    iput-boolean v4, p0, Lcom/android/email/activity/MessageCompose;->mIsSignChecked:Z

    .line 8882
    :cond_3
    iget-boolean v0, v0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptedSMIMEMessages:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-boolean v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeEncryptAll:Z

    if-eqz v0, :cond_5

    .line 8884
    :cond_4
    iput-boolean v4, p0, Lcom/android/email/activity/MessageCompose;->mIsEncryptChecked:Z

    .line 8888
    :cond_5
    if-eqz p1, :cond_6

    iget-boolean v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    if-eqz v0, :cond_6

    .line 8889
    iput-boolean v4, p0, Lcom/android/email/activity/MessageCompose;->mIsSignChecked:Z

    .line 8891
    :cond_6
    if-eqz p1, :cond_7

    iget-boolean v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    if-eqz v0, :cond_7

    .line 8892
    iput-boolean v4, p0, Lcom/android/email/activity/MessageCompose;->mIsEncryptChecked:Z

    .line 8895
    :cond_7
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsSignChecked:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsEncryptChecked:Z

    if-eqz v0, :cond_0

    .line 8896
    :cond_8
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 8897
    const v0, 0x7f0804e7

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 8901
    :cond_9
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/SecurityPolicy;->getAccountPolicy(Ljava/lang/Long;)Lcom/android/emailcommon/service/PolicySet;

    move-result-object v0

    .line 8903
    iget-boolean v0, v0, Lcom/android/emailcommon/service/PolicySet;->mAllowSMIMESoftCerts:Z

    if-nez v0, :cond_0

    .line 8904
    const v0, 0x7f0804e5

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method private static convertAddresses([Lcom/android/emailcommon/mail/Address;)[Ljavax/mail/Address;
    .locals 5
    .parameter "addresses"

    .prologue
    .line 4891
    array-length v3, p0

    new-array v2, v3, [Ljavax/mail/Address;

    .line 4892
    .local v2, ret:[Ljavax/mail/Address;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 4894
    :try_start_0
    new-instance v3, Ljavax/mail/internet/InternetAddress;

    aget-object v4, p0, v1

    invoke-virtual {v4}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v1
    :try_end_0
    .catch Ljavax/mail/internet/AddressException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4892
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4895
    :catch_0
    move-exception v0

    .line 4896
    .local v0, ex:Ljavax/mail/internet/AddressException;
    const/4 v3, 0x0

    aput-object v3, v2, v1

    goto :goto_1

    .line 4900
    .end local v0           #ex:Ljavax/mail/internet/AddressException;
    :cond_0
    return-object v2
.end method

.method private createPreviewBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "bitmap"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 11101
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 11103
    .local v3, preview_bitmap:Landroid/graphics/Bitmap;
    if-nez v3, :cond_0

    move-object v3, v5

    .line 11120
    .end local v3           #preview_bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v3

    .line 11106
    .restart local v3       #preview_bitmap:Landroid/graphics/Bitmap;
    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 11107
    .local v0, c:Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 11109
    .local v2, p:Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 11110
    .local v4, src:Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 11112
    .local v1, dst:Landroid/graphics/Rect;
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    if-eqz v4, :cond_1

    if-nez v1, :cond_2

    :cond_1
    move-object v3, v5

    .line 11113
    goto :goto_0

    .line 11115
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 11116
    invoke-virtual {v1, v7, v7, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 11118
    invoke-virtual {v0, p1, v4, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 8664
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private displayQuotedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 10
    .parameter "textBody"
    .parameter "htmlBody"
    .parameter "messageId"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 8697
    if-eqz p2, :cond_1

    move v3, v7

    .line 8698
    .local v3, htmlTextFlag:Z
    :goto_0
    if-eqz v3, :cond_2

    move-object v6, p2

    .line 8699
    .local v6, text:Ljava/lang/String;
    :goto_1
    if-eqz v6, :cond_5

    .line 8700
    if-eqz v3, :cond_3

    .line 8704
    :goto_2
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 8705
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {p0, v8, v9}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v2

    .line 8708
    .local v2, attachments:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-eqz v2, :cond_4

    .line 8709
    move-object v0, v2

    .local v0, arr$:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_3
    if-ge v4, v5, :cond_4

    aget-object v1, v0, v4

    .line 8710
    .local v1, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    iget-object v8, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 8711
    iget-object v8, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-ne v7, v8, :cond_0

    .line 8712
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 8709
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .end local v0           #arr$:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v1           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v2           #attachments:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v3           #htmlTextFlag:Z
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #text:Ljava/lang/String;
    :cond_1
    move v3, v8

    .line 8697
    goto :goto_0

    .restart local v3       #htmlTextFlag:Z
    :cond_2
    move-object v6, p1

    .line 8698
    goto :goto_1

    .line 8700
    .restart local v6       #text:Ljava/lang/String;
    :cond_3
    invoke-static {v6}, Lcom/android/email/mail/internet/EmailHtmlUtil;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 8718
    .restart local v2       #attachments:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_4
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    if-eqz v7, :cond_5

    .line 8719
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    sget-object v8, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_BEGINING:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v7, v6, v8}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    .line 8720
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v7}, Landroid/webkit/HtmlComposerView;->enableEditing()V

    .line 8725
    .end local v2           #attachments:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_5
    return-void
.end method

.method private doSpellCheck()V
    .locals 3

    .prologue
    .line 12540
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->getSelectionSec()Ljava/lang/String;

    move-result-object v0

    .line 12545
    .local v0, sInvalidWord:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 12546
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->onSpellCheckAddWord(Ljava/lang/String;)V

    .line 12549
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->misspelledWordSelected:Z

    .line 12551
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sput-wide v1, Lcom/android/email/activity/MessageCompose;->tLastSpellcheck:J

    .line 12554
    return-void
.end method

.method public static exifOrientationToDegrees(I)F
    .locals 1
    .parameter

    .prologue
    .line 10731
    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    .line 10732
    const/high16 v0, 0x42b4

    .line 10738
    :goto_0
    return v0

    .line 10733
    :cond_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    .line 10734
    const/high16 v0, 0x4334

    goto :goto_0

    .line 10735
    :cond_1
    const/16 v0, 0x8

    if-ne p0, v0, :cond_2

    .line 10736
    const/high16 v0, 0x4387

    goto :goto_0

    .line 10738
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private focusBccLayout(Z)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f0801bf

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9608
    if-eqz p1, :cond_0

    .line 9609
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 9610
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->setViewMode(I)Z

    .line 9611
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->deSelectLastButton()V

    .line 9612
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 9614
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->requestFocus()Z

    .line 9615
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/AddressTextView;->setCursorVisible(Z)V

    .line 9617
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->focusToLayout(Z)V

    .line 9618
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->focusCcLayout(Z)V

    .line 9619
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->setFromLayoutMode(I)V

    .line 9646
    :goto_0
    return-void

    .line 9621
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 9622
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->setViewMode(I)Z

    .line 9623
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 9624
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 9628
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 9635
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccSummaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9637
    invoke-direct {p0, v4, v3}, Lcom/android/email/activity/MessageCompose;->showToast(II)V

    .line 9639
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccSummaryText:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 9643
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccSummaryText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private focusCcLayout(Z)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f0801bf

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9561
    if-eqz p1, :cond_0

    .line 9562
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 9564
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->setViewMode(I)Z

    .line 9565
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->deSelectLastButton()V

    .line 9566
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 9568
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->requestFocus()Z

    .line 9569
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/AddressTextView;->setCursorVisible(Z)V

    .line 9571
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->focusToLayout(Z)V

    .line 9572
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->focusBccLayout(Z)V

    .line 9573
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->setFromLayoutMode(I)V

    .line 9599
    :goto_0
    return-void

    .line 9575
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 9576
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->setViewMode(I)Z

    .line 9577
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 9578
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 9582
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 9589
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcSummaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9590
    invoke-direct {p0, v4, v3}, Lcom/android/email/activity/MessageCompose;->showToast(II)V

    .line 9592
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcSummaryText:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 9596
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcSummaryText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private focusOutRecipient()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12617
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->addAllAddressFromEditText(Z)V

    .line 12618
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->focusToLayout(Z)V

    .line 12619
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 12620
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->focusCcLayout(Z)V

    .line 12621
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->focusBccLayout(Z)V

    .line 12623
    :cond_1
    return-void
.end method

.method private focusToLayout(Z)V
    .locals 4
    .parameter

    .prologue
    const v3, 0x7f0801bf

    const/4 v2, 0x1

    .line 9518
    if-eqz p1, :cond_0

    .line 9519
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->setViewMode(I)Z

    .line 9520
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->deSelectLastButton()V

    .line 9521
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 9523
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->requestFocus()Z

    .line 9524
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/AddressTextView;->setCursorVisible(Z)V

    .line 9526
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->shrinkCcBccLayout()V

    .line 9552
    :goto_0
    return-void

    .line 9528
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->setViewMode(I)Z

    .line 9529
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 9531
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 9535
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 9542
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToSummaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9543
    invoke-direct {p0, v3, v2}, Lcom/android/email/activity/MessageCompose;->showToast(II)V

    .line 9545
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToSummaryText:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 9549
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToSummaryText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getAccount(Landroid/content/Intent;)Lcom/android/emailcommon/provider/EmailContent$Account;
    .locals 5
    .parameter

    .prologue
    const-wide/16 v3, -0x1

    .line 1052
    const-string v0, "account_id"

    invoke-virtual {p1, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1053
    cmp-long v2, v0, v3

    if-nez v2, :cond_0

    .line 1054
    invoke-static {p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide v0

    .line 1056
    :cond_0
    cmp-long v2, v0, v3

    if-nez v2, :cond_1

    .line 1057
    const/4 v0, 0x0

    .line 1059
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    goto :goto_0
.end method

.method private getAttachmentsFromUI()[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .locals 13

    .prologue
    .line 4192
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    .line 4194
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 4196
    const/4 v2, 0x0

    .line 4199
    const/4 v1, 0x0

    .line 4201
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v4, :cond_1

    .line 4203
    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 4206
    :try_start_1
    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 4207
    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    const-string v5, "file"

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4210
    new-instance v5, Ljava/io/File;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4211
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 4212
    const/4 v1, 0x1

    move v12, v1

    move-object v1, v0

    move v0, v12

    .line 4201
    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v1

    move v1, v0

    goto :goto_0

    .line 4216
    :catch_0
    move-exception v2

    .line 4217
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/email/Email;->log(Ljava/lang/String;)V

    .line 4221
    :cond_0
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v12, v1

    move-object v1, v0

    move v0, v12

    goto :goto_1

    .line 4224
    :cond_1
    const/4 v0, 0x1

    if-ne v1, v0, :cond_2

    .line 4225
    const v0, 0x7f080555

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    .line 4232
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->getMailContent()Landroid/webkit/WebHTMLMarkupData;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 4233
    const-wide/16 v1, 0x0

    .line 4234
    const/4 v0, 0x0

    .line 4236
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerView;->getMailContent()Landroid/webkit/WebHTMLMarkupData;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebHTMLMarkupData;->subPartList()Ljava/util/Vector;

    move-result-object v3

    .line 4238
    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object v7, v0

    move-wide v8, v1

    :cond_3
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/webkit/WebSubPart;

    .line 4239
    if-eqz v6, :cond_3

    .line 4242
    invoke-virtual {v6}, Landroid/webkit/WebSubPart;->contentUri()Ljava/lang/String;

    move-result-object v0

    .line 4243
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 4245
    if-eqz v1, :cond_7

    const-string v0, "content"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4246
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4247
    sget-object v2, Lcom/android/email/activity/MessageCompose;->ATTACHMENT_META_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 4249
    if-eqz v2, :cond_5

    .line 4251
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4252
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 4253
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v8, v3

    .line 4255
    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_4

    .line 4256
    const-string v3, "Compose >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contentUri : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4260
    :cond_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 4264
    :cond_5
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v7

    move-wide v2, v8

    .line 4287
    :goto_4
    if-eqz v1, :cond_13

    if-nez v4, :cond_13

    .line 4288
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 4290
    :goto_5
    if-nez v0, :cond_6

    .line 4291
    const-string v0, ""

    .line 4294
    :cond_6
    new-instance v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {v4}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    .line 4295
    iput-object v1, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 4296
    iput-object v0, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    .line 4297
    iput-wide v2, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    .line 4298
    invoke-virtual {v6}, Landroid/webkit/WebSubPart;->contentUri()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    .line 4299
    invoke-virtual {v6}, Landroid/webkit/WebSubPart;->getCid()Ljava/lang/String;

    move-result-object v0

    const-string v5, "cid:"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    .line 4300
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v7, v1

    move-wide v8, v2

    .line 4301
    goto/16 :goto_3

    .line 4260
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    .line 4266
    :cond_7
    invoke-virtual {v6}, Landroid/webkit/WebSubPart;->fileSize()J

    move-result-wide v2

    .line 4268
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_8

    .line 4270
    if-eqz v1, :cond_8

    :try_start_3
    const-string v0, "file"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4272
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4273
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 4274
    invoke-virtual {v0}, Ljava/io/File;->length()J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-wide v2

    .line 4283
    :cond_8
    :goto_6
    invoke-virtual {v6}, Landroid/webkit/WebSubPart;->getFileName()Ljava/lang/String;

    move-result-object v4

    .line 4284
    invoke-virtual {v6}, Landroid/webkit/WebSubPart;->getMime()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 4277
    :catch_1
    move-exception v0

    .line 4278
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Email;->log(Ljava/lang/String;)V

    goto :goto_6

    .line 4304
    :cond_9
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->enableEditing()V

    .line 4306
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->getMailContent()Landroid/webkit/WebHTMLMarkupData;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 4309
    const-wide/16 v1, 0x0

    .line 4310
    const/4 v0, 0x0

    .line 4313
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerView;->getHTML()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    .line 4314
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerView;->getPlainText()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    .line 4316
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerView;->getMailContent()Landroid/webkit/WebHTMLMarkupData;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebHTMLMarkupData;->subPartList()Ljava/util/Vector;

    move-result-object v3

    .line 4318
    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object v7, v0

    move-wide v8, v1

    :cond_a
    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/webkit/WebSubPart;

    .line 4319
    if-eqz v6, :cond_a

    .line 4322
    invoke-virtual {v6}, Landroid/webkit/WebSubPart;->contentUri()Ljava/lang/String;

    move-result-object v0

    .line 4323
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 4325
    const-string v0, "content"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4326
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4327
    sget-object v2, Lcom/android/email/activity/MessageCompose;->ATTACHMENT_META_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 4329
    if-eqz v2, :cond_c

    .line 4331
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 4332
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 4333
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v8, v3

    .line 4335
    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_b

    .line 4336
    const-string v3, "Compose >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contentUri : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4340
    :cond_b
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 4344
    :cond_c
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v7

    move-wide v2, v8

    .line 4367
    :goto_8
    if-nez v4, :cond_12

    .line 4368
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 4370
    :goto_9
    if-nez v0, :cond_d

    .line 4371
    const-string v0, ""

    .line 4374
    :cond_d
    new-instance v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {v4}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    .line 4375
    iput-object v1, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 4376
    iput-object v0, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    .line 4377
    iput-wide v2, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    .line 4378
    invoke-virtual {v6}, Landroid/webkit/WebSubPart;->contentUri()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    .line 4379
    invoke-virtual {v6}, Landroid/webkit/WebSubPart;->getCid()Ljava/lang/String;

    move-result-object v0

    const-string v5, "cid:"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    .line 4381
    if-eqz v4, :cond_e

    iget-object v0, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v5, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    iget-object v6, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-ne v0, v5, :cond_e

    .line 4384
    iget v0, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    .line 4385
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v5, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    iget-object v6, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    .line 4389
    :cond_e
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v7, v1

    move-wide v8, v2

    .line 4390
    goto/16 :goto_7

    .line 4340
    :catchall_1
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    .line 4346
    :cond_f
    invoke-virtual {v6}, Landroid/webkit/WebSubPart;->fileSize()J

    move-result-wide v2

    .line 4348
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_10

    .line 4350
    if-eqz v1, :cond_10

    :try_start_5
    const-string v0, "file"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4352
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4353
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 4354
    invoke-virtual {v0}, Ljava/io/File;->length()J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result-wide v2

    .line 4363
    :cond_10
    :goto_a
    invoke-virtual {v6}, Landroid/webkit/WebSubPart;->getFileName()Ljava/lang/String;

    move-result-object v4

    .line 4364
    invoke-virtual {v6}, Landroid/webkit/WebSubPart;->getMime()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    .line 4357
    :catch_2
    move-exception v0

    .line 4358
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Email;->log(Ljava/lang/String;)V

    goto :goto_a

    .line 4395
    :cond_11
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/emailcommon/provider/EmailContent$Attachment;

    return-object v0

    .line 4216
    :catch_3
    move-exception v0

    move-object v12, v0

    move-object v0, v2

    move-object v2, v12

    goto/16 :goto_2

    :cond_12
    move-object v1, v4

    goto/16 :goto_9

    :cond_13
    move-object v1, v4

    goto/16 :goto_5
.end method

.method private static getBaseIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .parameter

    .prologue
    .line 777
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/MessageCompose;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 778
    const-string v1, "from_within_app"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 779
    return-object v0
.end method

.method private getComposerActivityContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 7242
    return-object p0
.end method

.method private getFilePath(Landroid/content/Intent;)Ljava/lang/String;
    .locals 10
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 11655
    const/4 v2, 0x0

    .line 11656
    .local v2, uri:Landroid/net/Uri;
    const/4 v9, 0x0

    .line 11658
    .local v9, mPath:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 11660
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 11661
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 11662
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFilePath: path= "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 11665
    :cond_0
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 11717
    :goto_0
    return-object v3

    .line 11668
    :cond_1
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11669
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 11670
    const-string v0, "Email"

    const-string v1, "getFilePath Uri scheme is file"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 11673
    :cond_2
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 11674
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 11675
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFilePath file path = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object v3, v9

    .line 11678
    goto :goto_0

    .line 11679
    :cond_4
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "picasa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 11681
    const-string v0, "Email"

    const-string v1, "getFilePath Uri scheme is content"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 11683
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 11686
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_5

    .line 11690
    const-string v0, "Email"

    const-string v1, "Query on returns null result."

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 11696
    :cond_5
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_7

    .line 11698
    :cond_6
    const-string v0, "Email"

    const-string v1, "Query on returns 0 or multiple rows."

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11706
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 11703
    :cond_7
    :try_start_1
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 11704
    .local v8, filePath:Ljava/lang/String;
    move-object v9, v8

    .line 11706
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v3, v9

    .line 11709
    goto/16 :goto_0

    .line 11706
    .end local v8           #filePath:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 11711
    .end local v7           #c:Landroid/database/Cursor;
    :cond_8
    const-string v0, "Email"

    const-string v1, "getFilePath URI path is not normal scheme"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 11714
    :cond_9
    const-string v0, "Email"

    const-string v1, "getFilePath: Uri is null"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private getFilePath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 11601
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 11651
    :cond_0
    :goto_0
    return-object v3

    .line 11604
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11605
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 11606
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 11607
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFilePath file path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 11611
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "picasa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 11614
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 11617
    if-nez v1, :cond_3

    .line 11618
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 11619
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returns null result."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 11625
    :cond_3
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_6

    .line 11626
    :cond_4
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_5

    .line 11627
    const-string v0, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Query on "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " returns 0 or multiple rows."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11636
    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 11633
    :cond_6
    :try_start_1
    const-string v0, "_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 11636
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 11639
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 11640
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFilePath file path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 11636
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 11645
    :cond_7
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 11646
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFilePath URI path is not file scheme - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private getMaxAttachmentUploadSize()I
    .locals 4

    .prologue
    .line 9885
    .line 9887
    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mApp:Lcom/android/email/Email;

    invoke-virtual {v0}, Lcom/android/email/Email;->getSettingsManager()Lcom/seven/Z7/common/settings/Z7SettingsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSevenAccountKey:J

    long-to-int v1, v1

    const-string v2, "hidden_pref_max_attachment_size"

    const-string v3, "0"

    invoke-virtual {v0, v1, v2, v3}, Lcom/seven/Z7/common/settings/Z7SettingsManager;->getStringPreference(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 9897
    :goto_0
    if-nez v0, :cond_0

    .line 9898
    sget v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->MAX_ATTACHMENT_UPLOAD_SIZE:I

    .line 9900
    :cond_0
    return v0

    .line 9894
    :catch_0
    move-exception v0

    .line 9895
    sget v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->MAX_ATTACHMENT_UPLOAD_SIZE:I

    goto :goto_0
.end method

.method public static getMessageComposeIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 788
    invoke-static {p0}, Lcom/android/email/activity/MessageCompose;->getBaseIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 789
    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 790
    const-string v1, "account_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 791
    return-object v0
.end method

.method private getOrCreateDraftId()J
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 4405
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    monitor-enter v3

    .line 4406
    :try_start_0
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v4, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_0

    .line 4407
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    monitor-exit v3

    .line 4416
    :goto_0
    return-wide v1

    .line 4410
    :cond_0
    iget-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mMessageLoaded:Z

    if-nez v2, :cond_1

    .line 4411
    const-wide/16 v1, -0x1

    monitor-exit v3

    goto :goto_0

    .line 4417
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 4413
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->getAttachmentsFromUI()[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    .line 4414
    .local v0, attachments:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    array-length v5, v0

    if-lez v5, :cond_2

    const/4 v1, 0x1

    :cond_2
    const/4 v5, 0x0

    invoke-direct {p0, v2, v4, v1, v5}, Lcom/android/email/activity/MessageCompose;->updateMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Account;ZZ)V

    .line 4415
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v4}, Lcom/android/email/Controller;->saveToMailbox(Lcom/android/emailcommon/provider/EmailContent$Message;I)V

    .line 4416
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private getPackedAddresses(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "addrStr"

    .prologue
    .line 3959
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    .line 3960
    .local v0, addresses:[Lcom/android/emailcommon/mail/Address;
    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getPreviewImageOfAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I
    .locals 7
    .parameter

    .prologue
    const v1, 0x7f020213

    const v2, 0x7f02020e

    const v0, 0x7f02020a

    const v3, 0x7f0201ff

    const/4 v6, 0x1

    .line 10776
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".vcf"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v6, :cond_1

    .line 10777
    const v0, 0x7f0201fb

    .line 10833
    :cond_0
    :goto_0
    return v0

    .line 10778
    :cond_1
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eq v4, v6, :cond_0

    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eq v4, v6, :cond_0

    .line 10781
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".mp4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v6, :cond_2

    .line 10782
    const v0, 0x7f02020d

    goto :goto_0

    .line 10783
    :cond_2
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".mp3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eq v4, v6, :cond_3

    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".wma"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eq v4, v6, :cond_3

    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".3ga"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v6, :cond_4

    :cond_3
    move v0, v2

    .line 10786
    goto :goto_0

    .line 10787
    :cond_4
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".vcs"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v6, :cond_5

    .line 10788
    const v0, 0x7f0201f7

    goto :goto_0

    .line 10789
    :cond_5
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".vnt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v6, :cond_6

    .line 10790
    const v0, 0x7f02020c

    goto :goto_0

    .line 10791
    :cond_6
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".avi"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eq v4, v6, :cond_7

    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".3gp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eq v4, v6, :cond_7

    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".wmv"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v6, :cond_8

    :cond_7
    move v0, v1

    .line 10794
    goto/16 :goto_0

    .line 10795
    :cond_8
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".hwp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v6, :cond_9

    .line 10796
    const v0, 0x7f020209

    goto/16 :goto_0

    .line 10797
    :cond_9
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".pdf"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v6, :cond_a

    .line 10798
    const v0, 0x7f02020f

    goto/16 :goto_0

    .line 10799
    :cond_a
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".doc"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eq v4, v6, :cond_b

    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".docx"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v6, :cond_c

    .line 10801
    :cond_b
    const v0, 0x7f0201fc

    goto/16 :goto_0

    .line 10802
    :cond_c
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".gul"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v6, :cond_d

    .line 10803
    const v0, 0x7f02020b

    goto/16 :goto_0

    .line 10804
    :cond_d
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".zip"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v6, :cond_e

    .line 10805
    const v0, 0x7f0201fa

    goto/16 :goto_0

    .line 10806
    :cond_e
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".txt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v6, :cond_f

    .line 10807
    const v0, 0x7f020212

    goto/16 :goto_0

    .line 10808
    :cond_f
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".rtf"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v6, :cond_10

    .line 10809
    const v0, 0x7f020211

    goto/16 :goto_0

    .line 10810
    :cond_10
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".htm"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eq v4, v6, :cond_11

    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".html"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v6, :cond_12

    .line 10812
    :cond_11
    const v0, 0x7f020208

    goto/16 :goto_0

    .line 10813
    :cond_12
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".xls"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eq v4, v6, :cond_13

    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".xlsx"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v6, :cond_14

    .line 10815
    :cond_13
    const v0, 0x7f020214

    goto/16 :goto_0

    .line 10816
    :cond_14
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".ppt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eq v4, v6, :cond_15

    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".pptx"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v6, :cond_16

    .line 10818
    :cond_15
    const v0, 0x7f020210

    goto/16 :goto_0

    .line 10820
    :cond_16
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    if-eqz v4, :cond_19

    .line 10821
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "image/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 10823
    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v4, "video/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    move v0, v1

    .line 10824
    goto/16 :goto_0

    .line 10825
    :cond_17
    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    move v0, v2

    .line 10826
    goto/16 :goto_0

    :cond_18
    move v0, v3

    .line 10828
    goto/16 :goto_0

    :cond_19
    move v0, v3

    .line 10830
    goto/16 :goto_0
.end method

.method public static getRotatedDegree(Landroid/net/Uri;Landroid/content/Context;)I
    .locals 11
    .parameter "uri"
    .parameter "context"

    .prologue
    .line 10742
    const/4 v8, 0x0

    .line 10743
    .local v8, degree:I
    if-eqz p0, :cond_3

    invoke-static {p0}, Lcom/android/email/activity/MessageCompose;->isMediaUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10744
    const/4 v7, 0x0

    .line 10746
    .local v7, cur:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v2, p0

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 10748
    if-eqz v7, :cond_0

    .line 10749
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10750
    const-string v0, "orientation"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    .line 10755
    :cond_0
    if-eqz v7, :cond_1

    .line 10756
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 10769
    .end local v7           #cur:Landroid/database/Cursor;
    :cond_1
    :goto_1
    return v8

    .line 10755
    .restart local v7       #cur:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 10756
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 10755
    :cond_2
    throw v0

    .line 10759
    .end local v7           #cur:Landroid/database/Cursor;
    :cond_3
    const-string v0, "file"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10761
    :try_start_1
    new-instance v10, Landroid/media/ExifInterface;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 10762
    .local v10, exif:Landroid/media/ExifInterface;
    const-string v0, "Orientation"

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->exifOrientationToDegrees(I)F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    float-to-int v8, v0

    goto :goto_1

    .line 10764
    .end local v10           #exif:Landroid/media/ExifInterface;
    :catch_0
    move-exception v9

    .line 10765
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 10753
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v7       #cur:Landroid/database/Cursor;
    :catch_1
    move-exception v0

    .line 10755
    if-eqz v7, :cond_1

    goto :goto_0
.end method

.method private getUpdateContentValues(Lcom/android/emailcommon/provider/EmailContent$Message;)Landroid/content/ContentValues;
    .locals 4
    .parameter "message"

    .prologue
    .line 3964
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3965
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "timeStamp"

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3966
    const-string v1, "fromList"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3967
    const-string v1, "toList"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3968
    const-string v1, "ccList"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3969
    const-string v1, "bccList"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3970
    const-string v1, "subject"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3971
    const-string v1, "displayName"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3972
    const-string v1, "flagRead"

    iget-boolean v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3973
    const-string v1, "flagLoaded"

    iget v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3974
    const-string v1, "flagAttachment"

    iget-boolean v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3975
    const-string v1, "flags"

    iget v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3976
    const-string v1, "importance"

    iget v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mImportance:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3979
    const-string v1, "smimeFlags"

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Message;->getSmimeFlags()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3983
    const-string v1, "IRMTemplateId"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3984
    const-string v1, "IRMTemplateName"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3985
    const-string v1, "IRMTemplateDescription"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateDescription:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3987
    const-string v1, "snippet"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/emailcommon/mail/Snippet;->fromPlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3988
    return-object v0
.end method

.method private handleCommand(I)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 7615
    sparse-switch p1, :sswitch_data_0

    :goto_0
    move v0, v1

    .line 7742
    :goto_1
    return v0

    .line 7621
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->onComposerAttach()V

    goto :goto_1

    .line 7633
    :sswitch_1
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/email/Controller;->hasPremiumExpiredAccounts(JJ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7634
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onSend()V

    goto :goto_1

    .line 7636
    :cond_0
    invoke-static {p0}, Lcom/android/email/combined/common/ExceptionUtil;->showDialogPremiumExpired(Landroid/app/Activity;)V

    goto :goto_1

    .line 7642
    :sswitch_2
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->AddComposeToMe()V

    goto :goto_0

    .line 7646
    :sswitch_3
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->arrangeScrollViewForHeaderChange()V

    .line 7647
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->addAllAddressFromEditText(Z)V

    .line 7648
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout(Z)V

    .line 7649
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->focusCcLayout(Z)V

    .line 7650
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onRefreshLayoutCcBcc()V

    goto :goto_1

    .line 7654
    :sswitch_4
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->arrangeScrollViewForHeaderChange()V

    .line 7655
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v2}, Lcom/android/email/activity/AddressTextView;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v2}, Lcom/android/email/activity/AddressTextView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7656
    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 7657
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->addAllAddressFromEditText(Z)V

    .line 7658
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v2}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->removeAll()V

    .line 7659
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v2}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->removeAll()V

    .line 7660
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/android/email/activity/AddressTextView;->setText(Ljava/lang/CharSequence;)V

    .line 7661
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/android/email/activity/AddressTextView;->setText(Ljava/lang/CharSequence;)V

    .line 7662
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->shrinkCcBccLayout()V

    .line 7663
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v2}, Lcom/android/email/activity/AddressTextView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7664
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->focusToLayout(Z)V

    goto :goto_1

    .line 7666
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->focusToLayout(Z)V

    goto :goto_1

    .line 7670
    :sswitch_5
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onSave()V

    .line 7671
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    goto :goto_1

    .line 7675
    :sswitch_6
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onCancel()V

    goto :goto_1

    .line 7690
    :sswitch_7
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onCancel()V

    goto/16 :goto_1

    .line 7709
    :sswitch_8
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->arrangeScrollViewForHeaderChange()V

    .line 7710
    invoke-direct {p0, v1, v0}, Lcom/android/email/activity/MessageCompose;->setIncludeQuotedText(ZZ)V

    .line 7711
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->SetOriginMsgEdited(Z)Z

    goto/16 :goto_1

    .line 7715
    :sswitch_9
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onShowPriorityDialog()V

    goto/16 :goto_1

    .line 7719
    :sswitch_a
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onShowReceiptsOptionsDialog()V

    goto/16 :goto_1

    .line 7723
    :sswitch_b
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mTemplateId:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 7724
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onShowSecurityOptionsDialog()V

    goto/16 :goto_1

    .line 7726
    :cond_4
    const v2, 0x7f080598

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 7732
    :sswitch_c
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->onIRMOperation()Z

    goto/16 :goto_1

    .line 7615
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_7
        0x7f100184 -> :sswitch_1
        0x7f100185 -> :sswitch_0
        0x7f1001ae -> :sswitch_8
        0x7f1002d1 -> :sswitch_2
        0x7f1002d2 -> :sswitch_3
        0x7f1002d3 -> :sswitch_4
        0x7f1002d4 -> :sswitch_5
        0x7f1002d5 -> :sswitch_6
        0x7f1002d6 -> :sswitch_9
        0x7f1002d7 -> :sswitch_a
        0x7f1002d8 -> :sswitch_b
        0x7f1002d9 -> :sswitch_c
    .end sparse-switch
.end method

.method private hasInlineDataImage(JI)Z
    .locals 4
    .parameter "mId"
    .parameter "isMimeLoaded"

    .prologue
    .line 12228
    const/4 v1, 0x0

    .line 12229
    .local v1, isDataImage:Z
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyHtmlWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 12231
    .local v0, html:Ljava/lang/String;
    if-nez v0, :cond_0

    move v2, v1

    .line 12239
    .end local v1           #isDataImage:Z
    .local v2, isDataImage:I
    :goto_0
    return v2

    .line 12234
    .end local v2           #isDataImage:I
    .restart local v1       #isDataImage:Z
    :cond_0
    if-eqz p3, :cond_1

    move v2, v1

    .line 12235
    .restart local v2       #isDataImage:I
    goto :goto_0

    .line 12237
    .end local v2           #isDataImage:I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->parseHtmlATag(Ljava/lang/String;)Z

    move-result v1

    move v2, v1

    .line 12239
    .restart local v2       #isDataImage:I
    goto :goto_0
.end method

.method private imageResizeByResolution(Ljava/lang/String;III)Landroid/net/Uri;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 11400
    const/4 v7, 0x0

    .line 11404
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 11406
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11407
    :cond_0
    const/4 v0, 0x0

    .line 11512
    :goto_0
    return-object v0

    .line 11408
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11409
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 11410
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 11413
    :cond_3
    :try_start_0
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 11416
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 11417
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/android/email/activity/MessageCompose;->getRotatedDegree(Landroid/net/Uri;Landroid/content/Context;)I

    move-result v9

    .line 11418
    int-to-float v1, v9

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 11419
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 11420
    const/16 v1, 0x5a

    if-eq v9, v1, :cond_4

    const/16 v1, 0x10e

    if-ne v9, v1, :cond_6

    .line 11421
    :cond_4
    const/4 v1, 0x1

    invoke-static {v0, p3, p2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 11425
    :goto_1
    const-string v1, "Email"

    const-string v2, "onSelectedResizeType() resize done!"

    invoke-static {v1, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    .line 11448
    :goto_2
    if-eqz v4, :cond_10

    .line 11450
    :try_start_1
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 11451
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 11453
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 11454
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 11455
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 11456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_resized"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 11457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11458
    const/4 v0, 0x0

    .line 11460
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11461
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_5

    .line 11462
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    :cond_5
    move-object v3, v2

    .line 11464
    :goto_3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 11466
    add-int/lit8 v0, v0, 0x1

    .line 11467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_resized_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 11468
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    move-object v3, v2

    goto :goto_3

    .line 11423
    :cond_6
    const/4 v1, 0x1

    :try_start_2
    invoke-static {v0, p2, p3, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto/16 :goto_1

    .line 11427
    :catch_0
    move-exception v0

    .line 11429
    const/4 v1, 0x1

    if-ne p4, v1, :cond_7

    .line 11430
    const/4 v0, 0x2

    :try_start_3
    iput v0, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 11431
    invoke-static {p1, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_4
    move-object v4, v0

    .line 11445
    goto/16 :goto_2

    .line 11432
    :cond_7
    const/4 v1, 0x2

    if-ne p4, v1, :cond_8

    .line 11433
    const/4 v0, 0x4

    iput v0, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 11434
    invoke-static {p1, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_4

    .line 11435
    :cond_8
    const/4 v1, 0x3

    if-ne p4, v1, :cond_9

    .line 11436
    const/16 v0, 0x8

    iput v0, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 11437
    invoke-static {p1, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_4

    .line 11439
    :cond_9
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSelectedResizeType() resize error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1

    .line 11440
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 11442
    :catch_1
    move-exception v0

    .line 11443
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSelectedResizeType() resize error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 11444
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 11471
    :cond_a
    :try_start_4
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 11476
    const/4 v1, 0x0

    .line 11479
    :try_start_5
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 11484
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, ".jpg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, ".jpeg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_d

    .line 11486
    :cond_b
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v4, v0, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 11491
    :cond_c
    :goto_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 11492
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 11493
    const/4 v1, 0x0

    .line 11494
    const-string v0, "Email"

    const-string v3, "onSelectedResizeType() restore done!"

    invoke-static {v0, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-object v0, v2

    .line 11508
    :goto_6
    if-eqz v0, :cond_f

    .line 11509
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_0

    .line 11472
    :catch_2
    move-exception v0

    .line 11473
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 11474
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 11487
    :cond_d
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, ".png"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_c

    .line 11488
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v4, v0, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_5

    .line 11495
    :catch_3
    move-exception v0

    .line 11496
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 11497
    if-eqz v1, :cond_e

    .line 11499
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 11500
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    move-object v0, v2

    .line 11504
    goto :goto_6

    .line 11501
    :catch_4
    move-exception v0

    .line 11503
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e
    move-object v0, v2

    goto :goto_6

    .line 11511
    :cond_f
    const-string v0, "Email"

    const-string v1, "onSelectedResizeType() file = null"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 11512
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_10
    move-object v0, v7

    goto :goto_6
.end method

.method private includeQuotedText()Z
    .locals 1

    .prologue
    .line 6453
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 6454
    const/4 v0, 0x1

    .line 6456
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initViews()V
    .locals 11

    .prologue
    const/4 v3, -0x1

    const/high16 v10, 0x200

    const/16 v2, 0xff

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 1780
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountInfoArrayList:Ljava/util/ArrayList;

    .line 1782
    const v0, 0x7f10016f

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCompose_header_layout:Landroid/widget/LinearLayout;

    .line 1784
    const v0, 0x7f1001a7

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToLayout:Landroid/widget/RelativeLayout;

    .line 1785
    const v0, 0x7f100194

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcLayout:Landroid/widget/RelativeLayout;

    .line 1786
    const v0, 0x7f10018c

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccLayout:Landroid/widget/RelativeLayout;

    .line 1787
    const v0, 0x7f10019b

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromLayout:Landroid/widget/LinearLayout;

    .line 1815
    const v0, 0x7f1001ab

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditLayout:Landroid/widget/RelativeLayout;

    .line 1816
    const v0, 0x7f100198

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditLayout:Landroid/widget/RelativeLayout;

    .line 1817
    const v0, 0x7f100191

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditLayout:Landroid/widget/RelativeLayout;

    .line 1819
    invoke-static {}, Lcom/android/email/ContactInfoCache;->getInstance()Lcom/android/email/ContactInfoCache;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1820
    invoke-static {p0}, Lcom/android/email/ContactInfoCache;->init(Landroid/content/Context;)V

    .line 1822
    :cond_0
    const v0, 0x7f1001a9

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/bubblelayout/BubbleLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    .line 1823
    const v0, 0x7f100196

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/bubblelayout/BubbleLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    .line 1824
    const v0, 0x7f10018e

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/bubblelayout/BubbleLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    .line 1826
    const v0, 0x7f1001ad

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/AddressTextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    .line 1827
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/AddressTextView;->setCursorColor(I)V

    .line 1828
    const v0, 0x7f10019a

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/AddressTextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    .line 1829
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/AddressTextView;->setCursorColor(I)V

    .line 1830
    const v0, 0x7f100193

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/AddressTextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    .line 1831
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/AddressTextView;->setCursorColor(I)V

    .line 1832
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    const v1, 0x7f1001a2

    invoke-virtual {v0, v1}, Lcom/android/email/activity/AddressTextView;->setNextFocusDownId(I)V

    .line 1834
    const v0, 0x7f1001ac

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToContactBtn:Landroid/widget/ImageButton;

    .line 1835
    const v0, 0x7f100199

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcContactBtn:Landroid/widget/ImageButton;

    .line 1836
    const v0, 0x7f100192

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccContactBtn:Landroid/widget/ImageButton;

    .line 1846
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f1001a8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToTitleText:Landroid/widget/TextView;

    .line 1848
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f100195

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcTitleText:Landroid/widget/TextView;

    .line 1850
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f10018d

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccTitleText:Landroid/widget/TextView;

    .line 1852
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccTitleText:Landroid/widget/TextView;

    const v1, 0x7f1001a2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setNextFocusDownId(I)V

    .line 1859
    const v0, 0x7f10019e

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectTitleText:Landroid/widget/TextView;

    .line 1863
    const v0, 0x7f1001a2

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    .line 1864
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setCursorColor(I)V

    .line 1867
    const v0, 0x7f10019f

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mPriorityHighIcon:Landroid/widget/ImageView;

    .line 1868
    const v0, 0x7f1001a0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mPriorityLowIcon:Landroid/widget/ImageView;

    .line 1869
    const v0, 0x7f1001a3

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSignIcon:Landroid/widget/ImageView;

    .line 1870
    const v0, 0x7f1001a5

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mEncryptionIcon:Landroid/widget/ImageView;

    .line 1873
    const v0, 0x7f1001a1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mIrmIcon:Landroid/widget/ImageView;

    .line 1875
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mPriorityHighIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1876
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mPriorityLowIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1877
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSignIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1878
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mEncryptionIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1881
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mIrmIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1884
    const v0, 0x7f10017a

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/HtmlComposerView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    .line 1885
    const v0, 0x7f10017c

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/HtmlComposerView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    .line 1887
    const v0, 0x7f10016e

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/ExtendedScrollView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mScrollView:Lcom/android/email/ExtendedScrollView;

    .line 1888
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mScrollView:Lcom/android/email/ExtendedScrollView;

    new-instance v1, Lcom/android/email/activity/MessageCompose$7;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$7;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1}, Lcom/android/email/ExtendedScrollView;->setOnChangeKeyboardStatusListener(Lcom/android/email/ExtendedScrollView$onChangeKeyboardStatusListener;)V

    .line 1897
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    const v1, 0x7f1001aa

    invoke-virtual {v0, v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToSummaryText:Landroid/widget/TextView;

    .line 1899
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    const v1, 0x7f100197

    invoke-virtual {v0, v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcSummaryText:Landroid/widget/TextView;

    .line 1901
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    const v1, 0x7f10018f

    invoke-virtual {v0, v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccSummaryText:Landroid/widget/TextView;

    .line 1903
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f10019d

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromSummaryText:Landroid/widget/TextView;

    .line 1909
    const v0, 0x7f100174

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentLayout:Landroid/widget/LinearLayout;

    .line 1910
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f100176

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    .line 1911
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f100175

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentSummaryLayout:Landroid/widget/RelativeLayout;

    .line 1920
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f10018a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentSummaryUpDownBtn:Landroid/widget/ImageView;

    .line 1926
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->registerChildViewsFromOwnXML()V

    .line 1927
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->registerChildViewsFromOwnXML()V

    .line 1928
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->registerChildViewsFromOwnXML()V

    .line 1929
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->registerMessageHandler(Landroid/os/Handler;)V

    .line 1930
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->registerMessageHandler(Landroid/os/Handler;)V

    .line 1931
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->registerMessageHandler(Landroid/os/Handler;)V

    .line 1933
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0, p0}, Lcom/android/email/activity/AddressTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1934
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0, p0}, Lcom/android/email/activity/AddressTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1935
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0, p0}, Lcom/android/email/activity/AddressTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1939
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1940
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setSoundEffectsEnabled(Z)V

    .line 1941
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1942
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setSoundEffectsEnabled(Z)V

    .line 1943
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1944
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setSoundEffectsEnabled(Z)V

    .line 1945
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1946
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setSoundEffectsEnabled(Z)V

    .line 1950
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromSummaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1951
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromSummaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setSoundEffectsEnabled(Z)V

    .line 1952
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToSummaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1953
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToSummaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setSoundEffectsEnabled(Z)V

    .line 1954
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcSummaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1955
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcSummaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setSoundEffectsEnabled(Z)V

    .line 1956
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccSummaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1957
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccSummaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setSoundEffectsEnabled(Z)V

    .line 1960
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToSummaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1961
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcSummaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1962
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccSummaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1963
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1984
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToContactBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1985
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcContactBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1986
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccContactBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2004
    const v0, 0x7f100172

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->irmRemoveView:Landroid/widget/ImageView;

    .line 2005
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->irmRemoveView:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/email/activity/MessageCompose$8;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$8;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2047
    const v0, 0x7f100171

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->templateDescriptionLayout:Landroid/widget/LinearLayout;

    .line 2048
    const v0, 0x7f100173

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->templateDescription:Landroid/widget/TextView;

    .line 2051
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentSummaryLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2053
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentSummaryUpDownBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2055
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->setDefaultFontSizeBySettings()I

    move-result v0

    sput v0, Lcom/android/email/activity/MessageCompose;->mDefaultFontSize:I

    .line 2058
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    sget v1, Lcom/android/email/activity/MessageCompose;->mDefaultFontSize:I

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->setDefaultFontSize(I)V

    .line 2059
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->enableEditing()V

    .line 2060
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->setAutoTextSelection(Z)V

    .line 2061
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, p0}, Landroid/webkit/HtmlComposerView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 2062
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, p0}, Landroid/webkit/HtmlComposerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2063
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v8}, Landroid/webkit/HtmlComposerView;->setVerticalScrollBarEnabled(Z)V

    .line 2064
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->getImeOptions()I

    move-result v1

    or-int/2addr v1, v10

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->setImeOptions(I)V

    .line 2067
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposeMenu:Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->setWebView(Landroid/webkit/HtmlComposerView;)V

    .line 2068
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposeMenu:Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->setSelectionCallback(Landroid/webkit/SelectActionModeCallbackSec;)V

    .line 2070
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    sget v1, Lcom/android/email/activity/MessageCompose;->mDefaultFontSize:I

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->setDefaultFontSize(I)V

    .line 2071
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->enableEditing()V

    .line 2072
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->setAutoTextSelection(Z)V

    .line 2073
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, p0}, Landroid/webkit/HtmlComposerView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 2074
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, p0}, Landroid/webkit/HtmlComposerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2075
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v8}, Landroid/webkit/HtmlComposerView;->setVerticalScrollBarEnabled(Z)V

    .line 2076
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->getImeOptions()I

    move-result v1

    or-int/2addr v1, v10

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->setImeOptions(I)V

    .line 2078
    const v0, 0x7f10017d

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDummy_view:Landroid/widget/LinearLayout;

    .line 2079
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDummy_view:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2080
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDummy_view:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2081
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDummy_view:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 2088
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedMenu:Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->setWebView(Landroid/webkit/HtmlComposerView;)V

    .line 2089
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedMenu:Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->setSelectionCallback(Landroid/webkit/SelectActionModeCallbackSec;)V

    .line 2098
    const v0, 0x7f10017f

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLayout_ToolBarView_noscroll:Landroid/widget/LinearLayout;

    .line 2100
    const v0, 0x7f100180

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/ToolBarView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView_noscroll:Lcom/android/email/activity/ToolBarView;

    .line 2101
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView_noscroll:Lcom/android/email/activity/ToolBarView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ToolBarView;->setHtmlComposerView(Landroid/webkit/HtmlComposerView;)V

    .line 2103
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView_noscroll:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v0, p0}, Lcom/android/email/activity/ToolBarView;->setActivity(Landroid/app/Activity;)V

    .line 2107
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView_noscroll:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v0}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v0

    invoke-static {v8, v8, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ToolBarScrollView;->changeToolBarFontColor(I)V

    .line 2108
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView_noscroll:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v0}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v0

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ToolBarScrollView;->changeToolBarFontBgColor(I)V

    .line 2109
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLayout_ToolBarView_noscroll:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2111
    const v0, 0x7f100177

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHeightLayout_TooBarView:Landroid/widget/LinearLayout;

    .line 2112
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHeightLayout_TooBarView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2114
    const v0, 0x7f100178

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLayout_ToolBarView:Landroid/widget/LinearLayout;

    .line 2116
    const v0, 0x7f100179

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/ToolBarView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;

    .line 2117
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ToolBarView;->setHtmlComposerView(Landroid/webkit/HtmlComposerView;)V

    .line 2119
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v0, p0}, Lcom/android/email/activity/ToolBarView;->setActivity(Landroid/app/Activity;)V

    .line 2121
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v0}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v0

    invoke-static {v8, v8, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ToolBarScrollView;->changeToolBarFontColor(I)V

    .line 2122
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v0}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v0

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ToolBarScrollView;->changeToolBarFontBgColor(I)V

    .line 2124
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v0, v8}, Lcom/android/email/activity/ToolBarView;->setVisibility(I)V

    .line 2125
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLayout_ToolBarView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2127
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    new-instance v1, Lcom/android/email/activity/MessageCompose$9;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$9;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->setOnRichTextFormatChangedListener(Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;)V

    .line 2137
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    new-instance v1, Lcom/android/email/activity/MessageCompose$10;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$10;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->setOnRichTextFormatChangedListener(Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;)V

    .line 2149
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;

    const v1, 0x7f10024f

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ToolBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolbarLayout:Landroid/widget/RelativeLayout;

    .line 2150
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView_noscroll:Lcom/android/email/activity/ToolBarView;

    const v1, 0x7f10024f

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ToolBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolbarLayoutNoscroll:Landroid/widget/RelativeLayout;

    .line 2154
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 2156
    if-lez v0, :cond_1

    .line 2157
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToTitleText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mToTitleText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    .line 2158
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mToTitleText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mToTitleText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    sub-int v3, v0, v3

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->setExpectedLayoutWidth(I)V

    .line 2161
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mCcTitleText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mCcTitleText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    sub-int v3, v0, v3

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->setExpectedLayoutWidth(I)V

    .line 2164
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mBccTitleText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mBccTitleText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v0, v3

    sub-int/2addr v0, v1

    invoke-virtual {v2, v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->setExpectedLayoutWidth(I)V

    .line 2169
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->focusToLayout(Z)V

    .line 2170
    invoke-direct {p0, v8}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout(Z)V

    .line 2172
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    new-instance v1, Lcom/android/email/activity/MessageCompose$11;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$11;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 2229
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    new-instance v1, Lcom/android/email/activity/MessageCompose$12;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$12;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 2245
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2247
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar:Landroid/app/ActionBar;

    .line 2259
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar:Landroid/app/ActionBar;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 2260
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040070

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 2267
    const v0, 0x7f100182

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar_Title:Landroid/widget/TextView;

    .line 2268
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar_Title:Landroid/widget/TextView;

    const v1, 0x7f080039

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2269
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar_Title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2272
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/email/activity/MessageCompose;->mCurrentOrientation:I

    .line 2273
    iget v0, p0, Lcom/android/email/activity/MessageCompose;->mCurrentOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2274
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar_Title:Landroid/widget/TextView;

    const/16 v1, 0x244

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    .line 2279
    :goto_0
    const v0, 0x7f100185

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar_attach:Landroid/widget/LinearLayout;

    .line 2280
    const v0, 0x7f100184

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar_mail:Landroid/widget/LinearLayout;

    .line 2284
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar_attach:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2285
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar_mail:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2298
    const v0, 0x7f10017b

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    .line 2302
    const v0, 0x7f1001ae

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextDelete:Landroid/widget/ImageView;

    .line 2307
    new-instance v0, Lcom/android/email/activity/MessageCompose$13;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageCompose$13;-><init>(Lcom/android/email/activity/MessageCompose;)V

    .line 2351
    new-instance v1, Lcom/android/email/activity/MessageCompose$14;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$14;-><init>(Lcom/android/email/activity/MessageCompose;)V

    .line 2424
    new-instance v2, Lcom/android/email/activity/MessageCompose$15;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageCompose$15;-><init>(Lcom/android/email/activity/MessageCompose;)V

    .line 2495
    new-instance v3, Lcom/android/email/activity/MessageCompose$16;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageCompose$16;-><init>(Lcom/android/email/activity/MessageCompose;)V

    .line 2520
    new-instance v4, Lcom/android/email/activity/MessageCompose$17;

    invoke-direct {v4, p0}, Lcom/android/email/activity/MessageCompose$17;-><init>(Lcom/android/email/activity/MessageCompose;)V

    .line 2641
    const/4 v5, 0x2

    new-array v5, v5, [Landroid/text/InputFilter;

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    const/16 v7, 0xbb8

    invoke-direct {v6, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v5, v8

    const/4 v6, 0x1

    aput-object v4, v5, v6

    .line 2645
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2647
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v4, v5}, Lcom/android/email/activity/AddressTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 2648
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v4, v5}, Lcom/android/email/activity/AddressTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 2649
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v4, v5}, Lcom/android/email/activity/AddressTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 2651
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v4, v0}, Lcom/android/email/activity/AddressTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2652
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v4, v0}, Lcom/android/email/activity/AddressTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2653
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v4, v0}, Lcom/android/email/activity/AddressTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2654
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2658
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2659
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v2}, Landroid/webkit/HtmlComposerView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2670
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v1}, Lcom/android/email/activity/AddressTextView;->getImeOptions()I

    move-result v1

    or-int/2addr v1, v10

    invoke-virtual {v0, v1}, Lcom/android/email/activity/AddressTextView;->setImeOptions(I)V

    .line 2671
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v1}, Lcom/android/email/activity/AddressTextView;->getImeOptions()I

    move-result v1

    or-int/2addr v1, v10

    invoke-virtual {v0, v1}, Lcom/android/email/activity/AddressTextView;->setImeOptions(I)V

    .line 2672
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v1}, Lcom/android/email/activity/AddressTextView;->getImeOptions()I

    move-result v1

    or-int/2addr v1, v10

    invoke-virtual {v0, v1}, Lcom/android/email/activity/AddressTextView;->setImeOptions(I)V

    .line 2674
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getImeOptions()I

    move-result v1

    or-int/2addr v1, v10

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 2694
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2695
    invoke-direct {p0, v8, v8}, Lcom/android/email/activity/MessageCompose;->setIncludeQuotedText(ZZ)V

    .line 2698
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2700
    new-instance v0, Lcom/android/email/EmailAddressValidator;

    invoke-direct {v0}, Lcom/android/email/EmailAddressValidator;-><init>()V

    .line 2702
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->setupAddressAdapters()V

    .line 2704
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterTo:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v1, v2}, Lcom/android/email/activity/AddressTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2705
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    new-instance v2, Landroid/text/util/Rfc822Tokenizer;

    invoke-direct {v2}, Landroid/text/util/Rfc822Tokenizer;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/email/activity/AddressTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 2706
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v1, v0}, Lcom/android/email/activity/AddressTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 2707
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    new-instance v2, Lcom/android/email/activity/MessageCompose$18;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageCompose$18;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v1, v2}, Lcom/android/email/activity/AddressTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2724
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterCc:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v1, v2}, Lcom/android/email/activity/AddressTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2725
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    new-instance v2, Landroid/text/util/Rfc822Tokenizer;

    invoke-direct {v2}, Landroid/text/util/Rfc822Tokenizer;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/email/activity/AddressTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 2726
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v1, v0}, Lcom/android/email/activity/AddressTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 2727
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    new-instance v2, Lcom/android/email/activity/MessageCompose$19;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageCompose$19;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v1, v2}, Lcom/android/email/activity/AddressTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2744
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterBcc:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v1, v2}, Lcom/android/email/activity/AddressTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2745
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    new-instance v2, Landroid/text/util/Rfc822Tokenizer;

    invoke-direct {v2}, Landroid/text/util/Rfc822Tokenizer;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/email/activity/AddressTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 2746
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v1, v0}, Lcom/android/email/activity/AddressTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 2747
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    new-instance v1, Lcom/android/email/activity/MessageCompose$20;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$20;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1}, Lcom/android/email/activity/AddressTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2792
    return-void

    .line 2276
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar_Title:Landroid/widget/TextView;

    const/16 v1, 0x118

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    goto/16 :goto_0
.end method

.method private initializeFromMailTo(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 8623
    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 8624
    const-string v1, "mailto"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 8628
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 8629
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8633
    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    const-string v2, " ,"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/email/activity/MessageCompose;->addAddresses(Lcom/android/email/activity/bubblelayout/BubbleLayout;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8641
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "foo://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 8643
    const-string v0, "cc"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 8644
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/android/email/activity/MessageCompose;->addAddresses(Lcom/android/email/activity/bubblelayout/BubbleLayout;[Ljava/lang/String;)V

    .line 8646
    const-string v0, "to"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 8647
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/android/email/activity/MessageCompose;->addAddresses(Lcom/android/email/activity/bubblelayout/BubbleLayout;[Ljava/lang/String;)V

    .line 8649
    const-string v0, "bcc"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 8650
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/android/email/activity/MessageCompose;->addAddresses(Lcom/android/email/activity/bubblelayout/BubbleLayout;[Ljava/lang/String;)V

    .line 8652
    const-string v0, "subject"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 8653
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 8654
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 8657
    :cond_0
    const-string v0, "body"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 8658
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 8659
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->setInitialComposeText(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 8661
    :cond_1
    return-void

    .line 8631
    :cond_2
    :try_start_1
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->decode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_0

    .line 8634
    :catch_0
    move-exception v0

    .line 8635
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " while decoding \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 8659
    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private insertImage(Landroid/net/Uri;)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 11310
    .line 11312
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 11313
    :cond_0
    const-string v0, "Compose >>"

    const-string v1, "insertImage Uri is not either file or content scheme!!"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 11397
    :cond_1
    :goto_0
    return-void

    .line 11317
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11318
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 11319
    const-string v0, "Compose >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertImage file_scheme: file, filePath: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v2

    .line 11345
    :goto_1
    if-nez v4, :cond_8

    .line 11348
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v0

    if-ne v6, v0, :cond_7

    .line 11349
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;)V

    goto :goto_0

    .line 11320
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 11321
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "picasa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 11322
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 11324
    if-nez v1, :cond_4

    .line 11325
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "return null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11329
    :cond_4
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eq v6, v0, :cond_5

    .line 11330
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Query on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "return 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11335
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 11333
    :cond_5
    :try_start_1
    const-string v0, "_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 11335
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 11338
    const-string v0, "Compose >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertImage file_scheme: content, filePath: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v2

    .line 11339
    goto/16 :goto_1

    .line 11341
    :cond_6
    const-string v0, "Compose >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertImage Uri is not either file or content scheme!!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 11351
    :cond_7
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 11354
    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11356
    if-eqz v0, :cond_1

    .line 11357
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 11358
    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 11359
    invoke-static {v4, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 11361
    const/16 v3, 0x168

    .line 11362
    const/4 v1, -0x1

    .line 11364
    if-eqz v0, :cond_d

    .line 11365
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 11366
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 11368
    if-lez v2, :cond_9

    .line 11369
    mul-int v1, v0, v3

    div-int/2addr v1, v2

    .line 11372
    :cond_9
    if-le v3, v2, :cond_d

    move v1, v2

    .line 11379
    :goto_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 11381
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v3

    if-ne v6, v3, :cond_b

    .line 11382
    if-lez v1, :cond_a

    if-lez v0, :cond_a

    .line 11383
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v1, v0}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 11385
    :cond_a
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 11387
    :cond_b
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v3

    if-ne v6, v3, :cond_1

    .line 11388
    if-lez v1, :cond_c

    if-lez v0, :cond_c

    .line 11389
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v1, v0}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 11391
    :cond_c
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    move v0, v1

    move v1, v3

    goto :goto_2

    :cond_e
    move-object v4, v2

    goto/16 :goto_1
.end method

.method private isEnabledGPS()Z
    .locals 2

    .prologue
    .line 7898
    const-string v1, "location"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageCompose;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 7900
    .local v0, locationManager:Landroid/location/LocationManager;
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static isMediaUri(Landroid/net/Uri;)Z
    .locals 3
    .parameter "uri"

    .prologue
    .line 10722
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 10723
    .local v0, authority:Ljava/lang/String;
    const-string v1, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10724
    const/4 v1, 0x1

    .line 10726
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isNotFieldsAllEmpty()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 4982
    :try_start_0
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v2}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->isEmpty()Z

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v2}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->isEmpty()Z

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v2}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->isEmpty()Z

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    if-ne v2, v0, :cond_1

    .line 5048
    :cond_0
    :goto_0
    return v0

    .line 4990
    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x2000

    if-nez v2, :cond_2

    .line 4991
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->getPlainText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 5002
    :cond_2
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5004
    if-eqz v2, :cond_3

    const-string v3, "O2U"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5006
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801d9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 5025
    :goto_1
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    .line 5027
    :goto_2
    if-nez v3, :cond_b

    .line 5033
    :goto_3
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerView;->getPlainText()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8

    move v0, v1

    .line 5034
    goto :goto_0

    .line 5008
    :cond_3
    if-eqz v2, :cond_4

    const-string v3, "PRT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 5010
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801da

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 5012
    :cond_4
    if-eqz v2, :cond_5

    const-string v3, "CEL"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 5014
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801db

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 5016
    :cond_5
    if-eqz v2, :cond_6

    const-string v3, "PTR"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5018
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801dc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 5022
    :cond_6
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801d7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_7
    move-object v3, v2

    .line 5025
    goto :goto_2

    .line 5036
    :cond_8
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerView;->getMailHTML()Landroid/webkit/WebHTMLMarkupData;

    move-result-object v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerView;->getMailHTML()Landroid/webkit/WebHTMLMarkupData;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebHTMLMarkupData;->subPartList()Ljava/util/Vector;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 5038
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerView;->getMailHTML()Landroid/webkit/WebHTMLMarkupData;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebHTMLMarkupData;->subPartList()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5041
    :cond_9
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerView;->getPlainText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 5043
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    :cond_a
    move v0, v1

    goto/16 :goto_0

    .line 5045
    :catch_0
    move-exception v0

    .line 5046
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    move v0, v1

    .line 5048
    goto/16 :goto_0

    :cond_b
    move-object v2, v3

    goto/16 :goto_3
.end method

.method private loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .locals 13
    .parameter

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    .line 10649
    .line 10653
    const-string v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10654
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 10655
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10656
    if-eqz v1, :cond_7

    .line 10657
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 10658
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 10659
    invoke-static {v4}, Lcom/android/email/MediaFile;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    move-wide v6, v1

    move-object v1, v0

    move-object v0, v3

    .line 10706
    :goto_1
    if-nez v1, :cond_0

    .line 10707
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 10709
    :cond_0
    if-nez v0, :cond_1

    .line 10710
    const-string v0, ""

    .line 10713
    :cond_1
    new-instance v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {v2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    .line 10714
    iput-object v1, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 10715
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    .line 10716
    iput-wide v6, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    .line 10717
    iput-object v0, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    .line 10718
    return-object v2

    .line 10663
    :cond_2
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 10664
    sget-object v2, Lcom/android/email/activity/MessageCompose;->ATTACHMENT_META_COLUMNS:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 10666
    if-eqz v10, :cond_5

    .line 10668
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 10669
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 10670
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    int-to-long v8, v1

    .line 10672
    cmp-long v1, v8, v6

    if-nez v1, :cond_6

    .line 10677
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 10678
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 10680
    const/16 v1, 0xff

    new-array v1, v1, [B

    move-wide v4, v6

    .line 10681
    :goto_2
    const/4 v6, -0x1

    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    if-eq v6, v7, :cond_3

    .line 10682
    int-to-long v6, v7

    add-long/2addr v4, v6

    goto :goto_2

    .line 10685
    :cond_3
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 10686
    const-string v1, "YohanTest"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Total Elapsed time : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long/2addr v6, v11

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " count="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 10692
    :try_start_3
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v3, v2

    move-wide v6, v4

    .line 10699
    :cond_4
    :goto_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 10703
    :cond_5
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v3

    goto/16 :goto_1

    .line 10688
    :catch_0
    move-exception v1

    move-wide v4, v8

    .line 10690
    :goto_4
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 10692
    :try_start_5
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    move-object v3, v2

    move-wide v6, v4

    .line 10693
    goto :goto_3

    .line 10692
    :catchall_0
    move-exception v0

    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 10699
    :catchall_1
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0

    .line 10688
    :catch_1
    move-exception v1

    goto :goto_4

    :cond_6
    move-object v3, v2

    move-wide v6, v8

    goto :goto_3

    :cond_7
    move-object v0, v3

    move-wide v1, v6

    goto/16 :goto_0
.end method

.method private onAccountSetup()V
    .locals 0

    .prologue
    .line 1419
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionNewAccount(Landroid/app/Activity;)V

    .line 1421
    return-void
.end method

.method private onAddAttachmentFromMyfiles()V
    .locals 3

    .prologue
    .line 10314
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 10315
    const-string v1, "com.sec.android.app.myfiles"

    const-string v2, "com.sec.android.app.myfiles.ExternelAccessActivityList"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10317
    const-string v1, "com.sec.android.app.myfiles.PICK_DATA_MULTIPLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 10318
    const-string v1, "file_display"

    const-string v2, "forwardable"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10321
    const-string v1, "CONTENT_TYPE"

    const-string v2, "*/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10323
    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10328
    :goto_0
    return-void

    .line 10325
    :catch_0
    move-exception v0

    .line 10326
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private onAddTextActivity(I)V
    .locals 8
    .parameter "type"

    .prologue
    .line 10351
    packed-switch p1, :pswitch_data_0

    .line 10412
    :goto_0
    :pswitch_0
    return-void

    .line 10354
    :pswitch_1
    const/4 v6, 0x0

    :try_start_0
    invoke-direct {p0, v6}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    .line 10355
    new-instance v4, Landroid/content/Intent;

    const-string v6, "intent.action.INTERACTION_LIST"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10356
    .local v4, intentNamecard:Landroid/content/Intent;
    const-string v6, "additional"

    const-string v7, "namecard"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10357
    const/16 v6, 0x7d2

    invoke-virtual {p0, v4, v6}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 10408
    .end local v4           #intentNamecard:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 10409
    .local v0, anfe:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 10361
    .end local v0           #anfe:Landroid/content/ActivityNotFoundException;
    :pswitch_2
    const/4 v6, 0x0

    :try_start_1
    invoke-direct {p0, v6}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    .line 10362
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.PICK"

    sget-object v7, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 10363
    .local v2, intentCalendar:Landroid/content/Intent;
    const-string v6, "text/plain"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 10364
    const/16 v6, 0x7d3

    invoke-virtual {p0, v2, v6}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 10368
    .end local v2           #intentCalendar:Landroid/content/Intent;
    :pswitch_3
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    .line 10369
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.PICK"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10370
    .local v3, intentMemo:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v6, "com.sec.android.app.memo"

    const-string v7, "com.sec.android.app.memo.MemoAddTextActivity"

    invoke-direct {v1, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10372
    .local v1, cn:Landroid/content/ComponentName;
    const-string v6, "text/memo_string"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 10373
    const/16 v6, 0x7d4

    invoke-virtual {p0, v3, v6}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 10377
    .end local v1           #cn:Landroid/content/ComponentName;
    .end local v3           #intentMemo:Landroid/content/Intent;
    :pswitch_4
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    .line 10378
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.PENMEMO_ATTACH"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10379
    .local v5, intentPenMemo:Landroid/content/Intent;
    const-string v6, "app_name"

    const-string v7, "email"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10380
    const/16 v6, 0x7d6

    invoke-virtual {p0, v5, v6}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 10384
    .end local v5           #intentPenMemo:Landroid/content/Intent;
    :pswitch_5
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    .line 10385
    const/16 v6, 0x7d5

    iput v6, p0, Lcom/android/email/activity/MessageCompose;->mLocationMode:I

    .line 10387
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/email/activity/MessageCompose;->showDialog(I)V

    goto :goto_0

    .line 10391
    :pswitch_6
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    .line 10392
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onInsertImage()V

    goto/16 :goto_0

    .line 10397
    :pswitch_7
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    .line 10398
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onInsertDrawingPad()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 10351
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_7
    .end packed-switch
.end method

.method private onAttachPreview(Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f0805b6

    const/4 v4, 0x1

    .line 9832
    const/4 v1, 0x0

    .line 9833
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsExistFile:Z

    if-nez v0, :cond_0

    .line 9834
    const v0, 0x7f0800bc

    invoke-direct {p0, v0, v4}, Lcom/android/email/activity/MessageCompose;->showToast(II)V

    .line 9882
    :goto_0
    return-void

    .line 9837
    :cond_0
    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    const-string v2, "file://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9840
    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    const-string v2, "com.quickoffice.mx.samsung"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 9841
    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9845
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "file://"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_5

    .line 9846
    const-string v1, "file://"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9848
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 9852
    :goto_2
    if-nez v0, :cond_1

    .line 9853
    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 9856
    :cond_1
    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    const-string v2, "com.android.contacts/contacts/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    const-string v2, "com.android.email.attachmentprovider"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 9858
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->getFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 9859
    if-nez v1, :cond_3

    .line 9860
    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 9843
    :cond_2
    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    goto :goto_1

    .line 9864
    :cond_3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9865
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    .line 9866
    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 9873
    :cond_4
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9874
    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 9875
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9876
    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageCompose;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 9878
    :catch_0
    move-exception v0

    .line 9879
    const v0, 0x7f0802e5

    invoke-direct {p0, v0, v4}, Lcom/android/email/activity/MessageCompose;->showToast(II)V

    goto/16 :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method

.method private onAttachmentDrawingPad()V
    .locals 4

    .prologue
    .line 9746
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MINI_SKETCH_MEMO_POPUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9747
    .local v1, i:Landroid/content/Intent;
    const-string v2, "app_name"

    const-string v3, "email"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9748
    const-string v2, "isMax"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 9749
    const-string v2, "isBottom"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 9751
    const/16 v2, 0x3f5

    invoke-virtual {p0, v1, v2}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9756
    .end local v1           #i:Landroid/content/Intent;
    :goto_0
    return-void

    .line 9753
    :catch_0
    move-exception v0

    .line 9754
    .local v0, anfe:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private onCancel()V
    .locals 9

    .prologue
    const-wide/16 v7, -0x1

    const/4 v1, 0x0

    .line 5309
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->addAllAddressFromEditText(Z)V

    .line 5310
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->isNotFieldsAllEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5311
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->onDeleteMessageConfirmationDialogOkPressed()V

    .line 5362
    :cond_0
    :goto_0
    return-void

    .line 5316
    :cond_1
    const-string v0, "com.android.email.intent.action.MEETING_RESPONSE"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 5318
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSaveDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_2

    .line 5319
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5321
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 5322
    const v1, 0x7f080207

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 5323
    const v1, 0x7f080208

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 5324
    const v1, 0x7f0801cb

    new-instance v2, Lcom/android/email/activity/MessageCompose$22;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageCompose$22;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5333
    const v1, 0x7f0801cc

    new-instance v2, Lcom/android/email/activity/MessageCompose$23;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageCompose$23;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5341
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSaveDialog:Landroid/app/AlertDialog;

    .line 5342
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSaveDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 5343
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSaveDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5344
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSaveDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 5348
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    invoke-virtual {v0}, Lcom/android/email/Controller;->getResultCallbacksForTest()Ljava/util/Collection;

    move-result-object v0

    .line 5349
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "message_id"

    invoke-virtual {v2, v3, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 5350
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .line 5351
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    cmp-long v4, v4, v7

    if-nez v4, :cond_4

    const-wide/16 v4, -0x2

    :goto_2
    invoke-virtual/range {v0 .. v5}, Lcom/android/email/Controller$Result;->sendMeetingEditedResponseCallback(ZJJ)V

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    goto :goto_2

    .line 5356
    :cond_5
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->setDraftNeedsSaving(Z)V

    .line 5357
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    .line 5359
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    goto/16 :goto_0
.end method

.method private onDeleteAttachment(Landroid/view/View;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 7386
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 7387
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 7388
    iget v2, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    int-to-long v2, v2

    iget-wide v4, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    .line 7389
    iget v2, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalCount:I

    .line 7390
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 7392
    iget v0, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 7393
    invoke-virtual {p0, v6}, Lcom/android/email/activity/MessageCompose;->SetOriginMsgEdited(Z)Z

    .line 7396
    :cond_0
    const-string v0, "com.android.email.intent.action.FORWARD"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.android.email.intent.action.EMAIL_DOC"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7397
    :cond_1
    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 7402
    :cond_2
    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7408
    new-instance v0, Lcom/android/email/activity/MessageCompose$28;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageCompose$28;-><init>(Lcom/android/email/activity/MessageCompose;)V

    new-array v2, v6, [Ljava/lang/Long;

    iget-wide v3, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v2, v7

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageCompose$28;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 7416
    :cond_3
    invoke-direct {p0, v6}, Lcom/android/email/activity/MessageCompose;->setDraftNeedsSaving(Z)V

    .line 7418
    invoke-direct {p0, v7}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout(Z)V

    .line 7419
    return-void
.end method

.method private onDiscard()V
    .locals 3

    .prologue
    .line 5365
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/email/activity/DeleteMessageConfirmationDialog;->newInstance(ILandroid/app/Fragment;)Lcom/android/email/activity/DeleteMessageConfirmationDialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/DeleteMessageConfirmationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 5366
    return-void
.end method

.method private onImageAttachmentResult(Ljava/lang/String;II)V
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 11517
    .line 11519
    mul-int/lit8 v0, p2, 0x3

    div-int/lit8 v3, v0, 0x4

    .line 11520
    mul-int/lit8 v0, p3, 0x3

    div-int/lit8 v4, v0, 0x4

    .line 11521
    div-int/lit8 v5, p2, 0x2

    .line 11522
    div-int/lit8 v6, p3, 0x2

    .line 11523
    div-int/lit8 v7, p2, 0x4

    .line 11524
    div-int/lit8 v8, p3, 0x4

    .line 11526
    const-wide/16 v0, 0x0

    .line 11527
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11528
    if-eqz v2, :cond_0

    .line 11529
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 11532
    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v9, 0x0

    const v10, 0x7f08048d

    invoke-virtual {p0, v10}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v9

    const/4 v9, 0x1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const v11, 0x7f08048e

    invoke-virtual {p0, v11}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (70%)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v9

    const/4 v9, 0x2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const v11, 0x7f08048f

    invoke-virtual {p0, v11}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (30%)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v9

    const/4 v9, 0x3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const v11, 0x7f080490

    invoke-virtual {p0, v11}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (10%)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v9

    .line 11548
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/email/activity/MessageCompose;->mSelectedResizeType:I

    .line 11550
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-direct {v9, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 11551
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "2131231889 ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getBaseContext()Landroid/content/Context;

    move-result-object v11

    long-to-float v0, v0

    invoke-static {v11, v0}, Lcom/android/email/EmailUtility;->formatSize(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 11554
    const/4 v0, 0x0

    new-instance v1, Lcom/android/email/activity/MessageCompose$49;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$49;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v9, v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 11560
    const v10, 0x7f080042

    new-instance v0, Lcom/android/email/activity/MessageCompose$50;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/email/activity/MessageCompose$50;-><init>(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;IIIIII)V

    invoke-virtual {v9, v10, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 11592
    const/high16 v0, 0x104

    new-instance v1, Lcom/android/email/activity/MessageCompose$51;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$51;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v9, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 11597
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 11598
    return-void
.end method

.method private onInsertDrawingPad()V
    .locals 4

    .prologue
    .line 9762
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MINI_SKETCH_MEMO_POPUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9763
    .local v1, i:Landroid/content/Intent;
    const-string v2, "app_name"

    const-string v3, "email"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9764
    const-string v2, "isMax"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 9765
    const-string v2, "isBottom"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 9767
    const/16 v2, 0x7d7

    invoke-virtual {p0, v1, v2}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9772
    .end local v1           #i:Landroid/content/Intent;
    :goto_0
    return-void

    .line 9769
    :catch_0
    move-exception v0

    .line 9770
    .local v0, anfe:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private onInsertImage()V
    .locals 3

    .prologue
    .line 10433
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10434
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.category.OPENABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 10435
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 10436
    const/16 v2, 0x7d1

    invoke-virtual {p0, v1, v2}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10442
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 10438
    :catch_0
    move-exception v0

    .line 10439
    .local v0, anfe:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private onLoadMoreMessage()V
    .locals 3

    .prologue
    .line 12204
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-eqz v0, :cond_0

    .line 12205
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Controller;->loadMore(J)V

    .line 12207
    :cond_0
    return-void
.end method

.method private onPhonebook()V
    .locals 4

    .prologue
    .line 6463
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "intent.action.INTERACTION_TAB"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6465
    .local v1, phonebookIntent:Landroid/content/Intent;
    const/high16 v2, 0x2400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6467
    const-string v2, "additional"

    const-string v3, "email-multi"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6468
    const-string v2, "existingRecipientCount"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6469
    const-string v2, "maxRecipientCount"

    const/16 v3, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6470
    const/16 v2, 0xfa1

    invoke-virtual {p0, v1, v2}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6476
    .end local v1           #phonebookIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 6472
    :catch_0
    move-exception v0

    .line 6473
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "Email"

    const-string v3, "onPhonebook: AcitivityNotFoundException!!!!"

    invoke-static {v2, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onRefreshLayoutCcBcc()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5412
    const/4 v0, 0x0

    .line 5413
    .local v0, ccBccBtnisShow:Z
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v1}, Lcom/android/email/activity/AddressTextView;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v1}, Lcom/android/email/activity/AddressTextView;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5414
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v1}, Lcom/android/email/activity/AddressTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-ne v1, v3, :cond_0

    .line 5415
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5416
    const/4 v0, 0x1

    .line 5421
    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v1}, Lcom/android/email/activity/AddressTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-ne v1, v3, :cond_1

    .line 5422
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5423
    const/4 v0, 0x1

    .line 5428
    :goto_1
    if-ne v0, v3, :cond_2

    .line 5437
    :goto_2
    return-void

    .line 5418
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 5425
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 5435
    :cond_2
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5436
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method private onSave()V
    .locals 1

    .prologue
    .line 5406
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->isNotFieldsAllEmpty()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->setDraftNeedsSaving(Z)V

    .line 5407
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->saveIfNeeded()V

    .line 5408
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    .line 5409
    return-void
.end method

.method private onSend()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5053
    const-string v0, "com.android.email.intent.action.MEETING_RESPONSE"

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/email/EmailUtility;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5054
    const v0, 0x7f0800b4

    invoke-static {p0, v0, v1}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    .line 5158
    :cond_0
    :goto_0
    return-void

    .line 5059
    :cond_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->IsEAS()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    const-wide/high16 v5, 0x4004

    cmpg-double v0, v3, v5

    if-gez v0, :cond_2

    .line 5062
    iput-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mIsOriginMsgEdited:Z

    .line 5065
    :cond_2
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "airplane_mode_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    .line 5067
    :goto_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->IsEAS()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5068
    const v0, 0x7f080556

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    aput-object v4, v3, v2

    invoke-virtual {p0, v0, v3}, Lcom/android/email/activity/MessageCompose;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5073
    :cond_3
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsEncryptChecked:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsSignChecked:Z

    if-eqz v0, :cond_7

    .line 5074
    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 5075
    const v0, 0x7f0804e7

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_5
    move v0, v2

    .line 5065
    goto :goto_1

    .line 5080
    :cond_6
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/email/SecurityPolicy;->getAccountPolicy(Ljava/lang/Long;)Lcom/android/emailcommon/service/PolicySet;

    move-result-object v0

    .line 5081
    iget-boolean v0, v0, Lcom/android/emailcommon/service/PolicySet;->mAllowSMIMESoftCerts:Z

    if-nez v0, :cond_7

    .line 5082
    const v0, 0x7f0804e5

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 5088
    :cond_7
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->isAddressAllValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5092
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 5094
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_8

    .line 5099
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->focusToLayout(Z)V

    goto/16 :goto_0

    .line 5100
    :cond_8
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_9

    .line 5105
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->focusCcLayout(Z)V

    goto/16 :goto_0

    .line 5106
    :cond_9
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_a

    .line 5111
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->focusBccLayout(Z)V

    goto/16 :goto_0

    .line 5114
    :cond_a
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    if-nez v0, :cond_b

    .line 5115
    const v0, 0x7f0803cf

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5117
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    .line 5118
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    goto/16 :goto_0

    .line 5123
    :cond_b
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->focusToLayout(Z)V

    .line 5124
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    const v1, 0x7f0800c0

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/AddressTextView;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 5140
    :cond_c
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->getAddressesAsDelimiterType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->getPackedAddresses(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5141
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v3}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->getAddressesAsDelimiterType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->getPackedAddresses(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5142
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v4}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->getAddressesAsDelimiterType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/email/activity/MessageCompose;->getPackedAddresses(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5143
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v0, v3, v4, p0, v5}, Lcom/android/email/util/EmailAddressCacheProcessor;->insertAllContacts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 5147
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsEncryptChecked:Z

    if-eqz v0, :cond_d

    .line 5148
    new-instance v0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mGetCertificatesTask:Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;

    .line 5149
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mGetCertificatesTask:Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 5152
    :cond_d
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->sendOrSaveMessage(Z)V

    .line 5153
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->setDraftNeedsSaving(Z)V

    .line 5154
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    .line 5155
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    goto/16 :goto_0
.end method

.method private onShowAccountCheckDialog()V
    .locals 3

    .prologue
    .line 1386
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountCheckDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    .line 1387
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1390
    const v1, 0x7f080030

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1391
    const v1, 0x7f0805bc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1392
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1393
    const v1, 0x7f080042

    new-instance v2, Lcom/android/email/activity/MessageCompose$3;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageCompose$3;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1402
    const v1, 0x7f080043

    new-instance v2, Lcom/android/email/activity/MessageCompose$4;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageCompose$4;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1410
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountCheckDialog:Landroid/app/AlertDialog;

    .line 1411
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountCheckDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1415
    :cond_0
    :goto_0
    return-void

    .line 1412
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountCheckDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1413
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountCheckDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private onShowAccountDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 7426
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 7520
    :goto_0
    return-void

    .line 7428
    :cond_0
    iput-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAccountDialog:Landroid/app/AlertDialog;

    .line 7430
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountInfoArrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7431
    :cond_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->setFromAccount()V

    .line 7434
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccountInfoArrayList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7437
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7440
    const v2, 0x7f0802b7

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 7443
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 7446
    new-instance v2, Lcom/android/email/activity/MessageCompose$AccountDialogArrayAdaptor;

    const/high16 v3, 0x7f04

    invoke-direct {v2, p0, p0, v3, v0}, Lcom/android/email/activity/MessageCompose$AccountDialogArrayAdaptor;-><init>(Lcom/android/email/activity/MessageCompose;Landroid/content/Context;ILjava/util/List;)V

    .line 7449
    new-instance v0, Lcom/android/email/activity/MessageCompose$29;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageCompose$29;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7515
    const v0, 0x7f080043

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7517
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountDialog:Landroid/app/AlertDialog;

    .line 7519
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private onShowAddAttachmentDialog()V
    .locals 10

    .prologue
    const v9, 0x7f0802e2

    const v4, 0x7f0801ab

    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 9913
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->getMaxAttachmentUploadSize()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/android/email/EmailUtility;->formatSize(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v0

    .line 9916
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAddAttachmentDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_2

    .line 9917
    new-instance v1, Lcom/android/email/activity/AddAttachmentSelectorAdapter;

    invoke-direct {v1, p0}, Lcom/android/email/activity/AddAttachmentSelectorAdapter;-><init>(Landroid/content/Context;)V

    .line 9919
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 9921
    iget v3, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    if-nez v3, :cond_1

    .line 9922
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "0"

    aput-object v5, v4, v7

    aput-object v0, v4, v8

    invoke-virtual {p0, v9, v4}, Lcom/android/email/activity/MessageCompose;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 9930
    :goto_0
    new-instance v0, Lcom/android/email/activity/MessageCompose$37;

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageCompose$37;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/AddAttachmentSelectorAdapter;)V

    invoke-virtual {v2, v1, v0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 9935
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddAttachmentDialog:Landroid/app/AlertDialog;

    .line 9936
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddAttachmentDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 9948
    :cond_0
    :goto_1
    return-void

    .line 9925
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    int-to-float v6, v6

    invoke-static {v5, v6}, Lcom/android/email/EmailUtility;->formatSize(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object v0, v4, v8

    invoke-virtual {p0, v9, v4}, Lcom/android/email/activity/MessageCompose;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 9937
    :cond_2
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAddAttachmentDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 9938
    iget v1, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    if-nez v1, :cond_3

    .line 9939
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAddAttachmentDialog:Landroid/app/AlertDialog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "0"

    aput-object v4, v3, v7

    aput-object v0, v3, v8

    invoke-virtual {p0, v9, v3}, Lcom/android/email/activity/MessageCompose;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 9946
    :goto_2
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddAttachmentDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    .line 9942
    :cond_3
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAddAttachmentDialog:Landroid/app/AlertDialog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    int-to-float v5, v5

    invoke-static {v4, v5}, Lcom/android/email/EmailUtility;->formatSize(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    aput-object v0, v3, v8

    invoke-virtual {p0, v9, v3}, Lcom/android/email/activity/MessageCompose;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private onShowInsertTextOrImageDialog()V
    .locals 3

    .prologue
    .line 10331
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mInsertTextOrImageDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    .line 10332
    new-instance v0, Lcom/android/email/activity/AddTextSelectorAdapter;

    invoke-direct {v0, p0}, Lcom/android/email/activity/AddTextSelectorAdapter;-><init>(Landroid/content/Context;)V

    .line 10334
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 10335
    const v2, 0x7f080204

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 10337
    new-instance v2, Lcom/android/email/activity/MessageCompose$42;

    invoke-direct {v2, p0, v0}, Lcom/android/email/activity/MessageCompose$42;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/AddTextSelectorAdapter;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 10342
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mInsertTextOrImageDialog:Landroid/app/AlertDialog;

    .line 10343
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mInsertTextOrImageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 10347
    :cond_0
    :goto_0
    return-void

    .line 10344
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mInsertTextOrImageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10345
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mInsertTextOrImageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private onShowPriorityDialog()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 9956
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mPriorityDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_1

    .line 9958
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0046

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 9961
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 9962
    const v3, 0x7f08031b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 9965
    iget v3, p0, Lcom/android/email/activity/MessageCompose;->mPriority:I

    packed-switch v3, :pswitch_data_0

    .line 9980
    :goto_0
    :pswitch_0
    new-instance v3, Lcom/android/email/activity/MessageCompose$38;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageCompose$38;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v2, v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 10004
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mPriorityDialog:Landroid/app/AlertDialog;

    .line 10005
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mPriorityDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 10009
    :cond_0
    :goto_1
    return-void

    .line 9967
    :pswitch_1
    const/4 v0, 0x2

    .line 9968
    goto :goto_0

    .line 9973
    :pswitch_2
    const/4 v0, 0x0

    .line 9974
    goto :goto_0

    .line 10006
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mPriorityDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10007
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mPriorityDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    .line 9965
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onShowReceiptsOptionsDialog()V
    .locals 4

    .prologue
    .line 10449
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 10452
    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mIsReadChecked:Z

    iput-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->bIsReadChecked:Z

    .line 10453
    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mIsDeliveryChecked:Z

    iput-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->bIsDeliveryChecked:Z

    .line 10454
    const/4 v1, 0x2

    new-array v1, v1, [Z

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/email/activity/MessageCompose;->bIsReadChecked:Z

    aput-boolean v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/android/email/activity/MessageCompose;->bIsDeliveryChecked:Z

    aput-boolean v3, v1, v2

    .line 10464
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mReceiptsOptionsDialog:Landroid/app/AlertDialog;

    if-nez v2, :cond_1

    .line 10465
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 10466
    const v3, 0x7f0805aa

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 10467
    new-instance v3, Lcom/android/email/activity/MessageCompose$43;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageCompose$43;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v2, v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 10487
    const v0, 0x7f080042

    new-instance v1, Lcom/android/email/activity/MessageCompose$44;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$44;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 10494
    const v0, 0x7f080043

    new-instance v1, Lcom/android/email/activity/MessageCompose$45;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$45;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 10501
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mReceiptsOptionsDialog:Landroid/app/AlertDialog;

    .line 10502
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mReceiptsOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 10507
    :cond_0
    :goto_0
    return-void

    .line 10503
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mReceiptsOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10504
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mReceiptsOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private onShowSecurityOptionsDialog()V
    .locals 4

    .prologue
    .line 10112
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 10115
    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mIsEncryptChecked:Z

    iput-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->bIsEncryptChecked:Z

    .line 10116
    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mIsSignChecked:Z

    iput-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->bIsSignChecked:Z

    .line 10117
    const/4 v1, 0x2

    new-array v1, v1, [Z

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/email/activity/MessageCompose;->bIsEncryptChecked:Z

    aput-boolean v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/android/email/activity/MessageCompose;->bIsSignChecked:Z

    aput-boolean v3, v1, v2

    .line 10121
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mSecurityOptionsDialog:Landroid/app/AlertDialog;

    if-nez v2, :cond_1

    .line 10126
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 10127
    const v3, 0x7f0804db

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 10128
    new-instance v3, Lcom/android/email/activity/MessageCompose$39;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageCompose$39;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v2, v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 10150
    const v0, 0x7f080042

    new-instance v1, Lcom/android/email/activity/MessageCompose$40;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$40;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 10156
    const v0, 0x7f080043

    new-instance v1, Lcom/android/email/activity/MessageCompose$41;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$41;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 10166
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSecurityOptionsDialog:Landroid/app/AlertDialog;

    .line 10167
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSecurityOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 10172
    :cond_0
    :goto_0
    return-void

    .line 10168
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSecurityOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10169
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSecurityOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private onShowSecurityPolicyDialog()V
    .locals 4

    .prologue
    .line 1424
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSecurityPolicyDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    .line 1429
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccountInfoArrayList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1435
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1438
    const v2, 0x7f0802b8

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1441
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1444
    new-instance v2, Lcom/android/email/activity/MessageCompose$SecurityPolicyArrayAdaptor;

    const/high16 v3, 0x7f04

    invoke-direct {v2, p0, p0, v3, v0}, Lcom/android/email/activity/MessageCompose$SecurityPolicyArrayAdaptor;-><init>(Lcom/android/email/activity/MessageCompose;Landroid/content/Context;ILjava/util/List;)V

    .line 1447
    new-instance v0, Lcom/android/email/activity/MessageCompose$5;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageCompose$5;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1459
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSecurityPolicyDialog:Landroid/app/AlertDialog;

    .line 1460
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSecurityPolicyDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1464
    :cond_0
    :goto_0
    return-void

    .line 1461
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSecurityPolicyDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1462
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSecurityPolicyDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private onSpellCheckAddWord(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12371
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 12463
    :cond_0
    :goto_0
    return-void

    .line 12377
    :cond_1
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 12378
    const v0, 0x7f0805bf

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 12380
    const-string v0, "Compose >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSpellCheckAddWord() word="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12382
    sget-object v0, Lcom/android/email/activity/MessageCompose;->mMainDictionary:Lcom/android/email/activity/utils/spellcheck/BinaryDictionary;

    if-nez v0, :cond_2

    .line 12383
    new-instance v0, Lcom/android/email/activity/utils/spellcheck/BinaryDictionary;

    const/high16 v1, 0x7f07

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/utils/spellcheck/BinaryDictionary;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/android/email/activity/MessageCompose;->mMainDictionary:Lcom/android/email/activity/utils/spellcheck/BinaryDictionary;

    .line 12386
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->suggestions:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->suggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 12387
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->suggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 12388
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->suggestions:Ljava/util/List;

    .line 12391
    :cond_3
    sget-object v0, Lcom/android/email/activity/MessageCompose;->mMainDictionary:Lcom/android/email/activity/utils/spellcheck/BinaryDictionary;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/utils/spellcheck/BinaryDictionary;->getSuggestion(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->suggestions:Ljava/util/List;

    .line 12393
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->suggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_5

    .line 12395
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->suggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/CharSequence;

    move v2, v3

    .line 12397
    :goto_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->suggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 12398
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->suggestions:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->suggestions:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v4, v2

    .line 12397
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_4
    move-object v0, v4

    .line 12410
    :goto_2
    new-instance v1, Lcom/android/email/activity/MessageCompose$52;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$52;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 12426
    const v0, 0x7f08021e

    new-instance v1, Lcom/android/email/activity/MessageCompose$53;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$53;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 12440
    const v0, 0x7f0805c1

    new-instance v1, Lcom/android/email/activity/MessageCompose$54;

    invoke-direct {v1, p0, p1}, Lcom/android/email/activity/MessageCompose$54;-><init>(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 12460
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 12402
    :cond_5
    new-array v0, v4, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0805be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_2
.end method

.method private onViewAttachment(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 9803
    const-string v0, "Compose >>"

    const-string v1, "onViewAttachment"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 9805
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 9806
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 9808
    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 9829
    :goto_0
    return-void

    .line 9814
    :cond_0
    const-string v1, "Compose >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onViewAttachment() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 9815
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->onAttachPreview(Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    goto :goto_0
.end method

.method private parseHtmlATag(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    .line 12210
    const-string v1, "<IMG+.*?>"

    .line 12211
    const/4 v0, 0x0

    .line 12213
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 12214
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 12215
    :cond_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 12216
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 12217
    if-eqz v2, :cond_0

    .line 12218
    const-string v3, "SRC=\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 12219
    const/4 v0, 0x1

    .line 12224
    :cond_1
    return v0
.end method

.method private safeAddAddresses(Ljava/lang/String;Ljava/lang/String;Lcom/android/email/activity/bubblelayout/BubbleLayout;Ljava/util/ArrayList;)Z
    .locals 7
    .parameter "addrs"
    .parameter "ourAddress"
    .parameter "bubbleLayout"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/email/activity/bubblelayout/BubbleLayout;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/Address;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 8791
    .local p4, addrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Address;>;"
    const/4 v0, 0x0

    .line 8792
    .local v0, added:Z
    invoke-static {p1}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v2

    .local v2, arr$:[Lcom/android/emailcommon/mail/Address;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v2, v3

    .line 8794
    .local v1, address:Lcom/android/emailcommon/mail/Address;
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 8795
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8796
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Address;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p3, v5, v6}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->addButton(Ljava/lang/String;Z)Z

    .line 8797
    const/4 v0, 0x1

    .line 8792
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8800
    .end local v1           #address:Lcom/android/emailcommon/mail/Address;
    :cond_1
    return v0
.end method

.method private saveIfNeeded()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4625
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    if-nez v0, :cond_1

    .line 4639
    :cond_0
    :goto_0
    return-void

    .line 4629
    :cond_1
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mDoNotSaveDraft:Z

    if-eqz v0, :cond_2

    .line 4630
    const-string v0, "Compose >>"

    const-string v1, " ///////////////return   saveIfNeeded()   mDoNotSaveDraft = true "

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4634
    :cond_2
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->isNotFieldsAllEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4637
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->setDraftNeedsSaving(Z)V

    .line 4638
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->sendOrSaveMessage(Z)V

    goto :goto_0
.end method

.method private selectBubbleLayout(Lcom/android/email/activity/bubblelayout/BubbleLayout;)V
    .locals 0
    .parameter "bubbleLayout"

    .prologue
    .line 12626
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mAddBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    .line 12627
    return-void
.end method

.method private send()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 4647
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->sendOrSaveMessage(Z)V

    .line 4648
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->setDraftNeedsSaving(Z)V

    .line 4649
    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIgnoreDraftNeedsSaving:Z

    .line 4653
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    .line 4660
    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mOnSend:Z

    .line 4662
    const-string v0, "Compose >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compose draft saving mOnSend "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mOnSend:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 4664
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    .line 4666
    return-void
.end method

.method private sendOrSaveMessage(Z)V
    .locals 2
    .parameter "send"

    .prologue
    .line 4610
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mMessageLoaded:Z

    if-nez v0, :cond_1

    .line 4622
    :cond_0
    :goto_0
    return-void

    .line 4614
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    if-eqz v0, :cond_0

    .line 4617
    sget-object v1, Lcom/android/email/activity/MessageCompose;->sSaveInProgressCondition:Ljava/lang/Object;

    monitor-enter v1

    .line 4618
    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/android/email/activity/MessageCompose;->sSaveInProgress:Z

    .line 4619
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4620
    new-instance v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;

    invoke-direct {v0, p0, p1}, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;-><init>(Lcom/android/email/activity/MessageCompose;Z)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSendOrSaveMessageTask:Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;

    .line 4621
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSendOrSaveMessageTask:Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 4619
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private setAccount(Landroid/content/Intent;)V
    .locals 5
    .parameter

    .prologue
    const-wide/16 v3, -0x1

    .line 949
    const-string v0, "account_id"

    invoke-virtual {p1, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 950
    cmp-long v2, v0, v3

    if-nez v2, :cond_0

    .line 951
    invoke-static {p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide v0

    .line 953
    :cond_0
    cmp-long v2, v0, v3

    if-nez v2, :cond_1

    .line 957
    invoke-static {p0}, Lcom/android/email/activity/AccountFolderList;->actionShowAccounts(Landroid/content/Context;)V

    .line 958
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    .line 962
    :goto_0
    return-void

    .line 960
    :cond_1
    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    goto :goto_0
.end method

.method private setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 1
    .parameter "account"

    .prologue
    .line 965
    if-nez p1, :cond_0

    .line 966
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 968
    :cond_0
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 971
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterTo:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v0, p1}, Lcom/android/email/EmailAddressAdapter;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 972
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterCc:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v0, p1}, Lcom/android/email/EmailAddressAdapter;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 973
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterBcc:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v0, p1}, Lcom/android/email/EmailAddressAdapter;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 976
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->checkAttachment()V

    .line 978
    return-void
.end method

.method private setDefaultFontSizeBySettings()I
    .locals 4

    .prologue
    const/16 v0, 0x18

    .line 4907
    .line 4911
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "font_size"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 4913
    packed-switch v1, :pswitch_data_0

    .line 4939
    :goto_0
    :pswitch_0
    const-string v1, "Compose >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDefaultFontSizeBySettings: mValue == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 4940
    return v0

    .line 4915
    :pswitch_1
    const/16 v0, 0x13

    .line 4916
    goto :goto_0

    .line 4919
    :pswitch_2
    const/16 v0, 0x16

    .line 4920
    goto :goto_0

    .line 4927
    :pswitch_3
    const/16 v0, 0x30

    .line 4928
    goto :goto_0

    .line 4931
    :pswitch_4
    const/16 v0, 0x41

    .line 4932
    goto :goto_0

    .line 4913
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private setDraftNeedsSaving(Z)V
    .locals 2
    .parameter "needsSaving"

    .prologue
    .line 1740
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    .line 1741
    .local v0, OldNeedsSaving:Z
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    .line 1742
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->mSaveEnabled:Z

    .line 1744
    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    if-eq v0, v1, :cond_0

    .line 1745
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->invalidateOptionsMenu()V

    .line 1746
    :cond_0
    return-void
.end method

.method private setFromAccount()V
    .locals 13

    .prologue
    const/4 v4, 0x0

    .line 3722
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountInfoArrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3723
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountInfoArrayList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 3724
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountInfoArrayList:Ljava/util/ArrayList;

    .line 3729
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    invoke-virtual {v0}, Lcom/android/email/Controller;->hasPremiumExpiredAccounts()Z

    move-result v0

    if-nez v0, :cond_8

    .line 3730
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "displayName is not \'##snc##\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v1, v0

    .line 3745
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3748
    :cond_2
    new-instance v5, Lcom/android/email/activity/MessageCompose$AccountInfoItem;

    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const-string v0, "displayName"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v0, "emailAddress"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v0, "hostAuthKeyRecv"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v0, "typeMsg"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    move-object v6, p0

    invoke-direct/range {v5 .. v12}, Lcom/android/email/activity/MessageCompose$AccountInfoItem;-><init>(Lcom/android/email/activity/MessageCompose;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;I)V

    .line 3759
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3761
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 3765
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3770
    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountInfoArrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 3771
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageCompose$AccountInfoItem;

    .line 3773
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/email/activity/MessageCompose$AccountInfoItem;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0}, Lcom/android/email/activity/MessageCompose$AccountInfoItem;->getAccountId()J

    move-result-wide v5

    cmp-long v2, v2, v5

    if-nez v2, :cond_5

    .line 3775
    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCurrentAccountInfoItem:Lcom/android/email/activity/MessageCompose$AccountInfoItem;

    .line 3778
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountInfoArrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 3781
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3782
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromSummaryText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCurrentAccountInfoItem:Lcom/android/email/activity/MessageCompose$AccountInfoItem;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageCompose$AccountInfoItem;->getFromText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3798
    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->IsEAS()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3800
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3803
    :cond_7
    return-void

    .line 3736
    :cond_8
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "typeMsg = 0  AND  displayName is not \'##snc##\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0

    .line 3765
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 3784
    :cond_9
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private setFromLayoutMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 9474
    if-nez p1, :cond_0

    .line 9475
    iget p1, p0, Lcom/android/email/activity/MessageCompose;->mFromLayoutMode:I

    .line 9478
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 9510
    :goto_0
    return-void

    .line 9491
    :pswitch_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/email/activity/MessageCompose;->mFromLayoutMode:I

    goto :goto_0

    .line 9507
    :pswitch_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/email/activity/MessageCompose;->mFromLayoutMode:I

    goto :goto_0

    .line 9478
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setIncludeQuotedText(ZZ)V
    .locals 3
    .parameter "include"
    .parameter "updateNeedsSaving"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 7255
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    if-eqz v0, :cond_0

    .line 7256
    if-eqz p1, :cond_2

    .line 7257
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7258
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->setVisibility(I)V

    .line 7266
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 7267
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->setDraftNeedsSaving(Z)V

    .line 7269
    :cond_1
    return-void

    .line 7260
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v2}, Landroid/webkit/HtmlComposerView;->setVisibility(I)V

    .line 7261
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setNewMessageFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9195
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9196
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->focusToLayout(Z)V

    .line 9211
    :goto_0
    return-void

    .line 9197
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 9198
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 9199
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->focusToLayout(Z)V

    .line 9200
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->shrinkCcBccLayout()V

    goto :goto_0

    .line 9204
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 9208
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->focusToLayout(Z)V

    .line 9209
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->shrinkCcBccLayout()V

    goto :goto_0
.end method

.method private setupAddressAdapters()V
    .locals 1

    .prologue
    .line 2887
    new-instance v0, Lcom/android/email/EmailAddressAdapter;

    invoke-direct {v0, p0}, Lcom/android/email/EmailAddressAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterTo:Lcom/android/email/EmailAddressAdapter;

    .line 2888
    new-instance v0, Lcom/android/email/EmailAddressAdapter;

    invoke-direct {v0, p0}, Lcom/android/email/EmailAddressAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterCc:Lcom/android/email/EmailAddressAdapter;

    .line 2889
    new-instance v0, Lcom/android/email/EmailAddressAdapter;

    invoke-direct {v0, p0}, Lcom/android/email/EmailAddressAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterBcc:Lcom/android/email/EmailAddressAdapter;

    .line 2890
    return-void
.end method

.method private showResultToast(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 11744
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_1

    .line 11745
    const v0, 0x7f0800b9

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->showToast(II)V

    .line 11757
    :cond_0
    :goto_0
    return-void

    .line 11746
    :cond_1
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_2

    .line 11747
    const v0, 0x7f0800b8

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->showToast(II)V

    goto :goto_0

    .line 11748
    :cond_2
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_3

    .line 11749
    const v0, 0x7f080206

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->showToast(II)V

    goto :goto_0

    .line 11751
    :cond_3
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_4

    .line 11752
    const v0, 0x7f0805b5

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->showToast(II)V

    goto :goto_0

    .line 11754
    :cond_4
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    .line 11755
    const v0, 0x7f080209

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->showToast(II)V

    goto :goto_0
.end method

.method public static showSendingNotificationByViewActivity(Landroid/content/Context;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x4

    .line 6769
    if-nez p1, :cond_0

    .line 6770
    const-string p1, ""

    .line 6771
    :cond_0
    new-instance v0, Landroid/app/Notification;

    const v1, 0x7f0202aa

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    sput-object v0, Lcom/android/email/activity/MessageCompose;->note:Landroid/app/Notification;

    .line 6774
    sget-object v0, Lcom/android/email/activity/MessageCompose;->note:Landroid/app/Notification;

    const-string v1, "Sending..."

    invoke-virtual {v0, p0, v1, p1, p2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 6775
    sget-object v0, Lcom/android/email/activity/MessageCompose;->note:Landroid/app/Notification;

    const/16 v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 6777
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sput-object v0, Lcom/android/email/activity/MessageCompose;->notificationManager:Landroid/app/NotificationManager;

    .line 6779
    sget-object v0, Lcom/android/email/activity/MessageCompose;->notificationManager:Landroid/app/NotificationManager;

    sget-object v1, Lcom/android/email/activity/MessageCompose;->note:Landroid/app/Notification;

    invoke-virtual {v0, v5, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 6780
    sget-object v0, Lcom/android/email/activity/MessageCompose;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 6781
    return-void
.end method

.method public static showSendingNotification_Start(Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 4
    .parameter

    .prologue
    .line 6761
    const-string v0, "Compose >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showSendingNotification_Start() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 6763
    sget-object v0, Lcom/android/email/activity/MessageCompose;->Notificationdata:Ljava/util/Hashtable;

    iget-wide v1, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6764
    return-void
.end method

.method private showSoftKeyboard(Z)V
    .locals 4
    .parameter "isShowing"

    .prologue
    const/4 v3, 0x0

    .line 11721
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 11723
    .local v0, focusView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 11724
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageCompose;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 11726
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz p1, :cond_1

    .line 11727
    invoke-virtual {v1, v0, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 11732
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    :goto_0
    return-void

    .line 11729
    .restart local v1       #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private showToast(II)V
    .locals 0
    .parameter "resID"
    .parameter "duration"

    .prologue
    .line 11735
    invoke-static {p0, p1, p2}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    .line 11741
    return-void
.end method

.method private showToasts(II)V
    .locals 1
    .parameter "msg"
    .parameter "duration"

    .prologue
    .line 10091
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    .line 10092
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    .line 10093
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p2}, Landroid/widget/Toast;->setDuration(I)V

    .line 10094
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10103
    :goto_0
    return-void

    .line 10097
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 10100
    :cond_1
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToast:Landroid/widget/Toast;

    .line 10101
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private shrinkAttachmentLayout()V
    .locals 1

    .prologue
    .line 9284
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 9285
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout(Z)V

    .line 9289
    :goto_0
    return-void

    .line 9287
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout(Z)V

    goto :goto_0
.end method

.method private shrinkAttachmentLayout(Z)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f10018a

    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 9248
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 9252
    if-lez v0, :cond_2

    .line 9253
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9254
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->arrangeAttachments()V

    .line 9257
    if-eqz p1, :cond_0

    if-le v0, v4, :cond_0

    .line 9259
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentSummaryLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 9260
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentSummaryLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f02022b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 9263
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9281
    :goto_0
    return-void

    .line 9267
    :cond_0
    if-le v0, v4, :cond_1

    .line 9268
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentSummaryLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 9269
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentSummaryLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f02022c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 9274
    :goto_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 9272
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentSummaryLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 9279
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private shrinkCcBccLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 9299
    const/4 v0, 0x0

    .line 9301
    .local v0, isreturn:Z
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v1}, Lcom/android/email/activity/AddressTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9302
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->focusCcLayout(Z)V

    .line 9303
    const/4 v0, 0x1

    .line 9306
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v1}, Lcom/android/email/activity/AddressTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 9307
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->focusBccLayout(Z)V

    .line 9308
    const/4 v0, 0x1

    .line 9311
    :cond_1
    if-eqz v0, :cond_2

    .line 9340
    :goto_0
    return-void

    .line 9315
    :cond_2
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9321
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->focusCcLayout(Z)V

    .line 9322
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->focusBccLayout(Z)V

    .line 9339
    :goto_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onRefreshLayoutCcBcc()V

    goto :goto_0

    .line 9330
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->focusCcLayout(Z)V

    .line 9331
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->focusBccLayout(Z)V

    goto :goto_1
.end method

.method private static startActivityWithMessage(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 928
    invoke-static {p0}, Lcom/android/email/activity/MessageCompose;->getBaseIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 929
    const-string v1, "message_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 930
    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 931
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 932
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 933
    return-void
.end method

.method private static startActivityWithMessage(Landroid/content/Context;Ljava/lang/String;JI)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 938
    invoke-static {p0}, Lcom/android/email/activity/MessageCompose;->getBaseIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 939
    const-string v1, "message_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 940
    const-string v1, "meeting_resonse"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 941
    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 942
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 944
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 945
    return-void
.end method

.method private startAttachmentActivity(I)V
    .locals 5
    .parameter

    .prologue
    .line 10176
    const-string v0, "Compose >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAttachmentActivity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 10181
    packed-switch p1, :pswitch_data_0

    .line 10310
    :goto_0
    :pswitch_0
    return-void

    .line 10183
    :pswitch_1
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    .line 10184
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onAddAttachmentFromMyfiles()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 10306
    :catch_0
    move-exception v0

    .line 10307
    const-string v1, "Compose >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: startAttachmentActivity()\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10189
    :pswitch_2
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    .line 10190
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10191
    const-string v1, "text/x-vcard"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 10192
    const-string v1, "existingRecipientCount"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10193
    const-string v1, "maxRecipientCount"

    const/16 v2, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10194
    const/16 v1, 0x3ea

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 10199
    :pswitch_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    .line 10200
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 10201
    const-string v1, "vnd.android.cursor.dir/event"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 10202
    const/16 v1, 0x3eb

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 10209
    :pswitch_4
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    .line 10210
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10211
    const-string v1, "text/x-vnote"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 10212
    const/16 v1, 0x3ec

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 10216
    :pswitch_5
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    .line 10217
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PENMEMO_ATTACH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10218
    const-string v1, "app_name"

    const-string v2, "email"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10219
    const/16 v1, 0x3f4

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 10223
    :pswitch_6
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    .line 10224
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10225
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 10226
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 10227
    const/16 v1, 0x3ed

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 10231
    :pswitch_7
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    .line 10232
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10233
    const-string v1, "com.sec.android.app.camera"

    const-string v2, "com.sec.android.app.camera.Camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10235
    const-string v1, "return-uri"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 10236
    const/16 v1, 0x3ee

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 10240
    :pswitch_8
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    .line 10241
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 10242
    const-string v1, "com.sec.android.app.myfiles"

    const-string v2, "com.sec.android.app.myfiles.ExternelAccessActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10244
    const-string v1, "com.sec.android.app.myfiles.PICK_DATA "

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 10245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10247
    const-string v2, "/Sounds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10248
    const-string v2, "FOLDERPATH"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10249
    const-string v1, "CONTENT_TYPE"

    const-string v2, "audio/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10250
    const/16 v1, 0x3f2

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 10254
    :pswitch_9
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.MediaStore.RECORD_SOUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10255
    const-string v1, "location"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10256
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->getMaxAttachmentUploadSize()I

    move-result v1

    .line 10257
    iget v2, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    .line 10258
    const-string v3, "android.provider.MediaStore.extra.MAX_BYTES"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 10259
    const/16 v1, 0x3f3

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 10263
    :pswitch_a
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    .line 10264
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10265
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 10266
    const-string v1, "video/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 10267
    const/16 v1, 0x3ef

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 10271
    :pswitch_b
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    .line 10272
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->getMaxAttachmentUploadSize()I

    move-result v0

    .line 10273
    iget v1, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    .line 10277
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10278
    const-string v3, "android.intent.extra.videoQuality"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10279
    const-string v3, "android.intent.extra.sizeLimit"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 10282
    const-string v0, "email"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 10283
    const/16 v0, 0x3f0

    invoke-virtual {p0, v2, v0}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 10287
    :pswitch_c
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    .line 10288
    const/16 v0, 0x3f1

    iput v0, p0, Lcom/android/email/activity/MessageCompose;->mLocationMode:I

    .line 10290
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->showDialog(I)V

    goto/16 :goto_0

    .line 10295
    :pswitch_d
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    .line 10296
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onAttachmentDrawingPad()V

    goto/16 :goto_0

    .line 10301
    :pswitch_e
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10302
    const-string v1, "text/x-vtodo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 10303
    const/16 v1, 0x3f6

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 10181
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_5
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private updateMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Account;ZZ)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x0

    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 4001
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->IsEAS()Z

    move-result v0

    .line 4003
    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 4004
    :cond_0
    invoke-static {}, Lcom/android/emailcommon/utility/Utility;->generateMessageId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    .line 4007
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mTemplateId:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 4008
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mTemplateId:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateId:Ljava/lang/String;

    .line 4009
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mTemplateName:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateName:Ljava/lang/String;

    .line 4010
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mTemplateDescription:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateDescription:Ljava/lang/String;

    .line 4013
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    .line 4014
    new-instance v1, Lcom/android/emailcommon/mail/Address;

    invoke-virtual {p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSenderName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/emailcommon/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Address;->pack()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    .line 4016
    new-instance v1, Lcom/android/emailcommon/mail/Address;

    invoke-virtual {p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSenderName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/emailcommon/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Address;->pack()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    .line 4021
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->getAddressesAsDelimiterType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->getPackedAddresses(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    .line 4022
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->getAddressesAsDelimiterType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->getPackedAddresses(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    .line 4023
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->getAddressesAsDelimiterType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->getPackedAddresses(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    .line 4024
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 4027
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->getMailContent()Landroid/webkit/WebHTMLMarkupData;

    move-result-object v1

    .line 4028
    if-nez v1, :cond_17

    .line 4029
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->getPlainText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    .line 4030
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->getHTML()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    .line 4037
    :goto_0
    if-eqz v0, :cond_3

    .line 4039
    const-string v1, "eas"

    iput-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountSchema:Ljava/lang/String;

    .line 4041
    :cond_3
    iget v1, p0, Lcom/android/email/activity/MessageCompose;->mPriority:I

    iput v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mImportance:I

    .line 4043
    const-string v1, "com.android.email.intent.action.MEETING_RESPONSE"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 4044
    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mIsSignChecked:Z

    iput-boolean v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    .line 4045
    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mIsEncryptChecked:Z

    iput-boolean v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    .line 4048
    :cond_4
    iget-wide v1, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 4049
    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-static {p0, v1, v2, v3}, Lcom/android/email/EmailUtility;->makeDisplayName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    .line 4051
    iput-boolean v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    .line 4052
    iput v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    .line 4053
    iput-boolean p3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    .line 4056
    const-string v1, "com.android.email.intent.action.REPLY"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "com.android.email.intent.action.REPLY_ALL"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4057
    :cond_5
    iget-wide v1, p0, Lcom/android/email/activity/MessageCompose;->mOriginalMessageId:J

    iput-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mOriginalId:J

    .line 4061
    :cond_6
    iget v1, p2, Lcom/android/emailcommon/provider/EmailContent$Account;->mTypeMsg:I

    iput v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTypeMsg:I

    .line 4062
    iget-wide v1, p2, Lcom/android/emailcommon/provider/EmailContent$Account;->mSevenAccountKey:J

    iput-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenAccountKey:J

    .line 4063
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-eqz v1, :cond_8

    const-string v1, "com.android.email.intent.action.REPLY"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "com.android.email.intent.action.REPLY_ALL"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "com.android.email.intent.action.FORWARD"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "com.android.email.intent.action.MEETING_RESPONSE"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "com.android.email.intent.action.EMAIL_DOC"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "com.android.email.intent.action.PROPOSE_NEW_TIME"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget v1, p2, Lcom/android/emailcommon/provider/EmailContent$Account;->mTypeMsg:I

    if-ne v1, v6, :cond_8

    .line 4071
    :cond_7
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J

    .line 4072
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenMessageKey:J

    iput-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenMessageKey:J

    .line 4074
    :cond_8
    const-string v1, "com.android.email.intent.action.FORWARD"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "com.android.email.intent.action.EMAIL_DOC"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    :cond_9
    iget v1, p2, Lcom/android/emailcommon/provider/EmailContent$Account;->mTypeMsg:I

    if-ne v1, v6, :cond_18

    .line 4075
    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 4093
    :cond_a
    :goto_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->IsOriginMsgEdited()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 4094
    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 4097
    :cond_b
    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mIsReadChecked:Z

    if-eqz v1, :cond_c

    .line 4098
    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    or-int/lit16 v1, v1, 0x800

    iput v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 4099
    :cond_c
    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mIsDeliveryChecked:Z

    if-eqz v1, :cond_d

    .line 4100
    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 4103
    :cond_d
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_e

    if-eqz v0, :cond_1f

    .line 4104
    :cond_e
    const-string v1, "com.android.email.intent.action.REPLY"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "com.android.email.intent.action.REPLY_ALL"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "com.android.email.intent.action.FORWARD"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "com.android.email.intent.action.MEETING_RESPONSE"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "com.android.email.intent.action.EMAIL_DOC"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "com.android.email.intent.action.PROPOSE_NEW_TIME"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 4110
    :cond_f
    iget-boolean v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    if-nez v1, :cond_10

    iget-boolean v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    if-nez v1, :cond_10

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->IsOriginMsgEdited()Z

    move-result v1

    if-eqz v1, :cond_1b

    :cond_10
    if-eqz v0, :cond_1b

    .line 4111
    iput-wide v8, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J

    .line 4124
    :cond_11
    :goto_2
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->unpackToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4125
    const-string v0, "com.android.email.intent.action.FORWARD"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "com.android.email.intent.action.EMAIL_DOC"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 4128
    :cond_12
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->IsSnc()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 4129
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    .line 4132
    :cond_13
    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 4133
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 4134
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->unpackToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4135
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->unpackToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4136
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_14

    .line 4137
    const v4, 0x7f0800b0

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v10

    aput-object v2, v5, v6

    const/4 v2, 0x2

    if-eqz v0, :cond_1c

    :goto_3
    aput-object v0, v5, v2

    const/4 v2, 0x3

    if-eqz v1, :cond_1d

    move-object v0, v1

    :goto_4
    aput-object v0, v5, v2

    invoke-virtual {p0, v4, v5}, Lcom/android/email/activity/MessageCompose;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    .line 4148
    :cond_14
    :goto_5
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncryptionAlgorithm:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncryptionAlgorithm:Ljava/lang/Integer;

    .line 4152
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMContentExpiryDate:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMContentExpiryDate:Ljava/lang/String;

    .line 4153
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMLicenseFlag:I

    iput v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMLicenseFlag:I

    .line 4154
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateId:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateId:Ljava/lang/String;

    .line 4155
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMContentOwner:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMContentOwner:Ljava/lang/String;

    .line 4156
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMOwner:I

    iput v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMOwner:I

    .line 4157
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateName:Ljava/lang/String;

    .line 4158
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateDescription:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateDescription:Ljava/lang/String;

    .line 4171
    :cond_15
    :goto_6
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->includeQuotedText()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 4172
    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 4189
    :cond_16
    :goto_7
    return-void

    .line 4032
    :cond_17
    invoke-virtual {v1}, Landroid/webkit/WebHTMLMarkupData;->plainText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    .line 4033
    invoke-virtual {v1}, Landroid/webkit/WebHTMLMarkupData;->HTMLFragment()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    goto/16 :goto_0

    .line 4076
    :cond_18
    const-string v1, "com.android.email.intent.action.REPLY"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "com.android.email.intent.action.REPLY_ALL"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "com.android.email.intent.action.PROPOSE_NEW_TIME"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    :cond_19
    iget v1, p2, Lcom/android/emailcommon/provider/EmailContent$Account;->mTypeMsg:I

    if-ne v1, v6, :cond_1a

    .line 4081
    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    goto/16 :goto_1

    .line 4083
    :cond_1a
    const-string v1, "com.android.email.intent.action.MEETING_RESPONSE"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 4084
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    goto/16 :goto_1

    .line 4113
    :cond_1b
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J

    goto/16 :goto_2

    .line 4137
    :cond_1c
    const-string v0, ""

    goto/16 :goto_3

    :cond_1d
    const-string v0, ""

    goto/16 :goto_4

    .line 4141
    :cond_1e
    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 4142
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_14

    .line 4143
    const v0, 0x7f0800b1

    new-array v1, v6, [Ljava/lang/Object;

    aput-object v2, v1, v10

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    goto/16 :goto_5

    .line 4161
    :cond_1f
    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-nez v0, :cond_15

    .line 4163
    const-string v0, "com.android.email.intent.action.EDIT_DRAFT"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 4164
    iget-boolean v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    if-nez v0, :cond_20

    iget-boolean v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    if-nez v0, :cond_20

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->IsOriginMsgEdited()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 4165
    :cond_20
    iput-wide v8, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J

    goto/16 :goto_6

    .line 4174
    :cond_21
    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 4175
    if-eqz p4, :cond_16

    .line 4182
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iput-object v7, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    .line 4183
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iput-object v7, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    .line 4184
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iput-object v7, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    .line 4185
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iput-wide v8, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J

    .line 4186
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v1, v1, -0x4

    iput v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    goto/16 :goto_7
.end method

.method private updateSignEncryptIcons()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 8923
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsSignChecked:Z

    if-eqz v0, :cond_0

    .line 8924
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSignIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8929
    :goto_0
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsEncryptChecked:Z

    if-eqz v0, :cond_1

    .line 8930
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mEncryptionIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8934
    :goto_1
    return-void

    .line 8926
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSignIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 8932
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mEncryptionIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public IsOriginMsgEdited()Z
    .locals 1

    .prologue
    .line 11776
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsOriginMsgEdited:Z

    return v0
.end method

.method public SetOriginMsgEdited(Z)Z
    .locals 1
    .parameter "bset"

    .prologue
    .line 11780
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->mIsOriginMsgEdited:Z

    .line 11781
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsOriginMsgEdited:Z

    return v0
.end method

.method public UpdateRichToolbar(I)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x3f19999a

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/high16 v2, 0x3f80

    .line 2795
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v0}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v0

    .line 2797
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mLayout_ToolBarView_noscroll:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 2798
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView_noscroll:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v0}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v0

    .line 2801
    :cond_0
    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnUndo:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2802
    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnUndo:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 2804
    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnRedo:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2805
    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnRedo:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 2807
    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnInsert:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2808
    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnInsert:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 2824
    if-nez p1, :cond_1

    .line 2825
    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnBold:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2826
    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnBold:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 2827
    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnItalic:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2828
    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnItalic:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 2829
    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnFontsize:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2830
    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnFontsize:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 2831
    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mFontColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 2832
    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mFontColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 2833
    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mFontBgColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 2834
    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mFontBgColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 2835
    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnUndo:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2836
    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnUndo:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 2837
    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnRedo:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2838
    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnRedo:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 2839
    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnInsert:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2840
    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnInsert:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 2842
    invoke-virtual {v0, v4}, Lcom/android/email/activity/ToolBarScrollView;->changeToolBarState(I)V

    .line 2863
    :goto_0
    return-void

    .line 2844
    :cond_1
    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnBold:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2845
    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnBold:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 2846
    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnItalic:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2847
    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnItalic:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 2848
    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnFontsize:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2849
    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnFontsize:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 2850
    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mFontColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 2851
    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mFontColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 2852
    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mFontBgColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 2853
    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mFontBgColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 2854
    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnUndo:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2855
    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnUndo:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 2856
    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnRedo:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2857
    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnRedo:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 2858
    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnInsert:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2859
    iget-object v1, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnInsert:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 2861
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->getStateInRichlyEditableText()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ToolBarScrollView;->changeToolBarState(I)V

    goto :goto_0
.end method

.method public attachmentProgress(Z)V
    .locals 2
    .parameter "progress"

    .prologue
    .line 12243
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 12244
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x8f

    iput v1, v0, Landroid/os/Message;->what:I

    .line 12245
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 12246
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 12247
    return-void

    .line 12245
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 12158
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/android/email/activity/MessageCompose;->mTouchEventY:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/email/activity/MessageCompose;->mScrolledDistance:F

    .line 12160
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MessageCompose;->mTouchEventY:F

    .line 12162
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public displayToast(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 11877
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 11878
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x91

    iput v1, v0, Landroid/os/Message;->what:I

    .line 11879
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 11880
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 11881
    return-void
.end method

.method public finishLoadAttachment(J)V
    .locals 2
    .parameter "attachmentId"

    .prologue
    .line 12250
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 12251
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x90

    iput v1, v0, Landroid/os/Message;->what:I

    .line 12252
    long-to-int v1, p1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 12253
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 12254
    return-void
.end method

.method public finishLoadInlineAttachment()V
    .locals 2

    .prologue
    .line 12257
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 12258
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x93

    iput v1, v0, Landroid/os/Message;->what:I

    .line 12259
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 12260
    return-void
.end method

.method public finishLoadMore()V
    .locals 2

    .prologue
    .line 12275
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 12276
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x95

    iput v1, v0, Landroid/os/Message;->what:I

    .line 12277
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 12278
    return-void
.end method

.method getIsSyncedDraftMessage()Z
    .locals 1

    .prologue
    .line 12194
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->isSyncedDraftMessage:Z

    return v0
.end method

.method initFromIntent(Landroid/content/Intent;)V
    .locals 9
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 8092
    const-string v0, "android.intent.extra.EMAIL"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 8093
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 8094
    if-eqz v3, :cond_1

    .line 8095
    array-length v5, v3

    move v0, v2

    :goto_0
    if-ge v0, v5, :cond_1

    aget-object v6, v3, v0

    .line 8096
    invoke-static {v6}, Lcom/android/emailcommon/mail/Address;->isAllValid(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 8098
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8095
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8100
    :cond_0
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-direct {p0, v7, v6}, Lcom/android/email/activity/MessageCompose;->addAddress(Landroid/widget/MultiAutoCompleteTextView;Ljava/lang/String;)V

    .line 8101
    const v6, 0x7f0801bf

    invoke-direct {p0, v6, v8}, Lcom/android/email/activity/MessageCompose;->showToast(II)V

    goto :goto_1

    .line 8110
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v8, :cond_b

    .line 8112
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->selectBubbleLayout(Lcom/android/email/activity/bubblelayout/BubbleLayout;)V

    .line 8113
    new-instance v0, Lcom/android/email/activity/MessageCompose$AddAddessTask;

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageCompose$AddAddessTask;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$1;)V

    new-array v3, v8, [Ljava/util/ArrayList;

    aput-object v4, v3, v2

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MessageCompose$AddAddessTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddAddressFromIntentTask:Landroid/os/AsyncTask;

    .line 8118
    :cond_2
    :goto_2
    const-string v0, "android.intent.extra.CC"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 8119
    if-eqz v0, :cond_3

    .line 8120
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-direct {p0, v3, v0}, Lcom/android/email/activity/MessageCompose;->addAddresses(Lcom/android/email/activity/bubblelayout/BubbleLayout;[Ljava/lang/String;)V

    .line 8123
    :cond_3
    const-string v0, "android.intent.extra.BCC"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 8124
    if-eqz v0, :cond_4

    .line 8125
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-direct {p0, v3, v0}, Lcom/android/email/activity/MessageCompose;->addAddresses(Lcom/android/email/activity/bubblelayout/BubbleLayout;[Ljava/lang/String;)V

    .line 8127
    :cond_4
    const-string v0, "android.intent.extra.SUBJECT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8128
    if-eqz v0, :cond_5

    .line 8129
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 8139
    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 8140
    if-eqz v0, :cond_6

    .line 8141
    const-string v3, "mailto"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 8142
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->initializeFromMailTo(Ljava/lang/String;)V

    .line 8152
    :cond_6
    :goto_3
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 8153
    if-eqz v3, :cond_7

    .line 8156
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    :goto_4
    invoke-virtual {p0, v3, v0}, Lcom/android/email/activity/MessageCompose;->setInitialComposeText(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 8181
    :cond_7
    const-string v0, "android.intent.action.SEND"

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 8182
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    .line 8183
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 8184
    if-eqz v0, :cond_9

    if-eqz v3, :cond_9

    .line 8193
    const-string v4, "text/x-vcard"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 8196
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 8197
    const-string v1, "vcard"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 8200
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 8201
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    .line 8203
    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 8207
    const-string v4, "android.intent.action.SEND"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz v3, :cond_8

    .line 8208
    const-string v4, "Compose >>"

    const-string v5, "[Email] EQUEST_ATTACHMENT_VCARD : ACTION_SEND"

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 8210
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->addAttachment(Landroid/net/Uri;)I

    move-result v0

    or-int/2addr v0, v2

    .line 8211
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showResultToast(I)V

    .line 8214
    :cond_8
    const-string v0, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz v3, :cond_9

    .line 8215
    const-string v0, "Compose >>"

    const-string v1, "[Email] EQUEST_ATTACHMENT_VCARD : ACTION_SEND_MULTIPLE"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 8218
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 8221
    if-eqz v0, :cond_9

    .line 8223
    new-instance v1, Lcom/android/email/activity/MessageCompose$34;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$34;-><init>(Lcom/android/email/activity/MessageCompose;)V

    new-array v3, v8, [Ljava/util/ArrayList;

    aput-object v0, v3, v2

    invoke-virtual {v1, v3}, Lcom/android/email/activity/MessageCompose$34;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentsTaskFromIntent:Landroid/os/AsyncTask;

    .line 8420
    :cond_9
    :goto_5
    const-string v0, "android.intent.action.SEND_MULTIPLE"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 8421
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 8450
    if-eqz v0, :cond_a

    .line 8451
    new-instance v1, Lcom/android/email/activity/MessageCompose$35;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$35;-><init>(Lcom/android/email/activity/MessageCompose;)V

    new-array v3, v8, [Ljava/util/ArrayList;

    aput-object v0, v3, v2

    invoke-virtual {v1, v3}, Lcom/android/email/activity/MessageCompose$35;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentsTaskFromIntent:Landroid/os/AsyncTask;

    .line 8610
    :cond_a
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->setNewMessageFocus()V

    .line 8611
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->setDraftNeedsSaving(Z)V

    .line 8612
    return-void

    .line 8114
    :cond_b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v8, :cond_2

    .line 8115
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v3, v0}, Lcom/android/email/activity/MessageCompose;->addAddress(Lcom/android/email/activity/bubblelayout/BubbleLayout;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 8144
    :cond_c
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 8145
    if-eqz v0, :cond_6

    .line 8146
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/android/email/activity/MessageCompose;->addAddresses(Lcom/android/email/activity/bubblelayout/BubbleLayout;[Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_d
    move-object v0, v1

    .line 8156
    goto/16 :goto_4

    .line 8412
    :cond_e
    new-instance v3, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;

    invoke-direct {v3, p0, v1}, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$1;)V

    new-array v1, v8, [Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {v3, v1}, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddAttachmentTask:Landroid/os/AsyncTask;

    goto :goto_5
.end method

.method isAddressAllValid()Z
    .locals 4

    .prologue
    const v3, 0x7f0800c5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4963
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v2}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->isValidAddress()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->addToAddressFromEditText(Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4964
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->focusToLayout(Z)V

    .line 4965
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/email/activity/AddressTextView;->setError(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 4977
    :cond_1
    :goto_0
    return v0

    .line 4967
    :cond_2
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v2}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->isValidAddress()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->addCcAddressFromEditText(Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4968
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->focusCcLayout(Z)V

    .line 4969
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/email/activity/AddressTextView;->setError(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 4970
    goto :goto_0

    .line 4971
    :cond_4
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v2}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->isValidAddress()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->addBccAddressFromEditText(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4972
    :cond_5
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->focusBccLayout(Z)V

    .line 4973
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/email/activity/AddressTextView;->setError(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 4974
    goto :goto_0
.end method

.method isExpiredSpellCheckMode()Z
    .locals 5

    .prologue
    .line 12557
    const/4 v0, 0x0

    .line 12559
    .local v0, ret:Z
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sget-wide v3, Lcom/android/email/activity/MessageCompose;->tLastSpellcheck:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1f4

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 12560
    const/4 v0, 0x1

    .line 12563
    :cond_0
    return v0
.end method

.method public messageChanged()V
    .locals 2

    .prologue
    .line 11884
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 11885
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x97

    iput v1, v0, Landroid/os/Message;->what:I

    .line 11886
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 11887
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x32

    const/4 v2, -0x1

    const/4 v6, 0x4

    const/4 v1, 0x0

    const/4 v8, 0x1

    .line 5466
    if-nez p3, :cond_1

    .line 6447
    :cond_0
    :goto_0
    return-void

    .line 5469
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 6446
    :cond_2
    :goto_1
    :sswitch_0
    invoke-direct {p0, v8}, Lcom/android/email/activity/MessageCompose;->setDraftNeedsSaving(Z)V

    goto :goto_0

    .line 5471
    :sswitch_1
    if-ne p2, v2, :cond_2

    .line 5475
    const-string v0, "FILE"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 5479
    array-length v3, v2

    move v0, v1

    :goto_2
    if-ge v1, v3, :cond_4

    aget-object v4, v2, v1

    .line 5480
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5481
    if-eqz v5, :cond_3

    .line 5482
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/email/activity/MessageCompose;->loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I

    move-result v4

    or-int/2addr v0, v4

    .line 5479
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5486
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showResultToast(I)V

    goto :goto_1

    .line 5491
    :sswitch_2
    const-string v0, "Email"

    const-string v2, "onActivityResult: requestCode = REQUEST_ATTACHMENT_IMAGE"

    invoke-static {v0, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 5495
    invoke-direct {p0, p3}, Lcom/android/email/activity/MessageCompose;->getFilePath(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 5498
    if-nez v0, :cond_5

    .line 5501
    new-instance v0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$1;)V

    new-array v2, v8, [Ljava/lang/String;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddAttachmentTask:Landroid/os/AsyncTask;

    goto :goto_1

    .line 5507
    :cond_5
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_6

    .line 5508
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "REQUEST_ATTACHMENT_IMAGE file path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 5511
    :cond_6
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5512
    if-eqz v2, :cond_9

    .line 5513
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 5514
    iput-boolean v8, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 5515
    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 5516
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 5517
    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 5519
    if-le v4, v7, :cond_8

    if-le v3, v7, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    if-gtz v5, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".jpeg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    if-gtz v5, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_8

    .line 5524
    :cond_7
    invoke-direct {p0, v0, v4, v3}, Lcom/android/email/activity/MessageCompose;->onImageAttachmentResult(Ljava/lang/String;II)V

    move v0, v1

    .line 5532
    :goto_3
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showResultToast(I)V

    goto/16 :goto_1

    .line 5526
    :cond_8
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I

    move-result v0

    or-int/2addr v0, v1

    goto :goto_3

    .line 5528
    :cond_9
    const-string v0, "Email"

    const-string v1, "REQUEST_CODE_ATTACH_IMAGE file = null"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 5529
    invoke-direct {p0, v6}, Lcom/android/email/activity/MessageCompose;->showResultToast(I)V

    goto/16 :goto_0

    .line 5537
    :sswitch_3
    const-string v0, "Email"

    const-string v2, "onActivityResult: requestCode = REQUEST_ATTACHMENT_TAKE_PICTURE"

    invoke-static {v0, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 5540
    const-string v0, "uri-data"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5542
    if-eqz v0, :cond_2

    .line 5543
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 5547
    if-eqz v0, :cond_e

    .line 5549
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->getFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 5550
    const/4 v2, 0x0

    .line 5553
    if-nez v0, :cond_a

    .line 5554
    const-string v0, "Email"

    const-string v1, "REQUEST_ATTACHMENT_TAKE_PICTURE file path = null"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5559
    :cond_a
    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_b

    .line 5560
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "REQUEST_ATTACHMENT_TAKE_PICTURE file path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 5568
    :cond_b
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5569
    if-eqz v3, :cond_d

    .line 5570
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 5571
    iput-boolean v8, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 5572
    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 5573
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 5574
    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 5576
    if-le v4, v7, :cond_c

    if-le v3, v7, :cond_c

    .line 5577
    invoke-direct {p0, v0, v4, v3}, Lcom/android/email/activity/MessageCompose;->onImageAttachmentResult(Ljava/lang/String;II)V

    .line 5586
    :goto_4
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->showResultToast(I)V

    .line 5593
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->showResultToast(I)V

    goto/16 :goto_1

    .line 5579
    :cond_c
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I

    move-result v0

    or-int/2addr v1, v0

    goto :goto_4

    .line 5581
    :cond_d
    const-string v0, "Email"

    const-string v1, "REQUEST_ATTACHMENT_TAKE_PICTURE file = null"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 5583
    invoke-direct {p0, v6}, Lcom/android/email/activity/MessageCompose;->showResultToast(I)V

    goto/16 :goto_0

    .line 5588
    :cond_e
    const-string v0, "Email"

    const-string v1, "REQUEST_ATTACHMENT_TAKE_PICTURE = null"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 5589
    invoke-direct {p0, v6}, Lcom/android/email/activity/MessageCompose;->showResultToast(I)V

    goto/16 :goto_0

    .line 5598
    :sswitch_4
    const-string v0, "Email"

    const-string v3, "onActivityResult: requestCode = REQUEST_ATTACHMENT_ADD_AUDIO"

    invoke-static {v0, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 5600
    if-ne p2, v2, :cond_2

    if-eqz p3, :cond_2

    .line 5603
    const-string v0, "FILE_URI"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 5604
    if-eqz v0, :cond_f

    .line 5605
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I

    move-result v0

    or-int/2addr v0, v1

    .line 5611
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showResultToast(I)V

    goto/16 :goto_1

    .line 5607
    :cond_f
    const-string v0, "Email"

    const-string v1, "REQUEST_ATTACHMENT_ADD_AUDIO file = null"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5616
    :sswitch_5
    const-string v0, "Email"

    const-string v2, "onActivityResult: requestCode = REQUEST_CODE_RECORD_SOUND"

    invoke-static {v0, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 5620
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5621
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 5623
    if-eqz v0, :cond_12

    .line 5624
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->getFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 5625
    if-eqz v0, :cond_11

    .line 5626
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5627
    if-eqz v2, :cond_10

    .line 5628
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I

    move-result v0

    or-int/2addr v0, v1

    .line 5645
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showResultToast(I)V

    .line 5646
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout(Z)V

    goto/16 :goto_1

    .line 5630
    :cond_10
    const-string v0, "Email"

    const-string v1, "REQUEST_CODE_RECORD_SOUND file = null"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 5631
    invoke-direct {p0, v6}, Lcom/android/email/activity/MessageCompose;->showResultToast(I)V

    goto/16 :goto_0

    .line 5635
    :cond_11
    const-string v0, "Email"

    const-string v1, "REQUEST_CODE_RECORD_SOUND file = null"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 5636
    invoke-direct {p0, v6}, Lcom/android/email/activity/MessageCompose;->showResultToast(I)V

    goto/16 :goto_0

    .line 5640
    :cond_12
    const-string v0, "Email"

    const-string v1, "REQUEST_CODE_RECORD_SOUND file = null"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 5641
    invoke-direct {p0, v6}, Lcom/android/email/activity/MessageCompose;->showResultToast(I)V

    goto/16 :goto_0

    .line 5652
    :sswitch_6
    const/16 v0, 0x3ef

    if-ne v0, p1, :cond_14

    .line 5653
    const-string v0, "Email"

    const-string v2, "onActivityResult: requestCode = REQUEST_ATTACHMENT_ADD_VIDEO"

    invoke-static {v0, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 5661
    :cond_13
    :goto_5
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 5663
    if-eqz v0, :cond_15

    .line 5664
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I

    move-result v0

    or-int/2addr v0, v1

    .line 5671
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showResultToast(I)V

    goto/16 :goto_1

    .line 5655
    :cond_14
    const/16 v0, 0x3f0

    if-ne v0, p1, :cond_13

    .line 5656
    const-string v0, "Email"

    const-string v2, "onActivityResult: requestCode = REQUEST_ATTACHMENT_TAKE_VIDEO"

    invoke-static {v0, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 5666
    :cond_15
    const-string v0, "Email"

    const-string v1, "REQUEST_ATTACHMENT_ADD_VIDEO or TAKE_VIDEO file = null"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5676
    :sswitch_7
    invoke-virtual {p3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    .line 5678
    const-string v2, "text/x-vcard"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5679
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 5680
    const-string v2, "vcard"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 5683
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 5684
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    .line 5686
    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 5690
    const-string v4, "android.intent.action.SEND"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    if-eqz v3, :cond_16

    .line 5691
    const-string v4, "Compose >>"

    const-string v5, "[Email] EQUEST_ATTACHMENT_VCARD : ACTION_SEND"

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 5693
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->addAttachment(Landroid/net/Uri;)I

    move-result v0

    or-int/2addr v0, v1

    .line 5694
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showResultToast(I)V

    .line 5697
    :cond_16
    const-string v0, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    .line 5698
    const-string v0, "Compose >>"

    const-string v2, "[Email] EQUEST_ATTACHMENT_VCARD : ACTION_SEND_MULTIPLE"

    invoke-static {v0, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 5700
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 5732
    if-eqz v0, :cond_2

    .line 5734
    new-instance v2, Lcom/android/email/activity/MessageCompose$24;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageCompose$24;-><init>(Lcom/android/email/activity/MessageCompose;)V

    new-array v3, v8, [Ljava/util/ArrayList;

    aput-object v0, v3, v1

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageCompose$24;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentsTaskFromIntent:Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 5932
    :sswitch_8
    const-string v0, "uristrings"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 5933
    if-eqz v3, :cond_0

    move v2, v1

    .line 5939
    :goto_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_17

    .line 5940
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 5942
    if-eqz v0, :cond_4f

    .line 5943
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I

    move-result v0

    or-int/2addr v0, v1

    .line 5939
    :goto_7
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_6

    .line 5947
    :cond_17
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->showResultToast(I)V

    goto/16 :goto_1

    .line 5952
    :sswitch_9
    const-string v0, "Email"

    const-string v2, "onActivityResult: requestCode = REQUEST_ATTACHMENT_PEN_MEMO"

    invoke-static {v0, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 5958
    invoke-direct {p0, p3}, Lcom/android/email/activity/MessageCompose;->getFilePath(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 5960
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5962
    if-eqz v0, :cond_18

    .line 5963
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->addAttachment(Landroid/net/Uri;)I

    move-result v0

    or-int/2addr v0, v1

    .line 5972
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showResultToast(I)V

    goto/16 :goto_1

    .line 5966
    :cond_18
    const-string v0, "Email"

    const-string v1, "REQUEST_ATTACHMENT_PEN_MEMO file = null"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5978
    :sswitch_a
    const-string v0, "return_image_file"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5979
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5981
    if-eqz v0, :cond_2

    .line 5982
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 5983
    iput-boolean v8, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 5984
    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 5986
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    .line 5988
    const/16 v4, 0x168

    .line 5991
    if-eqz v6, :cond_4e

    .line 5992
    iget v3, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 5993
    iget v0, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 5995
    if-lez v3, :cond_19

    .line 5996
    mul-int v2, v0, v4

    div-int/2addr v2, v3

    .line 5999
    :cond_19
    if-le v4, v3, :cond_4e

    move v2, v0

    move v0, v3

    .line 6007
    :goto_8
    if-eqz v7, :cond_1a

    .line 6009
    invoke-direct {p0, v5, v0, v2}, Lcom/android/email/activity/MessageCompose;->onImageAttachmentResult(Ljava/lang/String;II)V

    .line 6015
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->showResultToast(I)V

    goto/16 :goto_1

    .line 6011
    :cond_1a
    const-string v0, "Email"

    const-string v1, "REQUEST_ATTACHMENT_DRAWING_PAD file = null"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6021
    :sswitch_b
    const-string v0, "return_image_file"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6022
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6024
    if-eqz v1, :cond_2

    .line 6025
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 6026
    iput-boolean v8, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 6027
    invoke-static {v0, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 6029
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 6031
    const/16 v4, 0x168

    .line 6034
    if-eqz v5, :cond_4d

    .line 6035
    iget v3, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 6036
    iget v0, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 6038
    if-lez v3, :cond_4c

    .line 6039
    mul-int v1, v0, v4

    div-int/2addr v1, v3

    .line 6042
    :goto_9
    if-le v4, v3, :cond_4b

    move v1, v3

    .line 6049
    :goto_a
    iget-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->bIsHtmlComposerFocused:Z

    if-eq v2, v8, :cond_1b

    .line 6050
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 6051
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    const-string v3, ""

    sget-object v4, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_BEGINING:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v2, v3, v4}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    .line 6055
    :cond_1b
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v2

    if-ne v8, v2, :cond_1d

    .line 6056
    if-lez v1, :cond_1c

    if-lez v0, :cond_1c

    .line 6057
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v0}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;II)V

    goto/16 :goto_1

    .line 6059
    :cond_1c
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6062
    :cond_1d
    if-lez v1, :cond_1e

    if-lez v0, :cond_1e

    .line 6063
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v0}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;II)V

    goto/16 :goto_1

    .line 6065
    :cond_1e
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6075
    :sswitch_c
    const-string v0, "return_image_file"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6076
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6078
    if-eqz v1, :cond_2

    .line 6079
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 6080
    iput-boolean v8, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 6081
    invoke-static {v0, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 6083
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 6085
    const/16 v3, 0x168

    .line 6088
    if-eqz v4, :cond_4a

    .line 6089
    iget v1, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 6090
    iget v0, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 6092
    if-lez v1, :cond_1f

    .line 6093
    mul-int v2, v0, v3

    div-int/2addr v2, v1

    .line 6096
    :cond_1f
    if-le v3, v1, :cond_4a

    move v2, v0

    move v0, v1

    .line 6102
    :goto_b
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v1

    if-ne v8, v1, :cond_21

    .line 6103
    if-lez v0, :cond_20

    if-lez v2, :cond_20

    .line 6104
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0, v2}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;II)V

    goto/16 :goto_1

    .line 6106
    :cond_20
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6109
    :cond_21
    if-lez v0, :cond_22

    if-lez v2, :cond_22

    .line 6110
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0, v2}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;II)V

    goto/16 :goto_1

    .line 6112
    :cond_22
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6120
    :sswitch_d
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 6123
    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->bIsHtmlComposerFocused:Z

    if-eq v1, v8, :cond_23

    .line 6124
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 6125
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    const-string v2, ""

    sget-object v3, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_BEGINING:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v2, v3}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    .line 6129
    :cond_23
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->insertImage(Landroid/net/Uri;)V

    goto/16 :goto_1

    .line 6134
    :sswitch_e
    const-string v0, "namecard_result"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6135
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6138
    invoke-static {v0}, Lcom/android/email/mail/internet/EmailHtmlUtil;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6141
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v1

    if-ne v8, v1, :cond_24

    .line 6142
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 6143
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    sget-object v2, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_CURSOR:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v0, v2}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    goto/16 :goto_1

    .line 6145
    :cond_24
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v1

    if-ne v8, v1, :cond_25

    .line 6146
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 6147
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    sget-object v2, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_CURSOR:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v0, v2}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    goto/16 :goto_1

    .line 6150
    :cond_25
    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->bIsHtmlComposerFocused:Z

    if-eq v1, v8, :cond_2

    .line 6151
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 6152
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    sget-object v2, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_BEGINING:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v0, v2}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    goto/16 :goto_1

    .line 6158
    :sswitch_f
    const-string v0, "result"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6159
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6162
    invoke-static {v0}, Lcom/android/email/mail/internet/EmailHtmlUtil;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6165
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v1

    if-ne v8, v1, :cond_26

    .line 6166
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 6167
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    sget-object v2, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_CURSOR:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v0, v2}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    goto/16 :goto_1

    .line 6169
    :cond_26
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v1

    if-ne v8, v1, :cond_27

    .line 6170
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 6171
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    sget-object v2, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_CURSOR:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v0, v2}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    goto/16 :goto_1

    .line 6174
    :cond_27
    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->bIsHtmlComposerFocused:Z

    if-eq v1, v8, :cond_2

    .line 6175
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 6176
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    sget-object v2, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_BEGINING:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v0, v2}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    goto/16 :goto_1

    .line 6182
    :sswitch_10
    const-string v0, "memotext"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6183
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6186
    invoke-static {v0}, Lcom/android/email/mail/internet/EmailHtmlUtil;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6189
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v1

    if-ne v8, v1, :cond_28

    .line 6190
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 6191
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    sget-object v2, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_CURSOR:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v0, v2}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    goto/16 :goto_1

    .line 6193
    :cond_28
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v1

    if-ne v8, v1, :cond_29

    .line 6194
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 6195
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    sget-object v2, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_CURSOR:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v0, v2}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    goto/16 :goto_1

    .line 6198
    :cond_29
    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->bIsHtmlComposerFocused:Z

    if-eq v1, v8, :cond_2

    .line 6199
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 6200
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    sget-object v2, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_BEGINING:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v0, v2}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    goto/16 :goto_1

    .line 6206
    :sswitch_11
    const-string v0, "Compose >>"

    const-string v1, "REQUEST_INSERT_PEN_MEMO"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 6207
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 6210
    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->bIsHtmlComposerFocused:Z

    if-eq v1, v8, :cond_2a

    .line 6211
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 6212
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    const-string v2, ""

    sget-object v3, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_BEGINING:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v2, v3}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    .line 6216
    :cond_2a
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->insertImage(Landroid/net/Uri;)V

    goto/16 :goto_1

    .line 6222
    :sswitch_12
    const-string v0, "location-char"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 6224
    const-string v2, "location-string"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6226
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 6227
    const v0, 0x7f0802f0

    invoke-direct {p0, v0, v8}, Lcom/android/email/activity/MessageCompose;->showToast(II)V

    goto/16 :goto_1

    .line 6231
    :cond_2b
    const-string v0, "location-fileUri"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6233
    const-string v0, "Email"

    const-string v3, "REQUEST_ATTACHMENT_LOCATION = "

    invoke-static {v0, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 6235
    const/4 v0, 0x0

    .line 6238
    if-eqz v2, :cond_2c

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 6239
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 6242
    :cond_2c
    if-eqz v0, :cond_2d

    .line 6243
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I

    move-result v0

    or-int/2addr v1, v0

    .line 6246
    :cond_2d
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->showResultToast(I)V

    goto/16 :goto_1

    .line 6251
    :sswitch_13
    const-string v0, "location-char"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 6253
    const-string v1, "location-string"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6254
    const-string v2, "location-fileUri"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6256
    const-string v3, "Compose >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "REQUEST_INSERT_LOCATION = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 6258
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 6259
    const v0, 0x7f0802f0

    invoke-direct {p0, v0, v8}, Lcom/android/email/activity/MessageCompose;->showToast(II)V

    goto/16 :goto_1

    .line 6263
    :cond_2e
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_32

    .line 6264
    invoke-static {v1}, Lcom/android/email/mail/internet/EmailHtmlUtil;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6265
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v1

    if-ne v8, v1, :cond_30

    .line 6266
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 6267
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    sget-object v3, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_CURSOR:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v0, v3}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    .line 6299
    :cond_2f
    :goto_c
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6300
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v0

    if-ne v8, v0, :cond_35

    .line 6301
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 6302
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v2}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6269
    :cond_30
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v1

    if-ne v8, v1, :cond_31

    .line 6270
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 6271
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    sget-object v3, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_CURSOR:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v0, v3}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    goto :goto_c

    .line 6274
    :cond_31
    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->bIsHtmlComposerFocused:Z

    if-eq v1, v8, :cond_2f

    .line 6275
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 6276
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    sget-object v3, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_BEGINING:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v0, v3}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    goto :goto_c

    .line 6280
    :cond_32
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 6281
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/mail/internet/EmailHtmlUtil;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6282
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v1

    if-ne v8, v1, :cond_33

    .line 6283
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 6284
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    sget-object v3, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_CURSOR:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v0, v3}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    goto :goto_c

    .line 6286
    :cond_33
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v1

    if-ne v8, v1, :cond_34

    .line 6287
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 6288
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    sget-object v3, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_CURSOR:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v0, v3}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    goto :goto_c

    .line 6291
    :cond_34
    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->bIsHtmlComposerFocused:Z

    if-eq v1, v8, :cond_2f

    .line 6292
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 6293
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    sget-object v3, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_BEGINING:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v0, v3}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    goto/16 :goto_c

    .line 6303
    :cond_35
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v0

    if-ne v8, v0, :cond_36

    .line 6304
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 6305
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v2}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6307
    :cond_36
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->bIsHtmlComposerFocused:Z

    if-eq v0, v8, :cond_2

    .line 6308
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 6309
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    const-string v1, ""

    sget-object v3, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_BEGINING:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v0, v1, v3}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    .line 6310
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v2}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6319
    :sswitch_14
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "result"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 6320
    if-eqz v0, :cond_2

    .line 6323
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 6325
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 6327
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6328
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 6333
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v8

    .line 6334
    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->isAllValid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 6335
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 6337
    :cond_37
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v4}, Lcom/android/email/activity/AddressTextView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_39

    .line 6338
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-direct {p0, v4, v0}, Lcom/android/email/activity/MessageCompose;->addAddress(Landroid/widget/MultiAutoCompleteTextView;Ljava/lang/String;)V

    .line 6344
    :cond_38
    :goto_e
    const v0, 0x7f0801bf

    invoke-direct {p0, v0, v8}, Lcom/android/email/activity/MessageCompose;->showToast(II)V

    goto :goto_d

    .line 6339
    :cond_39
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v4}, Lcom/android/email/activity/AddressTextView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 6340
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-direct {p0, v4, v0}, Lcom/android/email/activity/MessageCompose;->addAddress(Landroid/widget/MultiAutoCompleteTextView;Ljava/lang/String;)V

    goto :goto_e

    .line 6341
    :cond_3a
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v4}, Lcom/android/email/activity/AddressTextView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_38

    .line 6342
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-direct {p0, v4, v0}, Lcom/android/email/activity/MessageCompose;->addAddress(Landroid/widget/MultiAutoCompleteTextView;Ljava/lang/String;)V

    goto :goto_e

    .line 6351
    :cond_3b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v8, :cond_42

    .line 6352
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3e

    .line 6354
    :cond_3c
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->selectBubbleLayout(Lcom/android/email/activity/bubblelayout/BubbleLayout;)V

    .line 6362
    :cond_3d
    :goto_f
    new-instance v0, Lcom/android/email/activity/MessageCompose$AddAddessTask;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/email/activity/MessageCompose$AddAddessTask;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$1;)V

    new-array v2, v8, [Ljava/util/ArrayList;

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageCompose$AddAddessTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddAddressContactButtonTask:Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 6355
    :cond_3e
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_40

    .line 6357
    :cond_3f
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->selectBubbleLayout(Lcom/android/email/activity/bubblelayout/BubbleLayout;)V

    goto :goto_f

    .line 6358
    :cond_40
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_41

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3d

    .line 6360
    :cond_41
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->selectBubbleLayout(Lcom/android/email/activity/bubblelayout/BubbleLayout;)V

    goto :goto_f

    .line 6363
    :cond_42
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v8, :cond_2

    .line 6364
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_43

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_44

    .line 6366
    :cond_43
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0, v8}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->addButtonAfterDuplicateCheck(Ljava/lang/String;Z)Z

    goto/16 :goto_1

    .line 6367
    :cond_44
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_46

    .line 6369
    :cond_45
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0, v8}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->addButtonAfterDuplicateCheck(Ljava/lang/String;Z)Z

    goto/16 :goto_1

    .line 6370
    :cond_46
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 6372
    :cond_47
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0, v8}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->addButtonAfterDuplicateCheck(Ljava/lang/String;Z)Z

    goto/16 :goto_1

    .line 6436
    :sswitch_15
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 6437
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->updateBubbleAfterSavingContact()Z

    goto/16 :goto_1

    .line 6438
    :cond_48
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 6439
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->updateBubbleAfterSavingContact()Z

    goto/16 :goto_1

    .line 6440
    :cond_49
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6441
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->updateBubbleAfterSavingContact()Z

    goto/16 :goto_1

    :cond_4a
    move v0, v3

    goto/16 :goto_b

    :cond_4b
    move v0, v1

    move v1, v4

    goto/16 :goto_a

    :cond_4c
    move v1, v2

    goto/16 :goto_9

    :cond_4d
    move v0, v2

    move v1, v4

    goto/16 :goto_a

    :cond_4e
    move v0, v4

    goto/16 :goto_8

    :cond_4f
    move v0, v1

    goto/16 :goto_7

    .line 5469
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_1
        0x3ea -> :sswitch_7
        0x3eb -> :sswitch_8
        0x3ec -> :sswitch_8
        0x3ed -> :sswitch_2
        0x3ee -> :sswitch_3
        0x3ef -> :sswitch_6
        0x3f0 -> :sswitch_6
        0x3f1 -> :sswitch_12
        0x3f2 -> :sswitch_4
        0x3f3 -> :sswitch_5
        0x3f4 -> :sswitch_9
        0x3f5 -> :sswitch_a
        0x3f6 -> :sswitch_8
        0x7d1 -> :sswitch_d
        0x7d2 -> :sswitch_e
        0x7d3 -> :sswitch_f
        0x7d4 -> :sswitch_10
        0x7d5 -> :sswitch_13
        0x7d6 -> :sswitch_11
        0x7d7 -> :sswitch_b
        0xbb9 -> :sswitch_c
        0xfa1 -> :sswitch_14
        0x1389 -> :sswitch_0
        0x7011214 -> :sswitch_15
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 7609
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onCancel()V

    .line 7610
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 6498
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->handleCommand(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6499
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onRefreshLayoutCcBcc()V

    .line 6636
    :goto_0
    return-void

    .line 6502
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 6608
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->onViewAttachment(Landroid/view/View;)V

    .line 6611
    :sswitch_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout()V

    goto :goto_0

    .line 6505
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->onComposerAttach()V

    goto :goto_0

    .line 6512
    :sswitch_3
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const-wide/16 v3, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/Controller;->hasPremiumExpiredAccounts(JJ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6513
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onSend()V

    goto :goto_0

    .line 6515
    :cond_1
    invoke-static {p0}, Lcom/android/email/combined/common/ExceptionUtil;->showDialogPremiumExpired(Landroid/app/Activity;)V

    goto :goto_0

    .line 6532
    :sswitch_4
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->onDeleteAttachment(Landroid/view/View;)V

    goto :goto_0

    .line 6547
    :sswitch_5
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onShowAccountDialog()V

    .line 6548
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onRefreshLayoutCcBcc()V

    goto :goto_0

    .line 6559
    :sswitch_6
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->addAllAddressFromEditText(Z)V

    .line 6560
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout(Z)V

    .line 6562
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->focusToLayout(Z)V

    .line 6563
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    .line 6564
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onRefreshLayoutCcBcc()V

    goto :goto_0

    .line 6568
    :sswitch_7
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->addAllAddressFromEditText(Z)V

    .line 6569
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout(Z)V

    .line 6571
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->focusCcLayout(Z)V

    .line 6572
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    .line 6573
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onRefreshLayoutCcBcc()V

    goto :goto_0

    .line 6577
    :sswitch_8
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->addAllAddressFromEditText(Z)V

    .line 6578
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout(Z)V

    .line 6580
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->focusBccLayout(Z)V

    .line 6581
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    .line 6582
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onRefreshLayoutCcBcc()V

    goto :goto_0

    .line 6585
    :sswitch_9
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->addAllAddressFromEditText(Z)V

    .line 6586
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    .line 6587
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 6588
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->focusToLayout(Z)V

    .line 6589
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->shrinkCcBccLayout()V

    .line 6590
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout(Z)V

    goto :goto_0

    .line 6603
    :sswitch_a
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onPhonebook()V

    goto :goto_0

    .line 6614
    :sswitch_b
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    .line 6615
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 6616
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 6618
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->append(Ljava/lang/CharSequence;)V

    .line 6620
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v3}, Landroid/webkit/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    .line 6630
    :goto_1
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->addAllAddressFromEditText(Z)V

    .line 6631
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    .line 6632
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->focusToLayout(Z)V

    .line 6633
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->shrinkCcBccLayout()V

    .line 6634
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout(Z)V

    goto/16 :goto_0

    .line 6623
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 6624
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->append(Ljava/lang/CharSequence;)V

    .line 6626
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v3}, Landroid/webkit/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    goto :goto_1

    .line 6502
    :sswitch_data_0
    .sparse-switch
        0x7f1000dd -> :sswitch_0
        0x7f100175 -> :sswitch_1
        0x7f10017d -> :sswitch_b
        0x7f100184 -> :sswitch_3
        0x7f100185 -> :sswitch_2
        0x7f100186 -> :sswitch_0
        0x7f100187 -> :sswitch_4
        0x7f10018a -> :sswitch_1
        0x7f10018d -> :sswitch_8
        0x7f10018f -> :sswitch_8
        0x7f100192 -> :sswitch_a
        0x7f100195 -> :sswitch_7
        0x7f100197 -> :sswitch_7
        0x7f100199 -> :sswitch_a
        0x7f10019d -> :sswitch_5
        0x7f10019e -> :sswitch_9
        0x7f1001a8 -> :sswitch_6
        0x7f1001aa -> :sswitch_6
        0x7f1001ac -> :sswitch_a
    .end sparse-switch
.end method

.method public onComposerAttach()V
    .locals 0

    .prologue
    .line 12167
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onShowAddAttachmentDialog()V

    .line 12169
    return-void
.end method

.method public onComposerInsert()V
    .locals 0

    .prologue
    .line 12172
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onShowInsertTextOrImageDialog()V

    .line 12173
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    .line 6785
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 6787
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/email/activity/MessageCompose;->mCurrentOrientation:I

    .line 6789
    iget v2, p0, Lcom/android/email/activity/MessageCompose;->mCurrentOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 6790
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mActionBar_Title:Landroid/widget/TextView;

    const/16 v3, 0x244

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setWidth(I)V

    .line 6828
    :goto_0
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mToolbarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 6830
    .local v0, mtParams:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mToolbarLayoutNoscroll:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 6838
    .local v1, mtnParams:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mToolbarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6839
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mToolbarLayoutNoscroll:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6842
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->updateActionBarBackground()Z

    .line 6843
    return-void

    .line 6792
    .end local v0           #mtParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v1           #mtnParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mActionBar_Title:Landroid/widget/TextView;

    const/16 v3, 0x118

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setWidth(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter

    .prologue
    const-wide/16 v6, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 1098
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1100
    sput-object v8, Lcom/android/email/activity/MessageCompose;->mStartWithIntent:Landroid/content/Intent;

    .line 1102
    sput-boolean v10, Lcom/android/email/activity/MessageCompose;->mIsSpellCheckMode:Z

    .line 1105
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->DPMReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1109
    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 1110
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1111
    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1112
    const/high16 v1, 0x3f00

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1113
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1115
    const v0, 0x7f04006f

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->setContentView(I)V

    .line 1117
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->reqReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "ResponseAxT9Info"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1120
    const v0, 0x7f050003

    const v1, 0x7f050004

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->overridePendingTransition(II)V

    .line 1124
    iput-object v8, p0, Lcom/android/email/activity/MessageCompose;->mTemplateId:Ljava/lang/String;

    .line 1125
    iput-object v8, p0, Lcom/android/email/activity/MessageCompose;->mTemplateDescription:Ljava/lang/String;

    .line 1126
    iput-object v8, p0, Lcom/android/email/activity/MessageCompose;->mTemplateName:Ljava/lang/String;

    .line 1129
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    .line 1130
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->initViews()V

    .line 1131
    invoke-direct {p0, v10}, Lcom/android/email/activity/MessageCompose;->setDraftNeedsSaving(Z)V

    .line 1137
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "displayName is not \'##snc##\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1140
    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_2

    .line 1141
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onShowAccountCheckDialog()V

    .line 1143
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1144
    sput-object v0, Lcom/android/email/activity/MessageCompose;->mStartWithIntent:Landroid/content/Intent;

    .line 1149
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1153
    if-eqz v1, :cond_0

    .line 1154
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1359
    :cond_0
    :goto_0
    return-void

    .line 1153
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v8, :cond_1

    .line 1154
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1153
    :cond_1
    throw v0

    :cond_2
    if-eqz v1, :cond_3

    .line 1154
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1160
    :cond_3
    if-eqz p1, :cond_1e

    .line 1163
    const-string v0, "com.android.email.activity.MessageCompose.stateKeySourceMessageProced"

    invoke-virtual {p1, v0, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mSourceMessageProcessed:Z

    .line 1165
    const-string v0, "com.android.email.activity.MessageCompose.draftId"

    invoke-virtual {p1, v0, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1168
    :goto_2
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 1169
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    .line 1171
    const-string v2, "com.android.email.intent.action.EMAIL_DOC"

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1172
    invoke-virtual {p0, v9}, Lcom/android/email/activity/MessageCompose;->SetOriginMsgEdited(Z)Z

    .line 1178
    :cond_4
    new-instance v2, Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;

    invoke-direct {v2, p0, v8}, Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$1;)V

    iput-object v2, p0, Lcom/android/email/activity/MessageCompose;->mSMIMEUtilsCallback:Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;

    .line 1179
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/email/activity/MessageCompose;->mProgressDialog1:Landroid/app/ProgressDialog;

    .line 1182
    cmp-long v2, v0, v6

    if-eqz v2, :cond_5

    .line 1186
    const-string v2, "com.android.email.intent.action.EDIT_DRAFT"

    iput-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    .line 1187
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iput-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 1191
    :cond_5
    const-string v2, "android.intent.action.VIEW"

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "android.intent.action.SENDTO"

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "android.intent.action.SEND"

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "android.intent.action.SEND_MULTIPLE"

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1194
    :cond_6
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->setAccount(Landroid/content/Intent;)V

    .line 1197
    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageCompose;->initFromIntent(Landroid/content/Intent;)V

    .line 1198
    invoke-direct {p0, v9}, Lcom/android/email/activity/MessageCompose;->setDraftNeedsSaving(Z)V

    .line 1199
    iput-boolean v9, p0, Lcom/android/email/activity/MessageCompose;->mMessageLoaded:Z

    .line 1200
    iput-boolean v9, p0, Lcom/android/email/activity/MessageCompose;->mSourceMessageProcessed:Z

    .line 1201
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->setFromAccount()V

    .line 1203
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    :goto_3
    invoke-virtual {p0, v8, v0}, Lcom/android/email/activity/MessageCompose;->setInitialComposeText(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 1205
    invoke-direct {p0, v8}, Lcom/android/email/activity/MessageCompose;->configureSmimeOptions(Lcom/android/emailcommon/provider/EmailContent$Message;)V

    .line 1275
    :goto_4
    const-string v0, "com.android.email.intent.action.REPLY"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "com.android.email.intent.action.REPLY_ALL"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "com.android.email.intent.action.FORWARD"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "com.android.email.intent.action.EDIT_DRAFT"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "com.android.email.intent.action.MEETING_RESPONSE"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "com.android.email.intent.action.PROPOSE_NEW_TIME"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1287
    :cond_7
    const-string v0, "com.android.email.intent.action.REPLY"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "com.android.email.intent.action.REPLY_ALL"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "com.android.email.intent.action.MEETING_RESPONSE"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "com.android.email.intent.action.PROPOSE_NEW_TIME"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1292
    :cond_8
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1294
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v1, v10}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1303
    :cond_9
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_a

    .line 1308
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v0

    .line 1309
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_1a

    move v1, v9

    .line 1313
    :goto_5
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_1b

    move v0, v9

    .line 1318
    :goto_6
    const-string v2, "com.android.email.intent.action.EDIT_DRAFT"

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1332
    :cond_a
    :goto_7
    new-instance v0, Lcom/android/email/ControllerResultUiThreadWrapper;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/email/activity/MessageCompose$MessageComposeListener;

    invoke-direct {v2, p0, v8}, Lcom/android/email/activity/MessageCompose$MessageComposeListener;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$1;)V

    invoke-direct {v0, v1, v2}, Lcom/android/email/ControllerResultUiThreadWrapper;-><init>(Landroid/os/Handler;Lcom/android/email/Controller$Result;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mControllerResult:Lcom/android/email/Controller$Result;

    .line 1337
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1338
    const v0, 0x7f0803cf

    invoke-static {p0, v0, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1339
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    .line 1343
    :cond_b
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->IsEAS()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1344
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView_noscroll:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v0}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/email/activity/ToolBarScrollView;->SetEASIconDisplay(Z)V

    .line 1345
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v0}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/email/activity/ToolBarScrollView;->SetEASIconDisplay(Z)V

    .line 1347
    invoke-virtual {p0, v9}, Lcom/android/email/activity/MessageCompose;->SetOriginMsgEdited(Z)Z

    .line 1351
    :cond_c
    const-string v0, "com.android.email.intent.action.REPLY"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "com.android.email.intent.action.REPLY_ALL"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1352
    :cond_d
    const-string v0, "message_id"

    invoke-virtual {v3, v0, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageCompose;->mOriginalMessageId:J

    .line 1356
    :cond_e
    invoke-static {}, Lcom/android/email/Email;->getApplication()Lcom/android/email/Email;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mApp:Lcom/android/email/Email;

    goto/16 :goto_0

    :cond_f
    move-object v0, v8

    .line 1203
    goto/16 :goto_3

    .line 1209
    :cond_10
    cmp-long v2, v0, v6

    if-eqz v2, :cond_15

    move-wide v1, v0

    .line 1210
    :goto_8
    cmp-long v0, v1, v6

    if-eqz v0, :cond_18

    .line 1215
    const-string v0, "com.android.email.intent.action.REPLY"

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "com.android.email.intent.action.REPLY_ALL"

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "com.android.email.intent.action.FORWARD"

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "com.android.email.intent.action.EDIT_DRAFT"

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "com.android.email.intent.action.EMAIL_DOC"

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "com.android.email.intent.action.MEETING_RESPONSE"

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "com.android.email.intent.action.PROPOSE_NEW_TIME"

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1224
    :cond_11
    const-string v0, "account_id"

    invoke-virtual {v3, v0, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 1225
    const-wide/16 v11, 0x0

    cmp-long v0, v4, v11

    if-gez v0, :cond_17

    .line 1226
    invoke-static {p0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 1228
    if-eqz v0, :cond_12

    .line 1229
    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {p0, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v4

    .line 1231
    invoke-direct {p0, v4}, Lcom/android/email/activity/MessageCompose;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 1234
    const-string v4, "com.android.email.intent.action.EDIT_DRAFT"

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->IsEAS()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1235
    iget-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v4, :cond_16

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_16

    move v0, v9

    :goto_9
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->setIsSyncedDraftMessage(Z)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1237
    new-instance v0, Lcom/android/email/ControllerResultUiThreadWrapper;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/android/email/activity/MessageCompose$ControllerResults;

    invoke-direct {v5, p0}, Lcom/android/email/activity/MessageCompose$ControllerResults;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-direct {v0, v4, v5}, Lcom/android/email/ControllerResultUiThreadWrapper;-><init>(Landroid/os/Handler;Lcom/android/email/Controller$Result;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    .line 1239
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v0, v4}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    .line 1248
    :cond_12
    :goto_a
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->setFromAccount()V

    .line 1251
    :cond_13
    new-instance v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/email/activity/MessageCompose$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageCompose;J)V

    new-array v4, v10, [Ljava/lang/Void;

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLoadMessageTask:Landroid/os/AsyncTask;

    .line 1254
    iput-wide v1, p0, Lcom/android/email/activity/MessageCompose;->mMessageId:J

    .line 1269
    :goto_b
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-nez v0, :cond_14

    .line 1270
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->getAccount(Landroid/content/Intent;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 1272
    :cond_14
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    :goto_c
    invoke-virtual {p0, v8, v0}, Lcom/android/email/activity/MessageCompose;->setInitialComposeText(Ljava/lang/CharSequence;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1209
    :cond_15
    const-string v0, "message_id"

    invoke-virtual {v3, v0, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    move-wide v1, v0

    goto/16 :goto_8

    :cond_16
    move v0, v10

    .line 1235
    goto :goto_9

    .line 1245
    :cond_17
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->setAccount(Landroid/content/Intent;)V

    goto :goto_a

    .line 1257
    :cond_18
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->setAccount(Landroid/content/Intent;)V

    .line 1262
    iput-boolean v9, p0, Lcom/android/email/activity/MessageCompose;->mMessageLoaded:Z

    .line 1263
    iput-boolean v9, p0, Lcom/android/email/activity/MessageCompose;->mSourceMessageProcessed:Z

    .line 1264
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->setFromAccount()V

    .line 1266
    invoke-direct {p0, v8}, Lcom/android/email/activity/MessageCompose;->configureSmimeOptions(Lcom/android/emailcommon/provider/EmailContent$Message;)V

    goto :goto_b

    :cond_19
    move-object v0, v8

    .line 1272
    goto :goto_c

    :cond_1a
    move v1, v10

    .line 1309
    goto/16 :goto_5

    :cond_1b
    move v0, v10

    .line 1313
    goto/16 :goto_6

    .line 1322
    :cond_1c
    if-eqz v1, :cond_1d

    .line 1323
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v10}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->addButton(Ljava/lang/String;Z)Z

    .line 1324
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->shrinkCcBccLayout()V

    goto/16 :goto_7

    .line 1325
    :cond_1d
    if-eqz v0, :cond_a

    .line 1326
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v10}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->addButton(Ljava/lang/String;Z)Z

    .line 1327
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->shrinkCcBccLayout()V

    goto/16 :goto_7

    .line 1153
    :catchall_1
    move-exception v0

    move-object v8, v1

    goto/16 :goto_1

    :cond_1e
    move-wide v0, v6

    goto/16 :goto_2
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 7757
    packed-switch p1, :pswitch_data_0

    .line 7892
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 7763
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7765
    const v1, 0x7f080203

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 7767
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const v3, 0x7f0802e6

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x7f0802e7

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 7773
    new-instance v2, Lcom/android/email/activity/MessageCompose$30;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageCompose$30;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7818
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 7826
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7828
    const v1, 0x7f0802e8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 7830
    const v1, 0x7f0802e9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 7832
    const v1, 0x7f0802ea

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/email/activity/MessageCompose$31;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageCompose$31;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7852
    const v1, 0x7f0802eb

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/email/activity/MessageCompose$32;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageCompose$32;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7867
    new-instance v1, Lcom/android/email/activity/MessageCompose$33;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$33;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 7884
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 7757
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 7906
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 7907
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f001b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 7908
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->isFirstCall:Z

    .line 7909
    return v2
.end method

.method public onDeleteMessageConfirmationDialogOkPressed()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5374
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 5386
    new-array v0, v5, [J

    .line 5387
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    aput-wide v1, v0, v4

    .line 5390
    const-string v1, "com.android.email.intent.action.EDIT_DRAFT"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5391
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/email/Controller;->deleteMessage([JJ)V

    .line 5392
    const v0, 0x7f0800c2

    invoke-static {p0, v0, v5}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    .line 5396
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/email/activity/MessageCompose;->setDraftNeedsSaving(Z)V

    .line 5397
    invoke-direct {p0, v4}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    .line 5399
    iput-boolean v5, p0, Lcom/android/email/activity/MessageCompose;->mDoNotSaveDraft:Z

    .line 5401
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    .line 5402
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1606
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1608
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->reqReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1611
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getIsSyncedDraftMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1612
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLoadEmbeddedAttachmentsTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 1613
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLoadEmbeddedAttachmentsTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 1614
    iput-object v1, p0, Lcom/android/email/activity/MessageCompose;->mLoadEmbeddedAttachmentsTask:Landroid/os/AsyncTask;

    .line 1616
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    invoke-virtual {v0}, Lcom/android/email/Controller;->loadMoreCancel()V

    .line 1617
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mEmbeddedImageDownload:Z

    .line 1618
    iput v2, p0, Lcom/android/email/activity/MessageCompose;->mInlineImageCount:I

    .line 1619
    iput v2, p0, Lcom/android/email/activity/MessageCompose;->mInlineImageCallbackCount:I

    .line 1620
    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageCompose;->setIsSyncedDraftMessage(Z)Z

    .line 1625
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->DPMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1637
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->saveIfNeeded()V

    .line 1646
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    if-eqz v0, :cond_2

    .line 1647
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->stopLoading()V

    .line 1648
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->destroy()V

    .line 1649
    iput-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    .line 1652
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    if-eqz v0, :cond_3

    .line 1653
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->stopLoading()V

    .line 1654
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->destroy()V

    .line 1655
    iput-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    .line 1658
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddAddressFromIntentTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 1659
    iput-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAddAddressFromIntentTask:Landroid/os/AsyncTask;

    .line 1661
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddAddressContactButtonTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 1662
    iput-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAddAddressContactButtonTask:Landroid/os/AsyncTask;

    .line 1665
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentsTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 1666
    iput-object v1, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentsTask:Landroid/os/AsyncTask;

    .line 1667
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLoadMessageTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 1668
    iput-object v1, p0, Lcom/android/email/activity/MessageCompose;->mLoadMessageTask:Landroid/os/AsyncTask;

    .line 1670
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentsTaskFromIntent:Landroid/os/AsyncTask;

    if-eqz v0, :cond_4

    .line 1671
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentsTaskFromIntent:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 1672
    iput-object v1, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentsTaskFromIntent:Landroid/os/AsyncTask;

    .line 1675
    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentsTaskFromUri:Landroid/os/AsyncTask;

    if-eqz v0, :cond_5

    .line 1676
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentsTaskFromUri:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 1677
    iput-object v1, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentsTaskFromUri:Landroid/os/AsyncTask;

    .line 1680
    :cond_5
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddAttachmentTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_6

    .line 1681
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddAttachmentTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 1682
    iput-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAddAttachmentTask:Landroid/os/AsyncTask;

    .line 1685
    :cond_6
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterTo:Lcom/android/email/EmailAddressAdapter;

    if-eqz v0, :cond_7

    .line 1686
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterTo:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v0}, Lcom/android/email/EmailAddressAdapter;->close()V

    .line 1688
    :cond_7
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterCc:Lcom/android/email/EmailAddressAdapter;

    if-eqz v0, :cond_8

    .line 1689
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterCc:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v0}, Lcom/android/email/EmailAddressAdapter;->close()V

    .line 1691
    :cond_8
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterBcc:Lcom/android/email/EmailAddressAdapter;

    if-eqz v0, :cond_9

    .line 1692
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterBcc:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v0}, Lcom/android/email/EmailAddressAdapter;->close()V

    .line 1694
    :cond_9
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    .line 1695
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter "view"
    .parameter "focused"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3807
    if-nez p2, :cond_0

    .line 3808
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3897
    :goto_0
    :pswitch_0
    return-void

    .line 3811
    :pswitch_1
    iput-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->bIsHtmlComposerFocused:Z

    goto :goto_0

    .line 3821
    :pswitch_2
    iput-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->bIsHtmlComposerFocused:Z

    goto :goto_0

    .line 3835
    :cond_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onRefreshLayoutCcBcc()V

    .line 3836
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 3838
    :sswitch_0
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->bIsHtmlComposerFocused:Z

    .line 3839
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v0}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ToolBarScrollView;->setHtmlComposerView(Landroid/webkit/HtmlComposerView;)V

    .line 3840
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView_noscroll:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v0}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ToolBarScrollView;->setHtmlComposerView(Landroid/webkit/HtmlComposerView;)V

    goto :goto_0

    .line 3851
    :sswitch_1
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->bIsHtmlComposerFocused:Z

    .line 3852
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v0}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ToolBarScrollView;->setHtmlComposerView(Landroid/webkit/HtmlComposerView;)V

    .line 3853
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView_noscroll:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v0}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ToolBarScrollView;->setHtmlComposerView(Landroid/webkit/HtmlComposerView;)V

    .line 3862
    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageCompose;->SetOriginMsgEdited(Z)Z

    goto :goto_0

    .line 3865
    :sswitch_2
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->addAllAddressFromEditText(Z)V

    .line 3866
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout(Z)V

    .line 3868
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->focusToLayout(Z)V

    goto :goto_0

    .line 3871
    :sswitch_3
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->addAllAddressFromEditText(Z)V

    .line 3872
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout(Z)V

    .line 3874
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->focusCcLayout(Z)V

    goto :goto_0

    .line 3877
    :sswitch_4
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->addAllAddressFromEditText(Z)V

    .line 3878
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout(Z)V

    .line 3880
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->focusBccLayout(Z)V

    goto :goto_0

    .line 3883
    :sswitch_5
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 3886
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->addAllAddressFromEditText(Z)V

    .line 3887
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->focusToLayout(Z)V

    .line 3888
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->shrinkCcBccLayout()V

    .line 3891
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout(Z)V

    goto/16 :goto_0

    .line 3808
    :pswitch_data_0
    .packed-switch 0x7f10017a
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 3836
    :sswitch_data_0
    .sparse-switch
        0x7f10017a -> :sswitch_0
        0x7f10017c -> :sswitch_1
        0x7f10018f -> :sswitch_4
        0x7f100197 -> :sswitch_3
        0x7f1001a2 -> :sswitch_5
        0x7f1001aa -> :sswitch_2
    .end sparse-switch
.end method

.method public onIRMOperation()Z
    .locals 8

    .prologue
    const v7, 0x7f08059e

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 10012
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->bIsEncryptChecked:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->bIsSignChecked:Z

    if-eqz v0, :cond_2

    .line 10013
    :cond_0
    const v0, 0x7f080599

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 10047
    :cond_1
    :goto_0
    return v1

    .line 10016
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-eqz v0, :cond_6

    const-string v0, "eas"

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    .line 10018
    :goto_1
    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    const-wide v5, 0x402c333333333333L

    cmpl-double v0, v3, v5

    if-ltz v0, :cond_5

    .line 10020
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p0, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v0

    .line 10021
    if-eqz v0, :cond_1

    .line 10024
    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    move v0, v1

    .line 10025
    :goto_2
    if-eqz v0, :cond_4

    .line 10026
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mControllerResult:Lcom/android/email/Controller$Result;

    invoke-virtual {v0, v2}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    .line 10027
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v2, v3}, Lcom/android/email/Controller;->refreshIRMTemplates(J)V

    .line 10028
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mIrmWait:Landroid/app/ProgressDialog;

    .line 10029
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mIrmWait:Landroid/app/ProgressDialog;

    const v2, 0x7f0805a3

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 10030
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mIrmWait:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 10031
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mIrmWait:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 10024
    goto :goto_2

    .line 10036
    :cond_4
    invoke-direct {p0, v7, v2}, Lcom/android/email/activity/MessageCompose;->showToasts(II)V

    goto :goto_0

    .line 10042
    :cond_5
    invoke-direct {p0, v7, v2}, Lcom/android/email/activity/MessageCompose;->showToasts(II)V

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_1
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "arg1"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 6674
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 6675
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_1

    .line 6676
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 6749
    .end local p1
    :cond_0
    :goto_0
    return v3

    .line 6679
    .restart local p1
    :sswitch_0
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->addToAddressFromEditText(Z)Z

    goto :goto_0

    .line 6684
    :sswitch_1
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->addCcAddressFromEditText(Z)Z

    goto :goto_0

    .line 6689
    :sswitch_2
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->addBccAddressFromEditText(Z)Z

    goto :goto_0

    .line 6693
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x43

    if-ne v0, v1, :cond_0

    .line 6695
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    :sswitch_3
    move-object v0, p1

    .line 6729
    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 6735
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->isSelectedLastButton()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6736
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->deleteSelectedLastButton()V

    .line 6737
    check-cast p1, Landroid/widget/EditText;

    .end local p1
    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    goto :goto_0

    .restart local p1
    :sswitch_4
    move-object v0, p1

    .line 6697
    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 6703
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->isSelectedLastButton()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6704
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->deleteSelectedLastButton()V

    .line 6705
    check-cast p1, Landroid/widget/EditText;

    .end local p1
    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    goto :goto_0

    .line 6706
    .restart local p1
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->selectLastButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6707
    check-cast p1, Landroid/widget/EditText;

    .end local p1
    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setCursorVisible(Z)V

    goto :goto_0

    .restart local p1
    :sswitch_5
    move-object v0, p1

    .line 6713
    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 6719
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->isSelectedLastButton()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6720
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->deleteSelectedLastButton()V

    .line 6721
    check-cast p1, Landroid/widget/EditText;

    .end local p1
    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    goto/16 :goto_0

    .line 6722
    .restart local p1
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->selectLastButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6723
    check-cast p1, Landroid/widget/EditText;

    .end local p1
    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setCursorVisible(Z)V

    goto/16 :goto_0

    .line 6738
    .restart local p1
    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->selectLastButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6739
    check-cast p1, Landroid/widget/EditText;

    .end local p1
    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setCursorVisible(Z)V

    goto/16 :goto_0

    .line 6676
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100193 -> :sswitch_2
        0x7f10019a -> :sswitch_1
        0x7f1001ad -> :sswitch_0
    .end sparse-switch

    .line 6695
    :sswitch_data_1
    .sparse-switch
        0x7f100193 -> :sswitch_3
        0x7f10019a -> :sswitch_5
        0x7f1001ad -> :sswitch_4
    .end sparse-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 6658
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 6669
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 6660
    :pswitch_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 6661
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    goto :goto_0

    .line 6663
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    goto :goto_0

    .line 6658
    nop

    :pswitch_data_0
    .packed-switch 0x7f10017d
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 7600
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->handleCommand(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7601
    const/4 v0, 0x1

    .line 7603
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1593
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1596
    const v0, 0x7f050003

    const v1, 0x7f050004

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->overridePendingTransition(II)V

    .line 1598
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter

    .prologue
    const v4, 0x7f1002d2

    const v3, 0x7f1002d1

    const v7, 0x7f1002d9

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 7914
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->isFirstCall:Z

    if-ne v0, v1, :cond_0

    .line 7915
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->isFirstCall:Z

    .line 8012
    :goto_0
    return v2

    .line 7919
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->hasFocus()Z

    move-result v0

    if-ne v0, v1, :cond_3

    .line 7920
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 7921
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 7927
    :goto_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_4

    .line 7928
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 7929
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 7930
    const v0, 0x7f1002d3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 7931
    const v0, 0x7f1002d3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 7942
    :goto_2
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->isNotFieldsAllEmpty()Z

    move-result v0

    if-ne v0, v1, :cond_5

    .line 7943
    const v0, 0x7f1002d4

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 7948
    :goto_3
    const v0, 0x7f1002d5

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 7952
    const v0, 0x7f1002d6

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 7953
    const v0, 0x7f1002d7

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 7955
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->IsEAS()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 7956
    const v0, 0x7f1002d8

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 7957
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 7958
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 7962
    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    const-wide v5, 0x402c333333333333L

    cmpl-double v0, v3, v5

    if-ltz v0, :cond_7

    .line 7963
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p0, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v0

    .line 7965
    if-eqz v0, :cond_6

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    move v0, v1

    .line 7966
    :goto_4
    if-eqz v0, :cond_7

    move v0, v1

    .line 7974
    :goto_5
    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsEncryptChecked:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsSignChecked:Z

    if-eqz v0, :cond_8

    .line 7975
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mTemplateId:Ljava/lang/String;

    .line 8004
    :goto_6
    const-string v0, "com.android.email.intent.action.MEETING_RESPONSE"

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8005
    const v0, 0x7f1002d8

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 8006
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mIsEncryptChecked:Z

    .line 8007
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mIsSignChecked:Z

    .line 8010
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move v2, v1

    .line 8012
    goto/16 :goto_0

    .line 7923
    :cond_3
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 7924
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 7933
    :cond_4
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 7934
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 7935
    const v0, 0x7f1002d3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 7936
    const v0, 0x7f1002d3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 7945
    :cond_5
    const v0, 0x7f1002d4

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_6
    move v0, v2

    .line 7965
    goto :goto_4

    .line 7970
    :catch_0
    move-exception v0

    .line 7971
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    move v0, v2

    goto :goto_5

    .line 7977
    :cond_8
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 7978
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 7980
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mTemplateId:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mTemplateId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 7981
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mIsEncryptChecked:Z

    .line 7982
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mIsSignChecked:Z

    goto/16 :goto_6

    .line 7984
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mTemplateId:Ljava/lang/String;

    .line 7985
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mIsEncryptChecked:Z

    .line 7986
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mIsSignChecked:Z

    goto/16 :goto_6

    .line 7992
    :cond_a
    const v0, 0x7f1002d8

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 7993
    const v0, 0x7f1002d8

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 7995
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 7996
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 7999
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mTemplateId:Ljava/lang/String;

    .line 8000
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mIsEncryptChecked:Z

    .line 8001
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mIsSignChecked:Z

    goto/16 :goto_6
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1717
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1722
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    const-string v0, "com.android.email.activity.MessageCompose.quotedTextShown"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1725
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    const-string v3, "com.android.email.activity.MessageCompose.quotedTextShown"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/webkit/HtmlComposerView;->setVisibility(I)V

    .line 1728
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->setDraftNeedsSaving(Z)V

    .line 1729
    return-void

    :cond_1
    move v0, v2

    .line 1722
    goto :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1546
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->updateActionBarBackground()Z

    .line 1547
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1551
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "displayName is not \'##snc##\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1555
    :try_start_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountCheckDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 1556
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountCheckDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1557
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1569
    if-eqz v1, :cond_0

    .line 1570
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1589
    :cond_0
    :goto_1
    return-void

    .line 1562
    :cond_1
    if-eqz v1, :cond_3

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_3

    .line 1563
    invoke-static {p0}, Lcom/android/email/activity/Welcome;->actionStart(Landroid/app/Activity;)V

    .line 1564
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    .line 1565
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1569
    if-eqz v1, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_2
    if-eqz v1, :cond_2

    .line 1570
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1569
    :cond_2
    throw v0

    :cond_3
    if-eqz v1, :cond_4

    .line 1570
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1576
    :cond_4
    invoke-static {}, Lcom/android/email/Email;->getNotifyUiAccountsChanged()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->checkValidityOfAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1577
    invoke-static {p0}, Lcom/android/email/activity/Welcome;->actionStart(Landroid/app/Activity;)V

    .line 1578
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    goto :goto_1

    .line 1581
    :cond_5
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onRefreshLayoutCcBcc()V

    .line 1583
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mMessageLoaded:Z

    if-eqz v0, :cond_0

    .line 1584
    iget-wide v0, p0, Lcom/android/email/activity/MessageCompose;->mOriginalMessageIdForIRM:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1585
    iget-wide v0, p0, Lcom/android/email/activity/MessageCompose;->mOriginalMessageIdForIRM:J

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->applyIRMresctrition(J)V

    goto :goto_1

    .line 1569
    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "outState"

    .prologue
    .line 1703
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1704
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->getOrCreateDraftId()J

    move-result-wide v0

    .line 1705
    .local v0, draftId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 1706
    const-string v2, "com.android.email.activity.MessageCompose.draftId"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1710
    :cond_0
    const-string v3, "com.android.email.activity.MessageCompose.quotedTextShown"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1712
    const-string v2, "com.android.email.activity.MessageCompose.stateKeySourceMessageProced"

    iget-boolean v3, p0, Lcom/android/email/activity/MessageCompose;->mSourceMessageProcessed:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1713
    return-void

    .line 1710
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onSpellCheck()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 10051
    const-string v0, "Compose >>"

    const-string v1, "onSpellCheck() call setIsContinousSpellCheck() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10053
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->bUserDictionaryPushedToWebkit:Z

    if-nez v0, :cond_1

    .line 10056
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->bUserDictionaryPushedToWebkit:Z

    .line 10058
    sget-object v0, Lcom/android/email/activity/MessageCompose;->mUserDictionary:Lcom/android/email/activity/utils/spellcheck/UserDictionary;

    if-nez v0, :cond_0

    .line 10059
    new-instance v0, Lcom/android/email/activity/utils/spellcheck/UserDictionary;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/email/activity/utils/spellcheck/UserDictionary;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/email/activity/MessageCompose;->mUserDictionary:Lcom/android/email/activity/utils/spellcheck/UserDictionary;

    .line 10062
    :cond_0
    sget-object v0, Lcom/android/email/activity/MessageCompose;->mUserDictionary:Lcom/android/email/activity/utils/spellcheck/UserDictionary;

    invoke-virtual {v0}, Lcom/android/email/activity/utils/spellcheck/UserDictionary;->checkReloadDictionary()V

    .line 10064
    sget-object v0, Lcom/android/email/activity/MessageCompose;->mUserDictionary:Lcom/android/email/activity/utils/spellcheck/UserDictionary;

    invoke-virtual {v0}, Lcom/android/email/activity/utils/spellcheck/UserDictionary;->getWordList()Ljava/util/ArrayList;

    .line 10081
    :cond_1
    return v2
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "view"
    .parameter "motion"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6846
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 6848
    .local v0, action:I
    if-ne v0, v3, :cond_0

    .line 6849
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 6949
    :cond_0
    :goto_0
    return v2

    .line 6858
    :sswitch_0
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 6861
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->addAllAddressFromEditText(Z)V

    .line 6863
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 6866
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->focusToLayout(Z)V

    .line 6867
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->shrinkCcBccLayout()V

    .line 6878
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout(Z)V

    .line 6884
    sget-boolean v1, Lcom/android/email/activity/MessageCompose;->mIsSpellCheckMode:Z

    if-eqz v1, :cond_0

    .line 6887
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/android/email/activity/MessageCompose;->spellcheck_x:I

    .line 6888
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/android/email/activity/MessageCompose;->spellcheck_y:I

    goto :goto_0

    .line 6919
    :sswitch_1
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 6922
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->addAllAddressFromEditText(Z)V

    .line 6923
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 6924
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->focusToLayout(Z)V

    .line 6925
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->shrinkCcBccLayout()V

    .line 6928
    :cond_4
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout(Z)V

    .line 6929
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->getConetextmenuVisibility()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6930
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    goto :goto_0

    .line 6935
    :sswitch_2
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6

    .line 6938
    :cond_5
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->addAllAddressFromEditText(Z)V

    .line 6939
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->focusToLayout(Z)V

    .line 6940
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->shrinkCcBccLayout()V

    .line 6943
    :cond_6
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout(Z)V

    goto/16 :goto_0

    .line 6849
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f10017a -> :sswitch_0
        0x7f10017c -> :sswitch_1
        0x7f1001a2 -> :sswitch_2
    .end sparse-switch
.end method

.method processSourceMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 15
    .parameter
    .parameter

    .prologue
    .line 8945
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    if-nez v1, :cond_4

    const-string v1, ""

    move-object v7, v1

    .line 8947
    :goto_0
    const v1, 0x7f08053e

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 8948
    const v1, 0x7f08053b

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 8949
    const v1, 0x7f08053c

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 8952
    const v1, 0x7f08053d

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    .line 8953
    const v1, 0x7f08053a

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    .line 8955
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    .line 8959
    invoke-virtual {v14, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 8960
    const/4 v1, 0x1

    move v8, v1

    .line 8969
    :goto_1
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateId:Ljava/lang/String;

    if-eqz v1, :cond_8

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    .line 8970
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mIrmIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8971
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateId:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/email/activity/MessageCompose;->mTemplateId:Ljava/lang/String;

    .line 8972
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateDescription:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/email/activity/MessageCompose;->mTemplateDescription:Ljava/lang/String;

    .line 8973
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/email/activity/MessageCompose;->mTemplateName:Ljava/lang/String;

    .line 8974
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->templateDescription:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mTemplateName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mTemplateDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8975
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mIrmIcon:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/email/activity/MessageCompose$36;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageCompose$36;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8988
    :goto_2
    const-string v1, "com.android.email.intent.action.REPLY"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.android.email.intent.action.REPLY_ALL"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.android.email.intent.action.MEETING_RESPONSE"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.android.email.intent.action.PROPOSE_NEW_TIME"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 8991
    :cond_0
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    const-string v1, "com.android.email.intent.action.REPLY_ALL"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/email/activity/MessageCompose;->setupAddressViews(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/email/activity/bubblelayout/BubbleLayout;Lcom/android/email/activity/bubblelayout/BubbleLayout;Z)V

    .line 8993
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->IsEAS()Z

    move-result v1

    if-nez v1, :cond_9

    .line 8994
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    const/4 v2, 0x1

    if-eq v8, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_1
    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 9041
    :goto_3
    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    if-nez v1, :cond_2

    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    if-eqz v1, :cond_f

    :cond_2
    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mProcessed:Z

    if-nez v1, :cond_f

    .line 9044
    const v1, 0x7f0804d9

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 9184
    :cond_3
    :goto_4
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->setNewMessageFocus()V

    .line 9185
    return-void

    .line 8945
    :cond_4
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    move-object v7, v1

    goto/16 :goto_0

    .line 8961
    :cond_5
    invoke-virtual {v14, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 8963
    :cond_6
    const/4 v1, 0x2

    move v8, v1

    goto/16 :goto_1

    .line 8965
    :cond_7
    const/4 v1, 0x0

    move v8, v1

    goto/16 :goto_1

    .line 8985
    :cond_8
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mIrmIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 8997
    :cond_9
    const-string v1, "com.android.email.intent.action.MEETING_RESPONSE"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 8998
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "meeting_resonse"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    and-int/lit8 v1, v1, 0x3

    packed-switch v1, :pswitch_data_0

    goto :goto_3

    .line 9001
    :pswitch_0
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080165

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v7, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 9005
    :pswitch_1
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080167

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v7, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 9009
    :pswitch_2
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080166

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v7, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 9015
    :cond_a
    const-string v1, "com.android.email.intent.action.PROPOSE_NEW_TIME"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 9016
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08053f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 9020
    :cond_b
    invoke-virtual {v14, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v14, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 9024
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 9026
    :cond_c
    invoke-virtual {v14, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 9028
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v7, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 9030
    :cond_d
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 9032
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v7, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 9036
    :cond_e
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 9048
    :cond_f
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/email/activity/MessageCompose;->displayQuotedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 9050
    const-string v1, "com.android.email.intent.action.MEETING_RESPONSE"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 9051
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/email/activity/MessageCompose;->setIncludeQuotedText(ZZ)V

    .line 9052
    const/4 v2, 0x0

    if-eqz p2, :cond_10

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    :goto_5
    invoke-virtual {p0, v2, v1}, Lcom/android/email/activity/MessageCompose;->setInitialComposeText(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 9053
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 9052
    :cond_10
    const/4 v1, 0x0

    goto :goto_5

    .line 9055
    :cond_11
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 9056
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/email/activity/MessageCompose;->setIncludeQuotedText(ZZ)V

    .line 9057
    const/4 v2, 0x0

    if-eqz p2, :cond_12

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    :goto_6
    invoke-virtual {p0, v2, v1}, Lcom/android/email/activity/MessageCompose;->setInitialComposeText(Ljava/lang/CharSequence;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_12
    const/4 v1, 0x0

    goto :goto_6

    .line 9063
    :cond_13
    const-string v1, "com.android.email.intent.action.FORWARD"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "com.android.email.intent.action.EMAIL_DOC"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 9064
    :cond_14
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->IsEAS()Z

    move-result v1

    if-nez v1, :cond_17

    .line 9065
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    const/4 v2, 0x2

    if-eq v8, v2, :cond_15

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_15
    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 9087
    :goto_7
    move-object/from16 v0, p1

    iget v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mImportance:I

    iput v1, p0, Lcom/android/email/activity/MessageCompose;->mPriority:I

    .line 9088
    iget v1, p0, Lcom/android/email/activity/MessageCompose;->mPriority:I

    packed-switch v1, :pswitch_data_1

    .line 9098
    :pswitch_3
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mPriorityHighIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9099
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mPriorityLowIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9104
    :goto_8
    const-string v1, "com.android.email.intent.action.EMAIL_DOC"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 9105
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/email/activity/MessageCompose;->displayQuotedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 9106
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/email/activity/MessageCompose;->setIncludeQuotedText(ZZ)V

    .line 9108
    :cond_16
    const/4 v2, 0x0

    if-eqz p2, :cond_1a

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    :goto_9
    invoke-virtual {p0, v2, v1}, Lcom/android/email/activity/MessageCompose;->setInitialComposeText(Ljava/lang/CharSequence;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 9068
    :cond_17
    invoke-virtual {v14, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {v14, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 9072
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 9074
    :cond_18
    invoke-virtual {v14, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 9076
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v7, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 9080
    :cond_19
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 9090
    :pswitch_4
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mPriorityHighIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9091
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mPriorityLowIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_8

    .line 9094
    :pswitch_5
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mPriorityHighIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9095
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mPriorityLowIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_8

    .line 9108
    :cond_1a
    const/4 v1, 0x0

    goto/16 :goto_9

    .line 9109
    :cond_1b
    const-string v1, "com.android.email.intent.action.EDIT_DRAFT"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9110
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 9112
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/email/activity/MessageCompose;->addAddresses(Lcom/android/email/activity/bubblelayout/BubbleLayout;[Lcom/android/emailcommon/mail/Address;)V

    .line 9113
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v1

    .line 9114
    array-length v2, v1

    if-lez v2, :cond_1c

    .line 9115
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-direct {p0, v2, v1}, Lcom/android/email/activity/MessageCompose;->addAddresses(Lcom/android/email/activity/bubblelayout/BubbleLayout;[Lcom/android/emailcommon/mail/Address;)V

    .line 9119
    :cond_1c
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v1

    .line 9120
    array-length v2, v1

    if-lez v2, :cond_1d

    .line 9121
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-direct {p0, v2, v1}, Lcom/android/email/activity/MessageCompose;->addAddresses(Lcom/android/email/activity/bubblelayout/BubbleLayout;[Lcom/android/emailcommon/mail/Address;)V

    .line 9126
    :cond_1d
    iget v1, p0, Lcom/android/email/activity/MessageCompose;->mPriority:I

    packed-switch v1, :pswitch_data_2

    .line 9136
    :pswitch_6
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mPriorityHighIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9137
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mPriorityLowIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9143
    :goto_a
    move-object/from16 v0, p1

    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v4

    .line 9146
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    .line 9148
    if-eqz v3, :cond_22

    .line 9149
    if-eqz v4, :cond_20

    .line 9150
    array-length v5, v4

    const/4 v1, 0x0

    move v2, v1

    move-object v1, v3

    :goto_b
    if-ge v2, v5, :cond_1f

    aget-object v3, v4, v2

    .line 9151
    iget-object v6, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-eqz v6, :cond_1e

    iget-object v6, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v6, :cond_1e

    .line 9152
    const/4 v6, 0x1

    iget-object v7, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-ne v6, v7, :cond_1e

    .line 9153
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9150
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 9128
    :pswitch_7
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mPriorityHighIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9129
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mPriorityLowIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_a

    .line 9132
    :pswitch_8
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mPriorityHighIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9133
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mPriorityLowIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_a

    :cond_1f
    move-object v3, v1

    .line 9171
    :cond_20
    :goto_c
    if-eqz v3, :cond_21

    .line 9176
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    const-string v2, "email://"

    const-string v4, "text/html"

    const-string v5, "utf-8"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/HtmlComposerView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9181
    :cond_21
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->setDraftNeedsSaving(Z)V

    goto/16 :goto_4

    .line 9160
    :cond_22
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    .line 9161
    if-eqz v3, :cond_20

    .line 9162
    invoke-static {v3}, Lcom/android/email/mail/internet/EmailHtmlUtil;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_c

    .line 8998
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 9088
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch

    .line 9126
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method processSourceMessageGuarded(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 8847
    iget-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mSourceMessageProcessed:Z

    if-nez v2, :cond_0

    .line 8848
    invoke-virtual {p0, p1, p2}, Lcom/android/email/activity/MessageCompose;->processSourceMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 8849
    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mSourceMessageProcessed:Z

    .line 8859
    :cond_0
    const-string v2, "com.android.email.intent.action.EDIT_DRAFT"

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8861
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->enableEditing()V

    .line 8863
    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/email/activity/MessageCompose;->displayQuotedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 8864
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    const/high16 v3, 0x2

    and-int/2addr v2, v3

    if-nez v2, :cond_2

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->setIncludeQuotedText(ZZ)V

    .line 8866
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 8864
    goto :goto_0
.end method

.method public progressLoadMore(I)V
    .locals 2
    .parameter "progress"

    .prologue
    .line 12269
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 12270
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x96

    iput v1, v0, Landroid/os/Message;->what:I

    .line 12271
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 12272
    return-void
.end method

.method setInitialComposeText(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 8021
    const/4 v0, 0x0

    .line 8023
    if-nez p2, :cond_0

    .line 8032
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0801d7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 8038
    :cond_0
    if-eqz p1, :cond_1

    .line 8039
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mInitialText:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 8040
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 8042
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 8045
    invoke-static {p2}, Lcom/android/email/mail/internet/EmailHtmlUtil;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8046
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mInitialText:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eq v2, v1, :cond_4

    .line 8054
    if-eqz v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    .line 8056
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mInitialText:Ljava/lang/StringBuffer;

    const-string v1, "\n\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8059
    :cond_3
    invoke-static {p2}, Lcom/android/email/mail/internet/EmailHtmlUtil;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8060
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 8062
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 8063
    const-string v2, "<div><br></div><div><br></div>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8064
    const-string v2, "<div>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8065
    const-string v2, "<div style=\"font-size:100%\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8066
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8067
    const-string v0, "</div>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8068
    const-string v0, "</div>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8069
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8070
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mInitialText:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8077
    :cond_4
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 1540
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 1541
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    .line 1542
    return-void
.end method

.method setIsSyncedDraftMessage(Z)Z
    .locals 1
    .parameter "set"

    .prologue
    .line 12198
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->isSyncedDraftMessage:Z

    .line 12200
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->isSyncedDraftMessage:Z

    return v0
.end method

.method setupAddressViews(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/email/activity/bubblelayout/BubbleLayout;Lcom/android/email/activity/bubblelayout/BubbleLayout;Z)V
    .locals 8
    .parameter "message"
    .parameter "account"
    .parameter "toBubbleLayout"
    .parameter "ccBubbleLayout"
    .parameter "replyAll"

    .prologue
    .line 8821
    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v6

    .line 8822
    .local v6, replyToAddresses:[Lcom/android/emailcommon/mail/Address;
    array-length v7, v6

    if-nez v7, :cond_0

    .line 8823
    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v6

    .line 8825
    :cond_0
    invoke-direct {p0, p3, v6}, Lcom/android/email/activity/MessageCompose;->addAddresses(Lcom/android/email/activity/bubblelayout/BubbleLayout;[Lcom/android/emailcommon/mail/Address;)V

    .line 8827
    if-eqz p5, :cond_2

    .line 8829
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8830
    .local v1, allAddresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Address;>;"
    iget-object v5, p2, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    .line 8831
    .local v5, ourAddress:Ljava/lang/String;
    move-object v2, v6

    .local v2, arr$:[Lcom/android/emailcommon/mail/Address;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v2, v3

    .line 8832
    .local v0, address:Lcom/android/emailcommon/mail/Address;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8831
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8835
    .end local v0           #address:Lcom/android/emailcommon/mail/Address;
    :cond_1
    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-direct {p0, v7, v5, p3, v1}, Lcom/android/email/activity/MessageCompose;->safeAddAddresses(Ljava/lang/String;Ljava/lang/String;Lcom/android/email/activity/bubblelayout/BubbleLayout;Ljava/util/ArrayList;)Z

    .line 8836
    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-direct {p0, v7, v5, p4, v1}, Lcom/android/email/activity/MessageCompose;->safeAddAddresses(Ljava/lang/String;Ljava/lang/String;Lcom/android/email/activity/bubblelayout/BubbleLayout;Ljava/util/ArrayList;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 8837
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->shrinkCcBccLayout()V

    .line 8841
    .end local v1           #allAddresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Address;>;"
    .end local v2           #arr$:[Lcom/android/emailcommon/mail/Address;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #ourAddress:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public startLoadMore()V
    .locals 2

    .prologue
    .line 12263
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 12264
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x94

    iput v1, v0, Landroid/os/Message;->what:I

    .line 12265
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 12266
    return-void
.end method

.method protected updateActionBarBackground()Z
    .locals 1

    .prologue
    .line 1762
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar:Landroid/app/ActionBar;

    if-nez v0, :cond_0

    .line 1763
    const/4 v0, 0x0

    .line 1776
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
