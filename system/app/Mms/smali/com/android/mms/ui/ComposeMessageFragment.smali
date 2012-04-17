.class public Lcom/android/mms/ui/ComposeMessageFragment;
.super Landroid/app/Fragment;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/android/mms/data/Contact$UpdateListener;
.implements Lcom/android/mms/data/WorkingMessage$MessageStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;,
        Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;,
        Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;,
        Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;,
        Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;,
        Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;,
        Lcom/android/mms/ui/ComposeMessageFragment$MsgListMenuClickListener;,
        Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsListener;,
        Lcom/android/mms/ui/ComposeMessageFragment$SendThreadListener;,
        Lcom/android/mms/ui/ComposeMessageFragment$CancelSendingListener;,
        Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupDismissListener;,
        Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupCancelListener;,
        Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupListener;,
        Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;,
        Lcom/android/mms/ui/ComposeMessageFragment$DeleteMessageListener;
    }
.end annotation


# static fields
.field private static isComposerClosed:Z

.field public static isSipVisible:Z

.field private static mBundle:Landroid/os/Bundle;

.field private static mDelAnimProgressDialog:Landroid/app/ProgressDialog;

.field public static mDoNotRefreshDraftCache:Z

.field public static mEncodingType:I

.field private static mIsRestore:Z

.field private static mSendCompleteRun:Ljava/lang/Runnable;

.field private static sEmptyContactList:Lcom/android/mms/data/ContactList;


# instance fields
.field private animView:Landroid/view/View;

.field private displayDensity:F

.field private isAlreadyShown:Z

.field isEnter:Z

.field private isHideCompose:Z

.field private isResizingImage:Z

.field private lastView:Landroid/view/View;

.field private mActivity:Landroid/app/Activity;

.field private mAddContactIntent:Landroid/content/Intent;

.field private mAddTextSelectorAdapter:Lcom/android/mms/ui/AddTextSelectorAdapter;

.field private mAttachButton:Landroid/widget/ImageButton;

.field private mAttachDialog:Landroid/app/AlertDialog;

.field private mAttachErrorDialog:Landroid/app/AlertDialog;

.field private mAttachListAdapter:Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;

.field private mAttachListPanel:Landroid/widget/LinearLayout;

.field private mAttachmentProgressDialog:Landroid/app/ProgressDialog;

.field private mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;

.field private mBottomPanel:Landroid/view/View;

.field private mBubbleFontSize:F

.field private mChooseContactSelectorAdapter:Lcom/android/mms/ui/ChooseContactSelectorAdapter;

.field mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

.field private final mClipboardHandler:Landroid/os/Handler;

.field private mComposeView:Landroid/view/View;

.field private mComposerPanel:Landroid/widget/ScrollView;

.field private mComposerPanelBg:I

.field private mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mConversation:Lcom/android/mms/data/Conversation;

.field private mCursorColor:I

.field private final mDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

.field protected mDeleteConfirmDialog:Landroid/content/DialogInterface;

.field private mDeleteLocked:Z

.field private mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

.field private mDeleteUri:Landroid/net/Uri;

.field private mDiscardDraftConfirmDialog:Landroid/app/AlertDialog;

.field private mDraftSavedOnStop:Z

.field private mEditTextTouchedListener:Landroid/view/View$OnTouchListener;

.field private mEditorBg:I

.field private mExitOnSent:Z

.field private mFlagDeletedAll:Z

.field private mGreekInputHandler:Lcom/android/mms/ui/GreekInputHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHasLockedMessage:Z

.field private final mHttpProgressFilter:Landroid/content/IntentFilter;

.field private final mHttpProgressReceiver:Landroid/content/BroadcastReceiver;

.field private mIntent:Landroid/content/Intent;

.field private mInvalidRecipientsDialog:Landroid/app/AlertDialog;

.field private mIsAnimationEnable:Z

.field private mIsDeleteAnimation:Z

.field private mIsDeleteMode:Z

.field private mIsDeleteWithAnimation:Z

.field private mIsForwardedMessage:Z

.field private mIsKeyboardOpen:Z

.field private mIsLandscape:Z

.field protected mIsMediaPasteRunning:Z

.field private mIsNeedToAnimation:Z

.field private mIsNewThreadOpen:Z

.field private mIsOnScreen:Z

.field private mIsOpenToButtonMenu:Z

.field private mIsTranslateMenuON:Z

.field private mKeepToButtonVisible:Z

.field private mLayoutSelectorDialog:Landroid/app/AlertDialog;

.field private final mListKeyListener:Landroid/view/View$OnKeyListener;

.field private mLocale:Ljava/lang/String;

.field private mMaxCharExceedToast:Landroid/widget/Toast;

.field private mMaxCharsInputToast:Landroid/widget/Toast;

.field private mMessageHandler:Landroid/os/Handler;

.field private final mMessageListItemHandler:Landroid/os/Handler;

.field private final mMmsConainerHandler:Landroid/os/Handler;

.field private mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

.field private mMsgAttachHandler:Landroid/os/Handler;

.field private mMsgCount:I

.field public mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

.field private mMsgListView:Lcom/android/mms/ui/MessageListView;

.field private mOnCloseListener:Lcom/android/mms/ui/OnEventListener;

.field mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

.field private mOnStateChangeListener:Lcom/android/mms/ui/OnEventListener;

.field mPasteEvent:Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;

.field private mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

.field private mPossiblePendingNotification:Z

.field private mRecipientButton:Landroid/widget/ImageButton;

.field private mRecipientId:I

.field private mRecipientList:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

.field public final mRecipientsEditorHandler:Landroid/os/Handler;

.field private mRecipientsField:Landroid/widget/LinearLayout;

.field private final mRecipientsWatcher:Landroid/text/TextWatcher;

.field private mRemainingInCurrentMessage:I

.field private mRemoveComposer:Z

.field mResetMessageRunnable:Ljava/lang/Runnable;

.field private mSavedToButtonRecipients:Ljava/lang/String;

.field private mScreenWidth:I

.field private mSelectAll:Landroid/widget/LinearLayout;

.field private mSelectAllCheckBox:Landroid/widget/CheckBox;

.field private mSelectAllText:Landroid/widget/TextView;

.field private mSelectedPosition:I

.field private mSendButton:Landroid/widget/Button;

.field private mSendConfirmDialog:Landroid/app/AlertDialog;

.field private mSendingMessage:Z

.field private mSentMessage:Z

.field private mSipHandler:Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;

.field private mSmileyDialog:Landroid/app/AlertDialog;

.field private mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field private mSoftkeyRight:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field private final mSubjectEditorWatcher:Landroid/text/TextWatcher;

.field private final mSubjectKeyListener:Landroid/view/View$OnKeyListener;

.field private mSubjectTextEditor:Landroid/widget/EditText;

.field private mTextColor:I

.field private final mTextEditorInputFilter:Landroid/text/InputFilter;

.field private final mTextEditorWatcher:Landroid/text/TextWatcher;

.field private mTextFieldColor:I

.field private mTextOnTop:Z

.field private final mTextViewKeyListener:Landroid/view/View$OnKeyListener;

.field private final mToButtonDeleteHandler:Landroid/os/Handler;

.field private mToButtonDialog:Landroid/app/AlertDialog;

.field private mToButtonId:I

.field private mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

.field private mToButtonList:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/mms/ui/ToButton;",
            ">;"
        }
    .end annotation
.end field

.field private mToastForDraftSave:Z

.field private mToastHandler:Landroid/os/Handler;

.field private mTopLayout:Landroid/widget/LinearLayout;

.field private mTopPanel:Landroid/view/View;

.field private mWaitingForSubActivity:Z

.field private mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

.field private mshowDupplicatedRecipientToast:Landroid/widget/Toast;

.field private numberList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private reqReceiver:Landroid/content/BroadcastReceiver;

.field private sendAnimSet:Landroid/view/animation/AnimationSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 400
    sput-boolean v0, Lcom/android/mms/ui/ComposeMessageFragment;->isSipVisible:Z

    .line 428
    sput-boolean v0, Lcom/android/mms/ui/ComposeMessageFragment;->isComposerClosed:Z

    .line 3452
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendCompleteRun:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2119
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 320
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->numberList:Ljava/util/ArrayList;

    .line 349
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mKeepToButtonVisible:Z

    .line 358
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsAnimationEnable:Z

    .line 359
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteAnimation:Z

    .line 373
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteMode:Z

    .line 402
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->isAlreadyShown:Z

    .line 403
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->isResizingImage:Z

    .line 416
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTextOnTop:Z

    .line 422
    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteUri:Landroid/net/Uri;

    .line 423
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteLocked:Z

    .line 424
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mHasLockedMessage:Z

    .line 426
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsForwardedMessage:Z

    .line 427
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteWithAnimation:Z

    .line 431
    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mPasteEvent:Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;

    .line 432
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsNeedToAnimation:Z

    .line 441
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsTranslateMenuON:Z

    .line 442
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsOpenToButtonMenu:Z

    .line 443
    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonDialog:Landroid/app/AlertDialog;

    .line 444
    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mInvalidRecipientsDialog:Landroid/app/AlertDialog;

    .line 465
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRemoveComposer:Z

    .line 467
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->isHideCompose:Z

    .line 471
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsNewThreadOpen:Z

    .line 488
    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mshowDupplicatedRecipientToast:Landroid/widget/Toast;

    .line 490
    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMaxCharExceedToast:Landroid/widget/Toast;

    .line 493
    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mLayoutSelectorDialog:Landroid/app/AlertDialog;

    .line 528
    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$1;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsConainerHandler:Landroid/os/Handler;

    .line 626
    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$2;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMessageListItemHandler:Landroid/os/Handler;

    .line 697
    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$3;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mClipboardHandler:Landroid/os/Handler;

    .line 706
    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$4;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mListKeyListener:Landroid/view/View$OnKeyListener;

    .line 721
    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$5;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectKeyListener:Landroid/view/View$OnKeyListener;

    .line 761
    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$6;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTextViewKeyListener:Landroid/view/View$OnKeyListener;

    .line 1452
    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$12;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$12;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsWatcher:Landroid/text/TextWatcher;

    .line 1800
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.mms.PROGRESS_STATUS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mHttpProgressFilter:Landroid/content/IntentFilter;

    .line 1802
    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$13;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$13;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mHttpProgressReceiver:Landroid/content/BroadcastReceiver;

    .line 1829
    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$14;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$14;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mEditTextTouchedListener:Landroid/view/View$OnTouchListener;

    .line 2710
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->isEnter:Z

    .line 2711
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsOnScreen:Z

    .line 2910
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDraftSavedOnStop:Z

    .line 3427
    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$26;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$26;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mResetMessageRunnable:Ljava/lang/Runnable;

    .line 3454
    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->sendAnimSet:Landroid/view/animation/AnimationSet;

    .line 3458
    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->animView:Landroid/view/View;

    .line 3460
    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->lastView:Landroid/view/View;

    .line 3589
    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$31;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$31;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMessageHandler:Landroid/os/Handler;

    .line 3609
    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$32;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$32;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgAttachHandler:Landroid/os/Handler;

    .line 5556
    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$50;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$50;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTextEditorInputFilter:Landroid/text/InputFilter;

    .line 5604
    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$51;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$51;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTextEditorWatcher:Landroid/text/TextWatcher;

    .line 5672
    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$52;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$52;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectEditorWatcher:Landroid/text/TextWatcher;

    .line 6779
    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$57;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$57;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    .line 7199
    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$61;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$61;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->reqReceiver:Landroid/content/BroadcastReceiver;

    .line 8086
    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$73;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$73;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonDeleteHandler:Landroid/os/Handler;

    .line 8170
    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$74;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$74;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditorHandler:Landroid/os/Handler;

    .line 8473
    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mOnCloseListener:Lcom/android/mms/ui/OnEventListener;

    .line 8479
    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    .line 8485
    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mOnStateChangeListener:Lcom/android/mms/ui/OnEventListener;

    .line 8495
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mFlagDeletedAll:Z

    .line 8496
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsMediaPasteRunning:Z

    .line 9035
    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$78;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$78;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 2120
    if-eqz p1, :cond_0

    .line 2121
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->setIntent(Landroid/content/Intent;)V

    .line 2122
    :cond_0
    return-void
.end method

.method private AddText(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 9137
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9168
    :goto_0
    return v0

    .line 9140
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v1

    .line 9141
    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    .line 9149
    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v3

    if-lez v3, :cond_1

    if-lez v2, :cond_1

    .line 9152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9161
    :cond_1
    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9162
    invoke-direct {p0, v1, p1, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->insertText(Landroid/widget/EditText;Ljava/lang/String;Z)V

    .line 9166
    :goto_1
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "AddText..."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 9167
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AddText text="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 9168
    const/4 v0, 0x1

    goto :goto_0

    .line 9164
    :cond_2
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private AddToButtonInPanel()V
    .locals 10

    .prologue
    .line 8110
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    invoke-virtual {v9}, Lcom/android/mms/ui/ToButtonLayout;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_1

    .line 8147
    :cond_0
    return-void

    .line 8113
    :cond_1
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v9, :cond_2

    .line 8114
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v9}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    .line 8116
    :cond_2
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    invoke-virtual {v9}, Lcom/android/mms/ui/ToButtonLayout;->removeAllButtons()V

    .line 8117
    iget v9, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mScreenWidth:I

    add-int/lit8 v6, v9, -0x36

    .line 8119
    .local v6, width:I
    const/4 v7, 0x0

    .line 8120
    .local v7, x:I
    const/16 v8, 0xa

    .line 8123
    .local v8, y:I
    const/16 v1, 0x38

    .line 8129
    .local v1, listHeight:I
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v9}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/ui/ToButton;

    .line 8131
    .local v4, toButton:Lcom/android/mms/ui/ToButton;
    invoke-virtual {v4}, Lcom/android/mms/ui/ToButton;->getNumber()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/mms/data/Contact;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8133
    .local v2, name:Ljava/lang/String;
    invoke-virtual {v4, v2}, Lcom/android/mms/ui/ToButton;->setText(Ljava/lang/CharSequence;)V

    .line 8134
    invoke-virtual {v4}, Lcom/android/mms/ui/ToButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    invoke-direct {p0, v2, v9}, Lcom/android/mms/ui/ComposeMessageFragment;->GetStrPixelWidth(Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v9

    add-int/lit8 v5, v9, 0x14

    .line 8135
    .local v5, toButtonWidth:I
    add-int v9, v7, v5

    add-int/lit8 v3, v9, 0xa

    .line 8137
    .local v3, tempX:I
    if-lez v7, :cond_3

    if-le v3, v6, :cond_3

    .line 8138
    const/4 v7, 0x0

    .line 8139
    add-int v9, v7, v5

    add-int/lit8 v3, v9, 0xa

    .line 8140
    add-int/2addr v8, v1

    .line 8143
    :cond_3
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    invoke-virtual {v9, v4, v7, v8}, Lcom/android/mms/ui/ToButtonLayout;->addButton(Landroid/view/View;II)V

    .line 8145
    move v7, v3

    .line 8146
    goto :goto_0
.end method

.method private CheckValidRecipient(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .parameter "recipient"
    .parameter "recipients"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 9273
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 9305
    :goto_0
    return v3

    .line 9276
    :cond_0
    const/4 v0, 0x0

    .line 9279
    .local v0, hasInvalidRecipient:Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v5, :cond_1

    .line 9280
    const/4 v0, 0x1

    .line 9283
    :cond_1
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 9284
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientList:Ljava/util/SortedMap;

    invoke-interface {v6}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 9285
    .local v2, r:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v3, v4

    .line 9286
    goto :goto_0

    .line 9289
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #r:Ljava/lang/String;
    :cond_3
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isValidSmsAddress(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 9290
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientList:Ljava/util/SortedMap;

    invoke-interface {v6}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 9291
    .restart local v2       #r:Ljava/lang/String;
    invoke-static {p1, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v3, v4

    .line 9292
    goto :goto_0

    .line 9296
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #r:Ljava/lang/String;
    :cond_5
    const/4 v0, 0x1

    .line 9299
    :cond_6
    if-ne v0, v3, :cond_7

    move v3, v5

    .line 9300
    goto :goto_0

    .line 9302
    :cond_7
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientList:Ljava/util/SortedMap;

    iget v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, p1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9303
    iget v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientId:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientId:I

    .line 9305
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private GetStrPixelWidth(Ljava/lang/String;Landroid/graphics/Paint;)I
    .locals 2
    .parameter "str"
    .parameter "paint"

    .prologue
    .line 8157
    const/4 v0, 0x0

    .line 8158
    .local v0, ret:I
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v0, v1

    .line 8159
    return v0
.end method

.method private MakeToButtonByContactList(Lcom/android/mms/data/ContactList;Z)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const v8, 0x7f0901a9

    const/4 v7, 0x4

    const/4 v2, 0x0

    .line 7827
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 7870
    :cond_0
    :goto_0
    return-void

    .line 7830
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 7832
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 7833
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtons(Ljava/lang/String;Z)I

    move-result v3

    .line 7835
    if-eqz p2, :cond_2

    if-ne v3, v7, :cond_2

    move v3, v2

    .line 7838
    :cond_2
    const/4 v6, 0x2

    if-ne v3, v6, :cond_5

    .line 7839
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->showMaxRecipientToast()V

    .line 7853
    :cond_3
    if-lez v1, :cond_4

    .line 7854
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->UpdateToButtonPanel(Z)V

    .line 7856
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7857
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7860
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0901aa

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getResourcesString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v8}, Lcom/android/mms/ui/ComposeMessageFragment;->getResourcesString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7863
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09010f

    new-instance v2, Lcom/android/mms/ui/ComposeMessageFragment$68;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessageFragment$68;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 7841
    :cond_5
    const/4 v6, 0x3

    if-ne v3, v6, :cond_6

    .line 7842
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->showDupplicatedRecipientToast()V

    move v0, v1

    :goto_2
    move v1, v0

    .line 7851
    goto/16 :goto_1

    .line 7843
    :cond_6
    if-ne v3, v7, :cond_8

    .line 7844
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_7

    .line 7845
    const-string v3, ", "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7847
    :cond_7
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    goto :goto_2

    .line 7848
    :cond_8
    if-nez v3, :cond_9

    .line 7849
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    goto :goto_2

    :cond_9
    move v0, v1

    goto :goto_2
.end method

.method private MakeToButtons(Ljava/lang/String;Z)I
    .locals 9
    .parameter "recipient"
    .parameter "addInvalidRecipient"

    .prologue
    const/4 v7, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x3

    .line 7984
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 8083
    :goto_0
    return v5

    .line 7987
    :cond_0
    const/4 v1, 0x0

    .line 7990
    .local v1, hasInvalidRecipient:Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v8, v6, :cond_1

    .line 7991
    const/4 v1, 0x1

    .line 7994
    :cond_1
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 7995
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v8}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ToButton;

    .line 7996
    .local v0, btn:Lcom/android/mms/ui/ToButton;
    invoke-virtual {v0}, Lcom/android/mms/ui/ToButton;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v5, v6

    .line 7997
    goto :goto_0

    .line 8000
    .end local v0           #btn:Lcom/android/mms/ui/ToButton;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_3
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isValidSmsAddress(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 8001
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v8}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ToButton;

    .line 8002
    .restart local v0       #btn:Lcom/android/mms/ui/ToButton;
    invoke-virtual {v0}, Lcom/android/mms/ui/ToButton;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v5, v6

    .line 8003
    goto :goto_0

    .line 8007
    .end local v0           #btn:Lcom/android/mms/ui/ToButton;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_5
    const/4 v1, 0x1

    .line 8010
    :cond_6
    if-ne v1, v5, :cond_7

    if-nez p2, :cond_7

    move v5, v7

    .line 8011
    goto :goto_0

    .line 8014
    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v3

    .line 8015
    .local v3, recipientLimit:I
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v5}, Ljava/util/SortedMap;->size()I

    move-result v5

    if-lt v5, v3, :cond_8

    .line 8016
    const/4 v5, 0x2

    goto :goto_0

    .line 8018
    :cond_8
    new-instance v4, Lcom/android/mms/ui/ToButton;

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    iget v6, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonId:I

    invoke-direct {v4, v5, v6, p1}, Lcom/android/mms/ui/ToButton;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 8019
    .local v4, toButton:Lcom/android/mms/ui/ToButton;
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v4}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    .line 8020
    new-instance v5, Lcom/android/mms/ui/ComposeMessageFragment$69;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/ComposeMessageFragment$69;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/ToButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8026
    new-instance v5, Lcom/android/mms/ui/ComposeMessageFragment$70;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/ComposeMessageFragment$70;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/ToButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 8033
    new-instance v5, Lcom/android/mms/ui/ComposeMessageFragment$71;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/ComposeMessageFragment$71;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/ToButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 8054
    new-instance v5, Lcom/android/mms/ui/ComposeMessageFragment$72;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/ComposeMessageFragment$72;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/ToButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 8077
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    iget v6, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8078
    iget v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonId:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonId:I

    .line 8080
    if-eqz v1, :cond_9

    move v5, v7

    .line 8081
    goto/16 :goto_0

    .line 8083
    :cond_9
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method private MakeToButtonsByRecipientEditor(ZZ)Z
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 7873
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-nez v0, :cond_0

    move v0, v2

    .line 7922
    :goto_0
    return v0

    .line 7876
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7877
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    .line 7878
    goto :goto_0

    .line 7880
    :cond_1
    const-string v1, "[,;]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 7881
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setText(Ljava/lang/CharSequence;)V

    .line 7884
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 7886
    array-length v7, v5

    move v4, v3

    move v0, v3

    move v1, v3

    :goto_1
    if-ge v4, v7, :cond_2

    aget-object v8, v5, v4

    .line 7888
    invoke-static {v8}, Lcom/android/mms/data/Contact;->replaceInvalidPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 7890
    invoke-direct {p0, v9, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtons(Ljava/lang/String;Z)I

    move-result v9

    .line 7892
    const/4 v10, 0x2

    if-ne v9, v10, :cond_4

    .line 7893
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->showMaxRecipientToast()V

    .line 7910
    :cond_2
    if-lez v1, :cond_3

    .line 7911
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->UpdateToButtonPanel(Z)V

    .line 7914
    :cond_3
    const/16 v1, 0x8

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsField:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-eq v1, v4, :cond_9

    .line 7915
    if-lez v0, :cond_9

    if-eqz p2, :cond_9

    .line 7916
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->alertInvalidRecipientsPopup(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v3

    .line 7917
    goto :goto_0

    .line 7895
    :cond_4
    const/4 v10, 0x3

    if-ne v9, v10, :cond_6

    .line 7896
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->showDupplicatedRecipientToast()V

    .line 7886
    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 7897
    :cond_6
    const/4 v10, 0x4

    if-ne v9, v10, :cond_8

    .line 7898
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_7

    .line 7899
    const-string v9, ","

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7901
    :cond_7
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7903
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 7905
    :cond_8
    if-nez v9, :cond_5

    .line 7906
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    move v0, v2

    .line 7922
    goto :goto_0
.end method

.method private MakeToButtonsByString(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 7926
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7950
    :goto_0
    return-void

    .line 7929
    :cond_0
    const-string v0, "[,;]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 7931
    array-length v4, v3

    move v1, v2

    move v0, v2

    :goto_1
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    .line 7933
    invoke-static {v5}, Lcom/android/mms/data/Contact;->replaceInvalidPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 7935
    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtons(Ljava/lang/String;Z)I

    move-result v5

    .line 7936
    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 7946
    :cond_1
    if-lez v0, :cond_2

    .line 7947
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->UpdateToButtonPanel(Z)V

    .line 7949
    :cond_2
    const-string v1, "Mms/ComposeMessageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MakeToButtonsByString count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7939
    :cond_3
    const/4 v6, 0x4

    if-ne v5, v6, :cond_5

    .line 7940
    add-int/lit8 v0, v0, 0x1

    .line 7931
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 7941
    :cond_5
    if-nez v5, :cond_4

    .line 7942
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private RemoveToButton(I)V
    .locals 2
    .parameter "toButtonId"

    .prologue
    .line 8093
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->clearFocusAllToButtons()V

    .line 8095
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8097
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 8098
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->AddToButtonInPanel()V

    .line 8104
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    .line 8105
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->setRecipientsOnRecipientsEditor()V

    .line 8106
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->UpdateWorkingRecipients(Z)V

    .line 8107
    return-void

    .line 8100
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    invoke-virtual {v0}, Lcom/android/mms/ui/ToButtonLayout;->removeAllButtons()V

    .line 8101
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ToButtonLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private UpdateToButtonPanel(Z)V
    .locals 2
    .parameter "updateToButtonLayout"

    .prologue
    const/4 v1, 0x0

    .line 7802
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->setRecipientsOnRecipientsEditor()V

    .line 7803
    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->UpdateWorkingRecipients(Z)V

    .line 7805
    if-eqz p1, :cond_0

    .line 7806
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7807
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ToButtonLayout;->setVisibility(I)V

    .line 7808
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->AddToButtonInPanel()V

    .line 7812
    :cond_0
    :goto_0
    return-void

    .line 7810
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->setRecipientsInEditor()V

    goto :goto_0
.end method

.method private UpdateWorkingRecipients(Z)V
    .locals 3
    .parameter "correctAttachmentState"

    .prologue
    const/4 v2, 0x1

    .line 7815
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_1

    .line 7816
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientsEditor;->constructContactsFromInput()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setWorkingRecipients(Lcom/android/mms/data/ContactList;)V

    .line 7817
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientsEditor;->containsEmail()Z

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->setHasEmail(ZZ)V

    .line 7818
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7819
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v2}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    .line 7821
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->showSizeString(Ljava/lang/CharSequence;)V

    .line 7824
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;JZ)Lcom/android/mms/ui/MessageItem;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 226
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/ComposeMessageFragment;->getMessageItem(Ljava/lang/String;JZ)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10000(Lcom/android/mms/ui/ComposeMessageFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDraftSavedOnStop:Z

    return v0
.end method

.method static synthetic access$10002(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDraftSavedOnStop:Z

    return p1
.end method

.method static synthetic access$10100(Lcom/android/mms/ui/ComposeMessageFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsOnScreen:Z

    return v0
.end method

.method static synthetic access$10200(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->initRecipientsEditor()V

    return-void
.end method

.method static synthetic access$10300(Lcom/android/mms/ui/ComposeMessageFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->hideMessageList(Z)V

    return-void
.end method

.method static synthetic access$10400(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/ContactList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10500(Lcom/android/mms/ui/ComposeMessageFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isSubjectEditorVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$10600(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;

    return-object v0
.end method

.method static synthetic access$10702(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mFlagDeletedAll:Z

    return p1
.end method

.method static synthetic access$10800(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/widget/EditText;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 226
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ComposeMessageFragment;->insertText(Landroid/widget/EditText;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$10900(Lcom/android/mms/ui/ComposeMessageFragment;III)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 226
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ComposeMessageFragment;->isUnderLength(III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/Conversation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    return-object v0
.end method

.method static synthetic access$11000(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/data/Contact;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->updatePresence(Lcom/android/mms/data/Contact;)V

    return-void
.end method

.method static synthetic access$11100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MessageContactHeader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    return-object v0
.end method

.method static synthetic access$11200(Lcom/android/mms/ui/ComposeMessageFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->isHideCompose:Z

    return v0
.end method

.method static synthetic access$11300(Lcom/android/mms/ui/ComposeMessageFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->updateEditorSize(Z)V

    return-void
.end method

.method static synthetic access$11400(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/model/SlideshowModel;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->createAttachmentList(Lcom/android/mms/model/SlideshowModel;)V

    return-void
.end method

.method static synthetic access$11500(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->showAttachListPanel()V

    return-void
.end method

.method static synthetic access$11600(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ToButton;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->showToButtonMenuDialog(Lcom/android/mms/ui/ToButton;)V

    return-void
.end method

.method static synthetic access$11700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonDeleteHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$11800(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->setFocusOnPreToButton()V

    return-void
.end method

.method static synthetic access$11900(Lcom/android/mms/ui/ComposeMessageFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->setFocusOnNextToButton()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$12000(Lcom/android/mms/ui/ComposeMessageFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->RemoveToButton(I)V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$12102(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsOpenToButtonMenu:Z

    return p1
.end method

.method static synthetic access$12202(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$12300(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->pasteClipBoardData(Landroid/sec/clipboard/data/ClipboardData;)V

    return-void
.end method

.method static synthetic access$12400(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mClipboardHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$12500(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->deleteSelectedMessages()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/ComposeMessageFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteLocked:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteLocked:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mHasLockedMessage:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/ComposeMessageFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsAnimationEnable:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->deleteMessage()V

    return-void
.end method

.method static synthetic access$1700()Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 226
    sget-object v0, Lcom/android/mms/ui/ComposeMessageFragment;->mDelAnimProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/ComposeMessageFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectedPosition:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/ComposeMessageFragment;[I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->startDeleteAnimation([I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/ComposeMessageFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteWithAnimation:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteWithAnimation:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->resetMessage()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/mms/ui/ComposeMessageFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsForwardedMessage:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->requestClose()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/mms/ui/ComposeMessageFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->isAlreadyShown:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->isAlreadyShown:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/mms/ui/ComposeMessageFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->UpdateToButtonPanel(Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/mms/ui/ComposeMessageFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->sendMessage(Z)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->checkInputModeAndSendMessage()V

    return-void
.end method

.method static synthetic access$2902(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendConfirmDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/CharSequence;III)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 226
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/ComposeMessageFragment;->updateCounter(Ljava/lang/CharSequence;III)I

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/android/mms/ui/ComposeMessageFragment;IILandroid/net/Uri;IZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 226
    invoke-direct/range {p0 .. p6}, Lcom/android/mms/ui/ComposeMessageFragment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MessageListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/MessageItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->editMessageItem(Lcom/android/mms/ui/MessageItem;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->drawComposerPanel()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->updateEditorSize()V

    return-void
.end method

.method static synthetic access$3600(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Z)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 226
    invoke-static {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageFragment;->confirmDeleteDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Z)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->numberList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAddContactIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAddContactIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$3900(Lcom/android/mms/ui/ComposeMessageFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->recipientCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/ComposeMessageFragment;ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 226
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageFragment;->showAddAttachmentDialog(ZI)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/mms/ui/ComposeMessageFragment;ZZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 226
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtonsByRecipientEditor(ZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/android/mms/ui/ComposeMessageFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mKeepToButtonVisible:Z

    return v0
.end method

.method static synthetic access$4102(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mKeepToButtonVisible:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/ToButtonLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/util/SortedMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->AddToButtonInPanel()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->setFocusOnLastToButton()V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/mms/ui/ComposeMessageFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->toastConvertInfo(Z)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/mms/ui/ComposeMessageFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->setSendButtonText(Z)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/GreekInputHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mGreekInputHandler:Lcom/android/mms/ui/GreekInputHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/OnEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->animView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5100()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 226
    sget-object v0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendCompleteRun:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->startSendAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/mms/ui/ComposeMessageFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->startSendAnimationPrepare(I)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->lastView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->goToConversationList()V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/mms/ui/ComposeMessageFragment;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 226
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageFragment;->setSlideDuration(II)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/mms/ui/ComposeMessageFragment;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 226
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityforAddMedia(IZ)V

    return-void
.end method

.method static synthetic access$5802(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$5900(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/AddTextSelectorAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAddTextSelectorAdapter:Lcom/android/mms/ui/AddTextSelectorAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/mms/ui/ComposeMessageFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->addtext(I)V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/ChooseContactSelectorAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mChooseContactSelectorAdapter:Lcom/android/mms/ui/ChooseContactSelectorAdapter;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/mms/ui/ComposeMessageFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->chooseContact(I)V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/mms/ui/ComposeMessageFragment;ILandroid/net/Uri;ZZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 226
    invoke-direct/range {p0 .. p5}, Lcom/android/mms/ui/ComposeMessageFragment;->addMedia(ILandroid/net/Uri;ZZZ)V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/mms/ui/ComposeMessageFragment;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->getImportMediaCount(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$6500(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->getAddContactUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6600(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;ZZZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 226
    invoke-direct/range {p0 .. p5}, Lcom/android/mms/ui/ComposeMessageFragment;->addRawMedia(Landroid/net/Uri;ZZZI)V

    return-void
.end method

.method static synthetic access$6700(Lcom/android/mms/ui/ComposeMessageFragment;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6800(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;Landroid/net/Uri;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 226
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/ComposeMessageFragment;->handleCreationModeDialog(Ljava/lang/String;Landroid/net/Uri;IZ)V

    return-void
.end method

.method static synthetic access$6902(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachErrorDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;IZZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 226
    invoke-direct/range {p0 .. p5}, Lcom/android/mms/ui/ComposeMessageFragment;->addImage(Landroid/net/Uri;IZZZ)V

    return-void
.end method

.method static synthetic access$7600(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;IZZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 226
    invoke-direct/range {p0 .. p5}, Lcom/android/mms/ui/ComposeMessageFragment;->addVideo(Landroid/net/Uri;IZZZ)V

    return-void
.end method

.method static synthetic access$7700(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;IZZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 226
    invoke-direct/range {p0 .. p5}, Lcom/android/mms/ui/ComposeMessageFragment;->addAudio(Landroid/net/Uri;IZZZ)V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;Landroid/net/Uri;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 226
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/ComposeMessageFragment;->addMedia(Ljava/lang/String;Landroid/net/Uri;ZZ)V

    return-void
.end method

.method static synthetic access$7900(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgAttachHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachmentProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$8100(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->isAttachSupportedType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsConainerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$8300(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/CharSequence;II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 226
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ComposeMessageFragment;->calculateMaxTextLength(Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method static synthetic access$8400(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->showEditTextMaxCharExceedToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8500(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mBottomPanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$8600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$8700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$8800(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    return-object v0
.end method

.method static synthetic access$8900(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->showToast()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->requestFocusOnConverationList()V

    return-void
.end method

.method static synthetic access$9000(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/model/AttachmentModel;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 226
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageFragment;->attachmentListRemoveClick(Lcom/android/mms/model/AttachmentModel;I)V

    return-void
.end method

.method static synthetic access$9100(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/view/View$OnKeyListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mListKeyListener:Landroid/view/View$OnKeyListener;

    return-object v0
.end method

.method static synthetic access$9202(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mPossiblePendingNotification:Z

    return p1
.end method

.method static synthetic access$9300(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->checkPendingNotification()V

    return-void
.end method

.method static synthetic access$9400(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->startMsgListQuery()V

    return-void
.end method

.method static synthetic access$9500(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9600(Lcom/android/mms/ui/ComposeMessageFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteMode:Z

    return v0
.end method

.method static synthetic access$9700(Lcom/android/mms/ui/ComposeMessageFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteAnimation:Z

    return v0
.end method

.method static synthetic access$9702(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteAnimation:Z

    return p1
.end method

.method static synthetic access$9800(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->refreshCheckedList()V

    return-void
.end method

.method static synthetic access$9900(Lcom/android/mms/ui/ComposeMessageFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSentMessage:Z

    return v0
.end method

.method static synthetic access$9902(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSentMessage:Z

    return p1
.end method

.method private addAudio(Landroid/net/Uri;IZZZ)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 7576
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x3

    move v2, p2

    move-object v4, p1

    move v5, p5

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/data/WorkingMessage;->setAttachment(Landroid/content/ContentResolver;IILandroid/net/Uri;ZZZ)I

    move-result v1

    .line 7578
    const v2, 0x7f0900db

    const/16 v4, 0xe

    move-object v0, p0

    move-object v3, p1

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/ComposeMessageFragment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    .line 7580
    return-void
.end method

.method private final addCallAndContactMenuItems(Landroid/view/ContextMenu;Lcom/android/mms/ui/ComposeMessageFragment$MsgListMenuClickListener;Lcom/android/mms/ui/MessageItem;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1577
    invoke-virtual {p3}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 1578
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p3, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ": "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1580
    :cond_0
    iget-object v1, p3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1582
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1583
    const/16 v0, 0xf

    invoke-static {v1, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 1584
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v0

    const-class v4, Landroid/text/style/URLSpan;

    invoke-virtual {v1, v3, v0, v4}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->extractUris([Landroid/text/style/URLSpan;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1587
    :cond_1
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1588
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1590
    :goto_1
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1591
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1594
    :cond_2
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 1595
    const/4 v1, 0x0

    .line 1596
    if-ltz v5, :cond_8

    .line 1597
    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1598
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 1601
    :goto_2
    const-string v5, "mailto"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1602
    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->haveEmailContact(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    .line 1606
    :goto_3
    if-eqz v0, :cond_1

    .line 1607
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1608
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v6, 0x7f090008

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "%s"

    invoke-virtual {v5, v6, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1610
    const/16 v5, 0x7f

    invoke-interface {p1, v3, v5, v3, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, p2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    move v0, v3

    .line 1602
    goto :goto_3

    .line 1603
    :cond_4
    const-string v5, "tel"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1604
    invoke-static {v1}, Lcom/android/mms/data/Contact;->isNumberInContacts(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v2

    goto :goto_3

    :cond_5
    move v0, v3

    goto :goto_3

    .line 1614
    :cond_6
    return-void

    :cond_7
    move v0, v3

    goto :goto_3

    :cond_8
    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2
.end method

.method private addDeleteSoftKey()V
    .locals 3

    .prologue
    .line 9083
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    if-eqz v0, :cond_0

    .line 9124
    :goto_0
    return-void

    .line 9086
    :cond_0
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    .line 9088
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f090098

    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->makeText(Landroid/content/Context;I)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 9089
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->addView(Landroid/view/View;)V

    .line 9090
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$79;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageFragment$79;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9096
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mListKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 9098
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f09006a

    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->makeText(Landroid/content/Context;I)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSoftkeyRight:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 9099
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSoftkeyRight:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->addView(Landroid/view/View;)V

    .line 9100
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    .line 9101
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSoftkeyRight:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$80;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageFragment$80;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9107
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSoftkeyRight:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$81;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageFragment$81;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 9123
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTopLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private addImage(Landroid/net/Uri;IZZZ)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 7480
    const-string v0, "Mms:app"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7481
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addImage: uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7483
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x1

    move v2, p2

    move-object v4, p1

    move v5, p5

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/data/WorkingMessage;->setAttachment(Landroid/content/ContentResolver;IILandroid/net/Uri;ZZZ)I

    move-result v1

    .line 7486
    const/4 v0, -0x4

    if-eq v1, v0, :cond_1

    const/4 v0, -0x2

    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Lcom/android/mms/ui/MessageUtils;->isAnimatedImage(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 7490
    :cond_1
    if-nez p4, :cond_2

    .line 7491
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$64;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageFragment$64;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 7499
    :cond_2
    new-instance v0, Lcom/android/mms/ui/UriImage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p1}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 7500
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageWidth()I

    move-result v1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageHeight()I

    move-result v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/UriImage;->getResizedImageAsPart(III)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    .line 7503
    invoke-virtual {p0, v0, p5, p4}, Lcom/android/mms/ui/ComposeMessageFragment;->resizeImage(Lcom/google/android/mms/pdu/PduPart;ZZ)V

    .line 7521
    :goto_0
    return-void

    .line 7507
    :cond_3
    const/4 v0, -0x8

    if-ne v1, v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Lcom/android/mms/ui/MessageUtils;->isAnimatedImage(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 7511
    new-instance v0, Lcom/android/mms/ui/UriImage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p1}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 7512
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getRotateImageAsPart()Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    .line 7513
    invoke-virtual {p0, v0, p5, p4}, Lcom/android/mms/ui/ComposeMessageFragment;->resizeImage(Lcom/google/android/mms/pdu/PduPart;ZZ)V

    goto :goto_0

    .line 7517
    :cond_4
    const v2, 0x7f0900dc

    const/16 v4, 0xa

    move-object v0, p0

    move-object v3, p1

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/ComposeMessageFragment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    goto :goto_0
.end method

.method private addMedia(ILandroid/net/Uri;ZZZ)V
    .locals 9
    .parameter "type"
    .parameter "fileUri"
    .parameter "append"
    .parameter "sendMultiple"
    .parameter "saveMms"

    .prologue
    .line 7617
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v2

    .line 7619
    .local v2, location:I
    packed-switch p1, :pswitch_data_0

    .line 7644
    :goto_0
    :pswitch_0
    if-nez p5, :cond_0

    if-nez p4, :cond_1

    .line 7645
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7646
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 7647
    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_1

    .line 7648
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    .line 7652
    :cond_1
    return-void

    .line 7621
    :pswitch_1
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p2

    move v4, p4

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageFragment;->addImage(Landroid/net/Uri;IZZZ)V

    goto :goto_0

    .line 7624
    :pswitch_2
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p2

    move v4, p4

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageFragment;->addVideo(Landroid/net/Uri;IZZZ)V

    goto :goto_0

    .line 7627
    :pswitch_3
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p2

    move v4, p4

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageFragment;->addAudio(Landroid/net/Uri;IZZZ)V

    goto :goto_0

    .line 7630
    :pswitch_4
    const/4 v6, 0x0

    const/16 v8, 0x14

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    move v7, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/mms/ui/ComposeMessageFragment;->addRawMedia(Landroid/net/Uri;ZZZI)V

    goto :goto_0

    .line 7633
    :pswitch_5
    const/4 v6, 0x0

    const/16 v8, 0x1a

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    move v7, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/mms/ui/ComposeMessageFragment;->addRawMedia(Landroid/net/Uri;ZZZI)V

    goto :goto_0

    .line 7636
    :pswitch_6
    const/4 v6, 0x1

    const/16 v8, 0x1b

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    move v7, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/mms/ui/ComposeMessageFragment;->addRawMedia(Landroid/net/Uri;ZZZI)V

    goto :goto_0

    .line 7639
    :pswitch_7
    const/4 v6, 0x1

    const/16 v8, 0x21

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    move v7, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/mms/ui/ComposeMessageFragment;->addRawMedia(Landroid/net/Uri;ZZZI)V

    goto :goto_0

    .line 7619
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private addMedia(Ljava/lang/String;Landroid/net/Uri;ZZ)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 7655
    if-eqz p2, :cond_0

    .line 7656
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getAvailableStorage()J

    move-result-wide v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 7658
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$66;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageFragment$66;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 7693
    :cond_0
    :goto_0
    return-void

    .line 7667
    :cond_1
    const-string v0, "image/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7668
    const/4 v1, 0x1

    .line 7688
    :goto_1
    if-eqz v1, :cond_0

    const/4 v0, 0x4

    if-eq v1, v0, :cond_0

    const/4 v0, 0x5

    if-eq v1, v0, :cond_0

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 7689
    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageFragment;->addMedia(ILandroid/net/Uri;ZZZ)V

    goto :goto_0

    .line 7669
    :cond_2
    const-string v0, "video/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7670
    const/4 v1, 0x2

    goto :goto_1

    .line 7671
    :cond_3
    const-string v0, "audio/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7672
    const/4 v1, 0x3

    goto :goto_1

    .line 7673
    :cond_4
    const-string v0, "text/x-vCard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7674
    const/4 v1, 0x6

    goto :goto_1

    .line 7675
    :cond_5
    const-string v0, "text/x-vCalendar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7676
    const/4 v1, 0x7

    goto :goto_1

    .line 7677
    :cond_6
    const-string v0, "text/x-vNote"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 7678
    const/16 v1, 0x8

    goto :goto_1

    .line 7679
    :cond_7
    const-string v0, "text/x-vtodo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 7680
    const/16 v1, 0x9

    goto :goto_1

    .line 7684
    :cond_8
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 7685
    const v1, 0x7f090183

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 7686
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v1, v0, v5}, Lcom/android/mms/ui/ComposeMessageFragment;->threadSafeToast(Landroid/app/Activity;Ljava/lang/String;I)V

    move v1, v5

    goto :goto_1
.end method

.method private addPositionBasedMenuItems(Landroid/view/ContextMenu;Landroid/view/View;Lcom/android/mms/ui/MessageListItem;)V
    .locals 0
    .parameter "menu"
    .parameter "v"
    .parameter "msgListItem"

    .prologue
    .line 1502
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ComposeMessageFragment;->addUriSpecificMenuItems(Landroid/view/ContextMenu;Landroid/view/View;Lcom/android/mms/ui/MessageListItem;)V

    .line 1503
    return-void
.end method

.method private addRawMedia(Landroid/net/Uri;ZZZI)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v9, 0x7f09015d

    const/4 v8, 0x0

    .line 7583
    const-string v0, "Mms:app"

    invoke-static {v0, v8}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7584
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addRawMedia: append="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7586
    :cond_0
    const/4 v1, -0x1

    .line 7588
    if-eqz p3, :cond_1

    .line 7589
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->checkCRForRawAttachment()V

    .line 7591
    :cond_1
    const/16 v0, 0x1c

    if-eq v0, p5, :cond_2

    const/16 v0, 0x14

    if-eq v0, p5, :cond_2

    const/16 v0, 0x1a

    if-eq v0, p5, :cond_2

    const/16 v0, 0x1b

    if-eq v0, p5, :cond_2

    const/16 v0, 0x21

    if-ne v0, p5, :cond_3

    .line 7595
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v2

    .line 7596
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x5

    const/4 v6, 0x0

    move-object v4, p1

    move v5, p2

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/data/WorkingMessage;->setAttachment(Landroid/content/ContentResolver;IILandroid/net/Uri;ZZZ)I

    move-result v1

    .line 7599
    :cond_3
    const v2, 0x7f09015d

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p5

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/ComposeMessageFragment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    .line 7600
    if-nez v1, :cond_4

    .line 7601
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$65;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageFragment$65;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7612
    :cond_4
    :goto_0
    return-void

    .line 7608
    :catch_0
    move-exception v0

    .line 7609
    const/4 v1, -0x5

    move-object v0, p0

    move v2, v9

    move-object v3, p1

    move v4, p5

    move v5, v8

    move v6, p2

    .line 7610
    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/ComposeMessageFragment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    goto :goto_0
.end method

.method private addRecipientsListener()V
    .locals 0

    .prologue
    .line 7173
    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 7174
    return-void
.end method

.method private addUriSpecificMenuItems(Landroid/view/ContextMenu;Landroid/view/View;Lcom/android/mms/ui/MessageListItem;)V
    .locals 10
    .parameter "menu"
    .parameter "v"
    .parameter "msgListItem"

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 1561
    invoke-direct {p0, p3}, Lcom/android/mms/ui/ComposeMessageFragment;->getSelectedUriFromMessageList(Lcom/android/mms/ui/MessageListItem;)Landroid/net/Uri;

    move-result-object v9

    .line 1563
    .local v9, uri:Landroid/net/Uri;
    if-eqz v9, :cond_0

    .line 1564
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1565
    .local v6, intent:Landroid/content/Intent;
    const-string v0, "android.intent.category.SELECTED_ALTERNATIVE"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1566
    new-instance v4, Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {v4, v0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v0, p1

    move v2, v1

    move v3, v1

    move v7, v1

    move-object v8, v5

    invoke-interface/range {v0 .. v8}, Landroid/view/ContextMenu;->addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I

    .line 1569
    .end local v6           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private addVideo(Landroid/net/Uri;IZZZ)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 7566
    if-eqz p1, :cond_0

    .line 7567
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x2

    move v2, p2

    move-object v4, p1

    move v5, p5

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/data/WorkingMessage;->setAttachment(Landroid/content/ContentResolver;IILandroid/net/Uri;ZZZ)I

    move-result v1

    .line 7569
    const v2, 0x7f0900dd

    const/16 v4, 0xc

    move-object v0, p0

    move-object v3, p1

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/ComposeMessageFragment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    .line 7572
    :cond_0
    return-void
.end method

.method private addtext(I)V
    .locals 4
    .parameter

    .prologue
    .line 4337
    packed-switch p1, :pswitch_data_0

    .line 4383
    :goto_0
    return-void

    .line 4339
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.INTERACTION_LIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4340
    const-string v1, "additional"

    const-string v2, "namecard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4341
    const/16 v1, 0x1e

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 4345
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.INTERACTION_LIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4346
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4347
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4349
    const/16 v1, 0x1f

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4350
    :catch_0
    move-exception v0

    .line 4351
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4352
    const v1, 0x7f09015a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 4353
    const v1, 0x7f02005e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 4354
    const v1, 0x7f09015b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 4355
    const v1, 0x7f090069

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4356
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 4361
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4362
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.app.memo"

    const-string v3, "com.sec.android.app.memo.MemoAddTextActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4363
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4364
    const-string v1, "text/memo_string"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4365
    const/16 v1, 0x20

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 4369
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4370
    const-string v1, "text/tasks_string"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4371
    const/16 v1, 0x22

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 4375
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4376
    const-string v1, "image_location"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4377
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/android/mms/ui/SelectMapActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 4378
    const/16 v1, 0x23

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 4337
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private attachmentListRemoveClick(Lcom/android/mms/model/AttachmentModel;I)V
    .locals 2
    .parameter "attach"
    .parameter "position"

    .prologue
    .line 6017
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6018
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->handleAttachmentRemoved()V

    .line 6046
    :goto_0
    return-void

    .line 6021
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/model/SlideshowModel;->removeAttachment(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6023
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/mms/model/SlideshowModel;->removeAttachment(Ljava/lang/Object;I)Z

    .line 6026
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V

    .line 6028
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v0

    if-nez v0, :cond_3

    .line 6029
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    .line 6030
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6031
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->checkSubjectMargin()V

    .line 6045
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListAdapter:Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 6033
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->createAttachmentList(Lcom/android/mms/model/SlideshowModel;)V

    goto :goto_1
.end method

.method private bindToContactHeaderWidget(Lcom/android/mms/data/ContactList;)V
    .locals 3
    .parameter "list"

    .prologue
    .line 1875
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindToContactHeaderWidget(),list="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1881
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1882
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageContactHeader;->setVisibility(I)V

    .line 1884
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isDeleteMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1885
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageContactHeader;->bindContactHeader(Lcom/android/mms/data/ContactList;)Z

    .line 1889
    :cond_0
    :goto_0
    return-void

    .line 1887
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageContactHeader;->setVisibility(I)V

    goto :goto_0
.end method

.method private buildAddAddressToContactMenuItem(Landroid/view/Menu;)V
    .locals 8
    .parameter

    .prologue
    const v7, 0x7f090067

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 3844
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    .line 3846
    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 3847
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->canAddToContacts(Lcom/android/mms/data/Contact;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3848
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    .line 3851
    :cond_0
    if-ne v1, v6, :cond_3

    .line 3852
    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 3853
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->canAddToContacts(Lcom/android/mms/data/Contact;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3854
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 3855
    const/16 v1, 0x7f

    invoke-interface {p1, v2, v1, v2, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020066

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 3866
    :cond_2
    :goto_2
    return-void

    .line 3862
    :cond_3
    if-le v1, v6, :cond_2

    .line 3863
    const/16 v0, 0x82

    invoke-interface {p1, v2, v0, v2, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2020137

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method private calcAttachListHeight(Landroid/widget/ListView;)I
    .locals 5
    .parameter "attachList"

    .prologue
    .line 6004
    invoke-virtual {p1}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v0

    .line 6005
    .local v0, dividerHeight:I
    const/16 v2, 0x44

    .line 6009
    .local v2, itemHeight:I
    invoke-virtual {p1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    .line 6012
    .local v1, itemCount:I
    add-int v4, v2, v0

    mul-int/2addr v4, v1

    add-int/lit8 v3, v4, -0x1

    .line 6013
    .local v3, result:I
    return v3
.end method

.method private calculateMaxTextLength(Ljava/lang/CharSequence;II)I
    .locals 9
    .parameter "text"
    .parameter "start"
    .parameter "count"

    .prologue
    const/4 v8, 0x0

    .line 826
    const/4 v2, 0x0

    .line 827
    .local v2, params:[I
    const-string v4, ""

    .line 828
    .local v4, pre:Ljava/lang/String;
    if-lez p2, :cond_0

    .line 829
    invoke-interface {p1, v8, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 831
    :cond_0
    add-int v3, p2, p3

    .line 832
    .local v3, postPos:I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-le v6, v3, :cond_1

    .line 833
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-interface {p1, v3, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 835
    :cond_1
    invoke-interface {p1, p2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 837
    .local v0, changed:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p3, :cond_4

    .line 838
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v1, 0x1

    invoke-interface {v0, v8, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 840
    .local v5, test:Ljava/lang/String;
    sget v6, Lcom/android/mms/ui/ComposeMessageFragment;->mEncodingType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 841
    invoke-static {v5, v8}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v2

    .line 845
    :goto_1
    aget v6, v2, v8

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsToMmsTextThreshold()I

    move-result v7

    if-lt v6, v7, :cond_3

    .line 846
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .line 850
    .end local v5           #test:Ljava/lang/String;
    :goto_2
    return v6

    .line 843
    .restart local v5       #test:Ljava/lang/String;
    :cond_2
    sget v6, Lcom/android/mms/ui/ComposeMessageFragment;->mEncodingType:I

    invoke-static {v5, v8, v6}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v2

    goto :goto_1

    .line 837
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 850
    .end local v5           #test:Ljava/lang/String;
    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    goto :goto_2
.end method

.method public static cancelFailedDownloadNotification(Landroid/content/Intent;Landroid/content/Context;)Z
    .locals 1
    .parameter "intent"
    .parameter "context"

    .prologue
    .line 2105
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->isFailedToDownload(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2107
    const/16 v0, 0x213

    invoke-static {p1, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 2109
    const/4 v0, 0x1

    .line 2111
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static cancelFailedToDeliverNotification(Landroid/content/Intent;Landroid/content/Context;)Z
    .locals 1
    .parameter "intent"
    .parameter "context"

    .prologue
    .line 2095
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->isFailedToDeliver(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2097
    const/16 v0, 0x315

    invoke-static {p1, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 2099
    const/4 v0, 0x1

    .line 2101
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkCRForRawAttachment()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 5011
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/model/CarrierContentRestriction;->getMmsCreationMode(Landroid/content/Context;)I

    move-result v0

    .line 5013
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    .line 5015
    :cond_0
    new-instance v0, Lcom/android/mms/ContentRestrictionException;

    const-string v1, "Raw Attachment"

    invoke-direct {v0, v1}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5017
    :cond_1
    return-void
.end method

.method private checkInputModeAndSendMessage()V
    .locals 3

    .prologue
    .line 1152
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "checkInputModeAndSendMessage()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getInputmode(Landroid/content/Context;)I

    move-result v0

    .line 1156
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1157
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->hasNonGSMCharaterExceptKorean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1158
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$SendThreadListener;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/ComposeMessageFragment$SendThreadListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->showInputMothodConfirmDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1164
    :goto_0
    return-void

    .line 1163
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->sendMessage(Z)V

    goto :goto_0
.end method

.method private checkPendingNotification()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 6800
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    .line 6801
    const-string v2, "Mms/ComposeMessageFragment"

    const-string v3, "getView() returns null !"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6802
    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mPossiblePendingNotification:Z

    .line 6813
    :cond_0
    :goto_0
    return-void

    .line 6806
    :cond_1
    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mPossiblePendingNotification:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->hasWindowFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 6807
    .local v0, flag:Z
    :goto_1
    const-string v2, "Mms/ComposeMessageFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkPendingNotification(),flag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6809
    if-eqz v0, :cond_0

    .line 6810
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->markAsRead()V

    .line 6811
    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mPossiblePendingNotification:Z

    goto :goto_0

    .end local v0           #flag:Z
    :cond_2
    move v0, v1

    .line 6806
    goto :goto_1
.end method

.method private checkSubjectMargin()V
    .locals 2

    .prologue
    .line 6058
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-nez v1, :cond_0

    .line 6070
    :goto_0
    return-void

    .line 6061
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 6064
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 6065
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 6069
    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 6067
    :cond_1
    const/4 v1, -0x8

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_1
.end method

.method private chooseContact(I)V
    .locals 4
    .parameter "type"

    .prologue
    .line 4388
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    .line 4389
    .local v1, contactList:Lcom/android/mms/data/ContactList;
    invoke-virtual {v1, p1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 4390
    .local v0, c:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 4391
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivity(Landroid/content/Intent;)V

    .line 4393
    return-void
.end method

.method private clearFocusAllToButtons()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 8187
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v3}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    .line 8189
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v3}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 8190
    .local v1, id:I
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/ToButton;

    .line 8192
    .local v2, toButton:Lcom/android/mms/ui/ToButton;
    invoke-virtual {v2}, Lcom/android/mms/ui/ToButton;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8193
    invoke-virtual {v2, v5}, Lcom/android/mms/ui/ToButton;->setFocusable(Z)V

    .line 8194
    invoke-virtual {v2, v5}, Lcom/android/mms/ui/ToButton;->setFocusableInTouchMode(Z)V

    goto :goto_0

    .line 8197
    .end local v1           #id:I
    .end local v2           #toButton:Lcom/android/mms/ui/ToButton;
    :cond_1
    return-void
.end method

.method private static confirmDeleteDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Z)Landroid/app/AlertDialog;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6198
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6199
    const v0, 0x7f09008f

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 6200
    const v0, 0x1080027

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 6201
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 6202
    if-eqz p2, :cond_0

    const v0, 0x7f090092

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 6204
    const v0, 0x104000a

    invoke-virtual {v1, v0, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6205
    const/high16 v0, 0x104

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6206
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 6202
    :cond_0
    const v0, 0x7f090091

    goto :goto_0
.end method

.method public static confirmDeleteMessageDialog(Lcom/android/mms/ui/ComposeMessageFragment$DeleteMessageListener;ZZLandroid/content/Context;I)Landroid/app/AlertDialog;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 6169
    const v0, 0x7f03000f

    invoke-static {p3, v0, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 6170
    const v0, 0x7f080048

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 6171
    const v1, 0x7f080047

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 6172
    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(I)V

    .line 6174
    if-nez p2, :cond_0

    .line 6175
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 6185
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6186
    if-eqz p1, :cond_1

    const v0, 0x7f090090

    :goto_1
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 6177
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 6178
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ComposeMessageFragment$DeleteMessageListener;->setDeleteLockedMessage(Z)V

    .line 6179
    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$56;

    invoke-direct {v1, p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment$56;-><init>(Lcom/android/mms/ui/ComposeMessageFragment$DeleteMessageListener;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 6186
    :cond_1
    const v0, 0x7f09008f

    goto :goto_1
.end method

.method private confirmSendMessageIfNeeded()V
    .locals 9

    .prologue
    const v8, 0x7f090069

    const v7, 0x7f09004f

    const/4 v6, 0x0

    const v5, 0x1080027

    const/4 v4, 0x1

    .line 1168
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v1

    .line 1172
    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1174
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v3, "confirmSendMessageIfNeeded()"

    invoke-static {v0, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1207
    invoke-static {}, Lcom/android/mms/MmsConfig;->getInternational_SMS_Guard()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1208
    if-eqz v1, :cond_1

    .line 1209
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->checkInputModeAndSendMessage()V

    .line 1346
    :cond_0
    :goto_0
    return-void

    .line 1214
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->checkInputModeAndSendMessage()V

    goto :goto_0

    .line 1219
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->checkInputModeAndSendMessage()V

    .line 1220
    const-string v0, "CRO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v4, :cond_3

    const-string v0, "TNL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v4, :cond_3

    const-string v0, "MAX"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v4, :cond_3

    const-string v0, "TRG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v4, :cond_3

    const-string v0, "DTM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v4, :cond_3

    const-string v0, "TMZ"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v4, :cond_3

    const-string v0, "MBM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v4, :cond_3

    const-string v0, "TPL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v4, :cond_0

    .line 1224
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isReplyAllowedForThread()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1225
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901ac

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$CancelSendingListener;

    invoke-direct {v1, p0, v6}, Lcom/android/mms/ui/ComposeMessageFragment$CancelSendingListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ComposeMessageFragment$1;)V

    invoke-virtual {v0, v8, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 1242
    :cond_4
    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isEmptySMSCAddress(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1243
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901ab

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$CancelSendingListener;

    invoke-direct {v1, p0, v6}, Lcom/android/mms/ui/ComposeMessageFragment$CancelSendingListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ComposeMessageFragment$1;)V

    invoke-virtual {v0, v8, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1257
    :cond_5
    const/4 v0, 0x0

    .line 1259
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v3, :cond_6

    .line 1260
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->hasInvalidRecipient(Z)Z

    move-result v0

    .line 1263
    :cond_6
    if-eqz v0, :cond_8

    .line 1264
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->hasValidRecipient(Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1266
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendConfirmDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 1268
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->formatInvalidNumbers(Z)Ljava/lang/String;

    move-result-object v0

    .line 1269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f09004e

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getResourcesString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0901a9

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getResourcesString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1273
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1275
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0901a8

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f09006f

    new-instance v3, Lcom/android/mms/ui/ComposeMessageFragment$7;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/ComposeMessageFragment$7;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f09006a

    new-instance v3, Lcom/android/mms/ui/ComposeMessageFragment$CancelSendingListener;

    invoke-direct {v3, p0, v6}, Lcom/android/mms/ui/ComposeMessageFragment$CancelSendingListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ComposeMessageFragment$1;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1286
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendConfirmDialog:Landroid/app/AlertDialog;

    .line 1287
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendConfirmDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$8;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageFragment$8;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1292
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1295
    :cond_7
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendConfirmDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 1297
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1298
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090050

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/mms/ui/ComposeMessageFragment$CancelSendingListener;

    invoke-direct {v2, p0, v6}, Lcom/android/mms/ui/ComposeMessageFragment$CancelSendingListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ComposeMessageFragment$1;)V

    invoke-virtual {v1, v8, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1303
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendConfirmDialog:Landroid/app/AlertDialog;

    .line 1304
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendConfirmDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$9;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageFragment$9;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1309
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1321
    :cond_8
    if-nez v1, :cond_a

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isEmptySMSCAddress(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "CRO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v4, :cond_9

    const-string v0, "TNL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v4, :cond_9

    const-string v0, "MAX"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v4, :cond_9

    const-string v0, "TRG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v4, :cond_9

    const-string v0, "DTM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v4, :cond_9

    const-string v0, "TMZ"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v4, :cond_9

    const-string v0, "MBM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v4, :cond_9

    const-string v0, "TPL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v4, :cond_a

    .line 1324
    :cond_9
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901ab

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$CancelSendingListener;

    invoke-direct {v1, p0, v6}, Lcom/android/mms/ui/ComposeMessageFragment$CancelSendingListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ComposeMessageFragment$1;)V

    invoke-virtual {v0, v8, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1332
    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getInternational_SMS_Guard()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1333
    if-eqz v1, :cond_b

    .line 1334
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->checkInputModeAndSendMessage()V

    goto/16 :goto_0

    .line 1339
    :cond_b
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->checkInputModeAndSendMessage()V

    goto/16 :goto_0

    .line 1343
    :cond_c
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->checkInputModeAndSendMessage()V

    goto/16 :goto_0
.end method

.method private createAttachmentList(Lcom/android/mms/model/SlideshowModel;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 5972
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "createAttachmentList()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5974
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v1, 0x7f08001f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 5975
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 5977
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsList()Ljava/util/ArrayList;

    move-result-object v1

    .line 5978
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 5981
    new-instance v2, Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v4, 0x7f030007

    invoke-direct {v2, p0, v3, v4, v1}, Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListAdapter:Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;

    .line 5986
    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 5987
    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 5988
    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setClickable(Z)V

    .line 5990
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListAdapter:Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5991
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->updateAttachListHeight(Landroid/widget/ListView;)V

    .line 5992
    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 5993
    return-void
.end method

.method public static createIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 3
    .parameter "context"
    .parameter "threadId"

    .prologue
    .line 7181
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7182
    .local v0, intent:Landroid/content/Intent;
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    .line 7183
    invoke-static {p1, p2}, Lcom/android/mms/data/Conversation;->getUri(J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 7185
    :cond_0
    return-object v0
.end method

.method public static createIntent(Landroid/content/Context;JZ)Landroid/content/Intent;
    .locals 3
    .parameter "context"
    .parameter "threadId"
    .parameter "isConversationDeleteMode"

    .prologue
    .line 7190
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7191
    .local v0, intent:Landroid/content/Intent;
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    .line 7192
    invoke-static {p1, p2}, Lcom/android/mms/data/Conversation;->getUri(J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 7193
    const-string v1, "conversationDeleteMode"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7195
    :cond_0
    return-object v0
.end method

.method private deleteDraft()V
    .locals 2

    .prologue
    .line 2758
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-static {v0, p0, v1}, Lcom/android/mms/data/WorkingMessage;->loadDraft(Landroid/content/Context;Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/WorkingMessage;

    .line 2759
    return-void
.end method

.method private deleteMessage()V
    .locals 17

    .prologue
    .line 8792
    const-string v1, "Mms/ComposeMessageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteMessage() mDeleteUri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 8794
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteUri:Landroid/net/Uri;

    if-eqz v1, :cond_2

    .line 8795
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;

    const/16 v2, 0x25e4

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteLocked:Z

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 8854
    :cond_0
    :goto_1
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteWithAnimation:Z

    .line 8855
    return-void

    .line 8795
    :cond_1
    const-string v5, "locked=0"

    goto :goto_0

    .line 8798
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListAdapter;->getCheckedCount()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 8799
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mHasLockedMessage:Z

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteLocked:Z

    if-eqz v1, :cond_4

    .line 8800
    :cond_3
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/mms/ui/ConversationListFragment;->mIsEmptyThread:Z

    .line 8802
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v14

    .line 8803
    .local v14, threadId:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;

    const/16 v2, 0x70a

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteLocked:Z

    const/4 v4, 0x0

    new-instance v5, Lcom/android/mms/ui/DeleteInfo;

    const/4 v6, 0x1

    invoke-direct {v5, v14, v15, v6}, Lcom/android/mms/ui/DeleteInfo;-><init>(JZ)V

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/mms/data/Conversation;->startDelete(Landroid/content/AsyncQueryHandler;IZZLcom/android/mms/ui/DeleteInfo;Z)V

    goto :goto_1

    .line 8807
    .end local v14           #threadId:J
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v7

    .line 8812
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 8814
    .local v8, deleteCount:I
    if-eqz v7, :cond_8

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 8816
    :cond_6
    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 8817
    .local v12, msgId:J
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 8818
    .local v16, type:Ljava/lang/String;
    const/16 v1, 0x15

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 8820
    .local v9, groupId:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v0, v16

    invoke-virtual {v1, v12, v13, v0}, Lcom/android/mms/ui/MessageListAdapter;->isCheckedMessageId(JLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 8847
    :cond_7
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_6

    .line 8850
    .end local v9           #groupId:J
    .end local v12           #msgId:J
    .end local v16           #type:Ljava/lang/String;
    :cond_8
    if-nez v8, :cond_0

    .line 8851
    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->setDeleteModeLayout(ZZ)V

    goto/16 :goto_1

    .line 8823
    .restart local v9       #groupId:J
    .restart local v12       #msgId:J
    .restart local v16       #type:Ljava/lang/String;
    :cond_9
    const/16 v1, 0x14

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_b

    const/4 v11, 0x1

    .line 8825
    .local v11, locked:Z
    :goto_3
    if-eqz v11, :cond_a

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteLocked:Z

    if-eqz v1, :cond_7

    .line 8828
    :cond_a
    add-int/lit8 v8, v8, 0x1

    .line 8829
    const-string v1, "mms"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 8830
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 8844
    .local v4, deleteUri:Landroid/net/Uri;
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;

    const/16 v2, 0x25e4

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteLocked:Z

    if-eqz v5, :cond_f

    const/4 v5, 0x0

    :goto_5
    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_2

    .line 8823
    .end local v4           #deleteUri:Landroid/net/Uri;
    .end local v11           #locked:Z
    :cond_b
    const/4 v11, 0x0

    goto :goto_3

    .line 8831
    .restart local v11       #locked:Z
    :cond_c
    const-string v1, "wpm"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 8832
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->WAP_PUSH_MESSAGE_BY_ID_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .restart local v4       #deleteUri:Landroid/net/Uri;
    goto :goto_4

    .line 8836
    .end local v4           #deleteUri:Landroid/net/Uri;
    :cond_d
    cmp-long v1, v12, v9

    if-nez v1, :cond_e

    .line 8837
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->SMS_GROUP_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .restart local v4       #deleteUri:Landroid/net/Uri;
    goto :goto_4

    .line 8840
    .end local v4           #deleteUri:Landroid/net/Uri;
    :cond_e
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .restart local v4       #deleteUri:Landroid/net/Uri;
    goto :goto_4

    .line 8844
    :cond_f
    const-string v5, "locked=0"

    goto :goto_5
.end method

.method private deleteSelectedMessages()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 8644
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "deleteSelectedMessages()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 8646
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    if-nez v0, :cond_0

    .line 8686
    :goto_0
    return-void

    .line 8656
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->getCount()I

    move-result v5

    move v4, v3

    .line 8663
    :goto_1
    if-ge v4, v5, :cond_5

    .line 8664
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/MessageListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 8665
    if-nez v0, :cond_2

    .line 8663
    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 8668
    :cond_2
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 8669
    const/16 v1, 0x14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    .line 8670
    :goto_2
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 8672
    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v1, v6, v7, v0}, Lcom/android/mms/ui/MessageListAdapter;->isCheckedMessageId(JLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 8678
    :goto_3
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v1}, Landroid/content/DialogInterface;->dismiss()V

    .line 8679
    new-instance v4, Lcom/android/mms/ui/ComposeMessageFragment$DeleteMessageListener;

    const/4 v1, 0x0

    invoke-direct {v4, p0, v1, v0}, Lcom/android/mms/ui/ComposeMessageFragment$DeleteMessageListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;Z)V

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListAdapter;->getCheckedCount()I

    move-result v1

    if-ne v1, v2, :cond_4

    const v1, 0x7f090091

    :goto_4
    invoke-static {v4, v3, v0, v5, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->confirmDeleteMessageDialog(Lcom/android/mms/ui/ComposeMessageFragment$DeleteMessageListener;ZZLandroid/content/Context;I)Landroid/app/AlertDialog;

    move-result-object v0

    .line 8683
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 8684
    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    goto :goto_0

    :cond_3
    move v1, v3

    .line 8669
    goto :goto_2

    .line 8679
    :cond_4
    const v1, 0x7f0901bb

    goto :goto_4

    :cond_5
    move v0, v3

    goto :goto_3
.end method

.method private dialRecipient()V
    .locals 3

    .prologue
    .line 3657
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/mms/ui/MessageUtils;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    .line 3658
    return-void
.end method

.method private disableDeleteModeLayout()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 8623
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteMode:Z

    .line 8624
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8625
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    if-eqz v0, :cond_0

    .line 8626
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    .line 8628
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteMode:Z

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->setDeleteMode(Z)V

    .line 8629
    return-void
.end method

.method private dismissAllDialog()V
    .locals 1

    .prologue
    .line 9208
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSmileyDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 9209
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSmileyDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 9210
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 9211
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 9212
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 9213
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 9214
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 9215
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 9216
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mInvalidRecipientsDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    .line 9217
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mInvalidRecipientsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 9219
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDiscardDraftConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5

    .line 9220
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDiscardDraftConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 9222
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_6

    .line 9223
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 9225
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v0, :cond_7

    .line 9226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 9227
    :cond_7
    return-void
.end method

.method private drawComposerPanel()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 5411
    const-string v2, "Mms/ComposeMessageFragment"

    const-string v3, "drawComposerPanel()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5413
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->isCbSms()Z

    move-result v2

    if-eq v2, v6, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->isWapPushMessage()Z

    move-result v2

    if-ne v2, v6, :cond_1

    .line 5414
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposerPanel:Landroid/widget/ScrollView;

    invoke-virtual {v2, v5}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 5415
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mBottomPanel:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 5457
    :goto_0
    return-void

    .line 5422
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isDeleteMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5423
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposerPanel:Landroid/widget/ScrollView;

    invoke-virtual {v2, v5}, Landroid/widget/ScrollView;->setVisibility(I)V

    goto :goto_0

    .line 5428
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 5430
    .local v0, editText:Landroid/widget/EditText;
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5431
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposerPanel:Landroid/widget/ScrollView;

    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 5432
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mBottomPanel:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 5435
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->showSizeString(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5440
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposerPanel:Landroid/widget/ScrollView;

    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 5441
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mBottomPanel:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 5443
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v3}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/mms/data/WorkingMessage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 5447
    .local v1, text:Ljava/lang/CharSequence;
    if-eqz v1, :cond_4

    .line 5448
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 5449
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 5455
    :cond_4
    :goto_1
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->showSizeString(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5450
    :cond_5
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 5451
    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private drawTopPanel(Z)V
    .locals 3
    .parameter "showEmptySubject"

    .prologue
    .line 5460
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawTopPanel(),showEmptySubject="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5462
    if-eqz p1, :cond_0

    .line 5463
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isSubjectEditorVisible()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->showSubjectEditor(Z)V

    .line 5466
    :goto_0
    return-void

    .line 5465
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->showSubjectEditor(Z)V

    goto :goto_0
.end method

.method private editMessageItem(Lcom/android/mms/ui/MessageItem;)V
    .locals 3
    .parameter "msgItem"

    .prologue
    .line 1639
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "editMessageItem(),type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1641
    const-string v0, "sms"

    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1642
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->editSmsMessageItem(Lcom/android/mms/ui/MessageItem;)V

    .line 1646
    :goto_0
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 1648
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->initRecipientsEditor()V

    .line 1650
    :cond_0
    return-void

    .line 1644
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->editMmsMessageItem(Lcom/android/mms/ui/MessageItem;)V

    goto :goto_0
.end method

.method private editMmsMessageItem(Lcom/android/mms/ui/MessageItem;)V
    .locals 4
    .parameter "msgItem"

    .prologue
    const/4 v3, 0x0

    .line 1673
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->discard()V

    .line 1676
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-static {v0, p0, v1}, Lcom/android/mms/data/WorkingMessage;->load(Landroid/content/Context;Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 1677
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_0

    .line 1678
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;Z)V

    .line 1679
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 1680
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->loadRecipients(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1681
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    .line 1682
    invoke-direct {p0, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->drawTopPanel(Z)V

    .line 1684
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->isRawAttachmentPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1686
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->createAttachmentList(Lcom/android/mms/model/SlideshowModel;)V

    .line 1687
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->showAttachListPanel()V

    .line 1690
    :cond_0
    return-void
.end method

.method private editSmsMessageItem(Lcom/android/mms/ui/MessageItem;)V
    .locals 5
    .parameter "msgItem"

    .prologue
    const/4 v4, 0x0

    .line 1660
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    monitor-enter v2

    .line 1661
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v1

    const/4 v3, 0x1

    if-gt v1, v3, :cond_0

    .line 1662
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->clearThreadId()V

    .line 1664
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1666
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1667
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v2, v0, v4, v4}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1668
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v2

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    .line 1669
    return-void

    .line 1664
    .end local v0           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private exitComposeMessageActivity(Ljava/lang/Runnable;)V
    .locals 4
    .parameter "exit"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 3240
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->dismissAllDialog()V

    .line 3243
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3245
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->isResizingImage:Z

    if-nez v0, :cond_0

    .line 3246
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->discard()V

    .line 3248
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/mms/data/Contact;->init(Landroid/content/Context;)V

    .line 3251
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3252
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v3}, Lcom/android/mms/data/WorkingMessage;->setSignature(I)V

    .line 3255
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/android/mms/data/Conversation;->checkReadReport(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 3277
    :cond_2
    :goto_0
    return-void

    .line 3260
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3261
    invoke-direct {p0, v1, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtonsByRecipientEditor(ZZ)Z

    .line 3264
    :cond_4
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->noRecipientsInEditor()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3265
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ComposeMessageFragment$1;)V

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->showDiscardDraftConfirmDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDiscardDraftConfirmDialog:Landroid/app/AlertDialog;

    .line 3267
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3268
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v3}, Lcom/android/mms/data/WorkingMessage;->setSignature(I)V

    goto :goto_0

    .line 3274
    :cond_5
    sput-boolean v1, Lcom/android/mms/ui/ComposeMessageFragment;->isComposerClosed:Z

    .line 3275
    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToastForDraftSave:Z

    .line 3276
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/android/mms/data/Conversation;->checkReadReport(Landroid/content/Context;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private getAddContactUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 9
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 5096
    .line 5097
    const-string v1, "content://com.android.contacts/contacts/as_multi_vcard/"

    .line 5098
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x37

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 5099
    const-string v3, "%3A"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 5100
    array-length v3, v2

    .line 5101
    sget v4, Lcom/android/mms/ui/MessageUtils;->MESSAGE_MAX_RAWATTACH_COUNT:I

    .line 5102
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v6, 0x7f090118

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v0

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 5105
    if-le v3, v4, :cond_2

    .line 5106
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    new-instance v6, Lcom/android/mms/ui/ComposeMessageFragment$45;

    invoke-direct {v6, p0, v5}, Lcom/android/mms/ui/ComposeMessageFragment$45;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5116
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 5118
    :goto_0
    if-ge v0, v4, :cond_1

    .line 5120
    aget-object v5, v2, v0

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 5121
    add-int/lit8 v5, v4, -0x1

    if-ge v0, v5, :cond_0

    .line 5122
    const-string v5, "%3A"

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 5118
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5126
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 5127
    :cond_2
    return-object p1
.end method

.method private getImportMediaCount(I)I
    .locals 6
    .parameter "mediaCount"

    .prologue
    .line 5075
    move v1, p1

    .line 5076
    .local v1, importCount:I
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    .line 5077
    .local v3, slideShow:Lcom/android/mms/model/SlideshowModel;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v0

    .line 5078
    .local v0, currentSlideCount:I
    :goto_0
    add-int v4, v1, v0

    sget v5, Lcom/android/mms/ui/MessageUtils;->MESSAGE_MAX_SLIDE_NUM:I

    if-le v4, v5, :cond_0

    .line 5079
    sget v4, Lcom/android/mms/ui/MessageUtils;->MESSAGE_MAX_SLIDE_NUM:I

    sub-int/2addr v4, v0

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 5080
    move v2, v1

    .line 5081
    .local v2, numberToImport:I
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    new-instance v5, Lcom/android/mms/ui/ComposeMessageFragment$44;

    invoke-direct {v5, p0, v2}, Lcom/android/mms/ui/ComposeMessageFragment$44;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;I)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5092
    .end local v2           #numberToImport:I
    :cond_0
    return v1

    .line 5077
    .end local v0           #currentSlideCount:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 8470
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIntent:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getMessageDate(Landroid/net/Uri;)J
    .locals 11
    .parameter "uri"

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 6595
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMessageDate(),uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6596
    const-wide/16 v8, -0x1

    .line 6598
    .local v8, result:J
    if-eqz p1, :cond_1

    .line 6599
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContentResolver:Landroid/content/ContentResolver;

    new-array v3, v10, [Ljava/lang/String;

    const-string v2, "date"

    aput-object v2, v3, v5

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 6602
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 6604
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6605
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v8, v0, v2

    .line 6608
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 6613
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_1
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMessageDate(),return="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6614
    return-wide v8

    .line 6608
    .restart local v7       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getMessageItem(Ljava/lang/String;JZ)Lcom/android/mms/ui/MessageItem;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 815
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 816
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 817
    :cond_0
    const-string v1, "Mms/ComposeMessageFragment"

    const-string v2, "getMessageItem : Bad cursor."

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz p4, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    :cond_2
    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/android/mms/ui/MessageListAdapter;->getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    goto :goto_0
.end method

.method private getRecipients()Lcom/android/mms/data/ContactList;
    .locals 2

    .prologue
    .line 1851
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1852
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientsEditor;->constructContactsFromInput()Lcom/android/mms/data/ContactList;

    move-result-object v1

    sput-object v1, Lcom/android/mms/ui/ComposeMessageFragment;->sEmptyContactList:Lcom/android/mms/data/ContactList;

    .line 1853
    sget-object v0, Lcom/android/mms/ui/ComposeMessageFragment;->sEmptyContactList:Lcom/android/mms/data/ContactList;

    .line 1865
    :cond_0
    :goto_0
    return-object v0

    .line 1856
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 1858
    .local v0, contactList:Lcom/android/mms/data/ContactList;
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->isTemp(Lcom/android/mms/data/ContactList;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1859
    sget-object v1, Lcom/android/mms/ui/ComposeMessageFragment;->sEmptyContactList:Lcom/android/mms/data/ContactList;

    if-nez v1, :cond_2

    .line 1860
    new-instance v1, Lcom/android/mms/data/ContactList;

    invoke-direct {v1}, Lcom/android/mms/data/ContactList;-><init>()V

    sput-object v1, Lcom/android/mms/ui/ComposeMessageFragment;->sEmptyContactList:Lcom/android/mms/data/ContactList;

    .line 1862
    :cond_2
    sget-object v0, Lcom/android/mms/ui/ComposeMessageFragment;->sEmptyContactList:Lcom/android/mms/data/ContactList;

    goto :goto_0
.end method

.method private getResourcesString(I)Ljava/lang/String;
    .locals 2
    .parameter "id"

    .prologue
    .line 5403
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 5404
    .local v0, r:Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getSelectedUriFromMessageList(Lcom/android/mms/ui/MessageListItem;)Landroid/net/Uri;
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v5, -0x1

    .line 1508
    .line 1509
    if-nez p1, :cond_0

    move-object v0, v1

    .line 1555
    :goto_0
    return-object v0

    .line 1524
    :cond_0
    const v0, 0x7f080056

    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1525
    if-eqz v0, :cond_3

    .line 1526
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 1527
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    .line 1528
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 1531
    :goto_1
    if-ne v3, v5, :cond_2

    .line 1533
    const v0, 0x7f08000e

    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1534
    if-eqz v0, :cond_2

    .line 1535
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 1536
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .line 1537
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    move v6, v0

    move-object v0, v3

    move v3, v2

    move v2, v6

    .line 1543
    :goto_2
    if-eq v3, v2, :cond_1

    .line 1544
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1545
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1547
    check-cast v0, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/URLSpan;

    invoke-interface {v0, v4, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 1549
    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1550
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 1555
    goto :goto_0

    :cond_2
    move-object v0, v4

    goto :goto_2

    :cond_3
    move v2, v5

    move v3, v5

    move-object v4, v1

    goto :goto_1
.end method

.method private getSizeStringView()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 7711
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v1, 0x7f080022

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private getToastHandler()Landroid/os/Handler;
    .locals 3

    .prologue
    .line 5863
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToastHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 5865
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 5866
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ToastHandler thread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mHandlerThread:Landroid/os/HandlerThread;

    .line 5868
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 5871
    :cond_0
    new-instance v0, Lcom/android/mms/ui/ToastHandler;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/mms/ui/ToastHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToastHandler:Landroid/os/Handler;

    .line 5874
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToastHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private goToConversationList()V
    .locals 2

    .prologue
    .line 3287
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "goToConversationList()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3288
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->requestClose()V

    .line 3289
    return-void
.end method

.method private handleAddAttachmentError(IILandroid/net/Uri;IZZ)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4836
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 4837
    const-string v1, "handleAddAttachmentError(),error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ",mediaTypeStringId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ",reqCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ",sendMultiple="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ",append="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 4841
    const-string v1, "Mms/ComposeMessageFragment"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4843
    if-nez p1, :cond_0

    .line 4918
    :goto_0
    return-void

    .line 4846
    :cond_0
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$43;

    move-object v1, p0

    move v2, p2

    move v3, p1

    move-object v4, p3

    move v5, p4

    move v6, p6

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/ComposeMessageFragment$43;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;IILandroid/net/Uri;IZZ)V

    invoke-virtual {v8, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private handleAttachmentRemoved()V
    .locals 2

    .prologue
    .line 6049
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V

    .line 6050
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    .line 6051
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6052
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->checkSubjectMargin()V

    .line 6054
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListAdapter:Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;->notifyDataSetChanged()V

    .line 6055
    return-void
.end method

.method private handleCreationModeDialog(Ljava/lang/String;Landroid/net/Uri;IZ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4966
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/mms/model/CarrierContentRestriction;->getMmsCreationMode(Landroid/content/Context;)I

    move-result v0

    .line 4968
    const-string v1, "Mms/ComposeMessageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCreationModeDialog(),creationMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4969
    packed-switch v0, :pswitch_data_0

    .line 4995
    :cond_0
    :goto_0
    return-void

    .line 4972
    :pswitch_0
    const v0, 0x7f0900dc

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4973
    const v6, 0x7f090137

    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;Landroid/net/Uri;IZ)V

    invoke-virtual {p0, v6, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->showWarningDialog(ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 4975
    :cond_1
    const v0, 0x7f0900dd

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4976
    const v6, 0x7f090138

    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;Landroid/net/Uri;IZ)V

    invoke-virtual {p0, v6, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->showWarningDialog(ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 4978
    :cond_2
    const v0, 0x7f0900db

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4979
    const v6, 0x7f090139

    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;Landroid/net/Uri;IZ)V

    invoke-virtual {p0, v6, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->showWarningDialog(ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 4981
    :cond_3
    const v0, 0x7f09015d

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4982
    const v6, 0x7f090160

    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;Landroid/net/Uri;IZ)V

    invoke-virtual {p0, v6, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->showWarningDialog(ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 4988
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f090184

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->getResourcesString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f090185

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getResourcesString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4969
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleForwardedMessage()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5042
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIntent:Landroid/content/Intent;

    const-string v6, "forwarded_message"

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_0

    .line 5071
    :goto_0
    return v3

    .line 5046
    :cond_0
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIntent:Landroid/content/Intent;

    const-string v6, "msg_uri"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 5048
    .local v2, uri:Landroid/net/Uri;
    const-string v5, "Mms/ComposeMessageFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleForwardedMessage(),uri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5050
    if-eqz v2, :cond_3

    .line 5052
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIntent:Landroid/content/Intent;

    const-string v7, "checkCRMode"

    invoke-virtual {v6, v7, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v5, p0, v2, v6}, Lcom/android/mms/data/WorkingMessage;->load(Landroid/content/Context;Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;Z)Lcom/android/mms/data/WorkingMessage;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 5054
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v5, :cond_1

    .line 5055
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIntent:Landroid/content/Intent;

    const-string v7, "subject"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 5062
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIntent:Landroid/content/Intent;

    const-string v5, "recipients"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5063
    .local v1, recipients:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 5064
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgAttachHandler:Landroid/os/Handler;

    invoke-static {v3, v4, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5065
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5069
    .end local v0           #msg:Landroid/os/Message;
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/mms/ui/MessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    move v3, v4

    .line 5071
    goto :goto_0

    .line 5058
    .end local v1           #recipients:Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v5}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v5

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIntent:Landroid/content/Intent;

    const-string v7, "sms_body"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    goto :goto_1
.end method

.method private handleSendIntent(Landroid/content/Intent;)Z
    .locals 10
    .parameter

    .prologue
    const v9, 0x7f0901bd

    const/4 v1, 0x0

    const/4 v8, 0x1

    .line 5132
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 5133
    if-nez v6, :cond_1

    .line 5307
    :cond_0
    :goto_0
    return v1

    .line 5136
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 5138
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5139
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    .line 5140
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5141
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const-string v1, ""

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v9}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v1, v2, v8}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v5

    .line 5143
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 5144
    const-string v0, "vcard"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5145
    new-instance v9, Ljava/lang/Thread;

    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$46;

    move-object v1, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/ComposeMessageFragment$46;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/app/ProgressDialog;Landroid/os/Bundle;Landroid/content/Intent;)V

    const-string v1, "addAttachment"

    invoke-direct {v9, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 5180
    :cond_2
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5181
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v1

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    :cond_3
    move v1, v8

    .line 5184
    goto :goto_0

    .line 5185
    :cond_4
    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5188
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    .line 5189
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 5190
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    .line 5193
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 5194
    add-int v4, v2, v0

    sget v5, Lcom/android/mms/ui/MessageUtils;->MESSAGE_MAX_SLIDE_NUM:I

    if-le v4, v5, :cond_5

    .line 5195
    sget v4, Lcom/android/mms/ui/MessageUtils;->MESSAGE_MAX_SLIDE_NUM:I

    sub-int v0, v4, v0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 5197
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v5, 0x7f090058

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    sget v7, Lcom/android/mms/ui/MessageUtils;->MESSAGE_MAX_SLIDE_NUM:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5212
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const-string v1, ""

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v9}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v0, v1, v4, v8}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachmentProgressDialog:Landroid/app/ProgressDialog;

    .line 5215
    new-instance v4, Lcom/android/mms/ui/ComposeMessageFragment$47;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/ComposeMessageFragment$47;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 5221
    new-instance v5, Lcom/android/mms/ui/ComposeMessageFragment$48;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/ComposeMessageFragment$48;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 5229
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsConainerHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5232
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$49;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageFragment$49;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;ILjava/util/ArrayList;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    const-string v1, "addAttachment"

    invoke-direct {v6, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    move v1, v8

    .line 5305
    goto/16 :goto_0

    :cond_6
    move v0, v1

    .line 5190
    goto :goto_1
.end method

.method private hasRecipientData(Landroid/net/Uri;)Z
    .locals 4
    .parameter "uri"

    .prologue
    .line 6738
    const/4 v1, 0x0

    .line 6741
    .local v1, result:Z
    if-nez p1, :cond_1

    .line 6742
    const/4 v1, 0x0

    .line 6751
    :cond_0
    :goto_0
    return v1

    .line 6743
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_2

    .line 6744
    const/4 v1, 0x0

    goto :goto_0

    .line 6745
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 6746
    const/4 v1, 0x1

    goto :goto_0

    .line 6747
    :catch_0
    move-exception v0

    .line 6748
    .local v0, ex:Ljava/lang/NullPointerException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private haveEmailContact(Ljava/lang/String;)Z
    .locals 11
    .parameter "emailAddress"

    .prologue
    const/4 v10, 0x1

    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 1617
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-array v3, v10, [Ljava/lang/String;

    const-string v5, "display_name"

    aput-object v5, v3, v9

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1623
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 1625
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1626
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1627
    .local v8, name:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1632
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 1635
    .end local v8           #name:Ljava/lang/String;
    :goto_0
    return v0

    .line 1632
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v9

    .line 1635
    goto :goto_0

    .line 1632
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private hideMessageList(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 7779
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposerPanel:Landroid/widget/ScrollView;

    invoke-direct {p0, v0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->setParentTop(Landroid/view/View;Z)V

    .line 7780
    return-void
.end method

.method private hideOrShowTopPanel()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2411
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isSubjectEditorVisible()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 2412
    .local v0, anySubViewsVisible:Z
    :goto_0
    const-string v2, "Mms/ComposeMessageFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hideOrShowTopPanel(),anySubViewsVisible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2414
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTopPanel:Landroid/view/View;

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2415
    return-void

    .end local v0           #anySubViewsVisible:Z
    :cond_1
    move v0, v1

    .line 2411
    goto :goto_0

    .line 2414
    .restart local v0       #anySubViewsVisible:Z
    :cond_2
    const/16 v1, 0x8

    goto :goto_1
.end method

.method private hideRecipientEditor(Z)V
    .locals 4
    .parameter "toFieldHide"

    .prologue
    const/16 v3, 0x8

    .line 3292
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideRecipientEditor(),toFieldHide="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3294
    if-eqz p1, :cond_0

    .line 3295
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsField:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 3296
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsField:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3298
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_0

    .line 3299
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->clear()V

    .line 3300
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setRecipients([Ljava/lang/String;)V

    .line 3301
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setText(Ljava/lang/CharSequence;)V

    .line 3302
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/RecipientsEditor;->setVisibility(I)V

    .line 3306
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->hideOrShowTopPanel()V

    .line 3307
    return-void
.end method

.method public static init()V
    .locals 0

    .prologue
    .line 9079
    return-void
.end method

.method private initActivityState(Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const-wide/16 v7, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 6618
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v2, "initActivityState()"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 6623
    invoke-direct {p0, p2}, Lcom/android/mms/ui/ComposeMessageFragment;->isNeedCreateThread(Landroid/content/Intent;)Z

    move-result v2

    .line 6627
    if-eqz p1, :cond_0

    .line 6628
    const-string v0, "recipients"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6629
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v5, v6}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-static {v1, v0, v5, v6}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Lcom/android/mms/data/ContactList;ZZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 6631
    const-string v0, "exit_on_sent"

    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mExitOnSent:Z

    .line 6632
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, p1}, Lcom/android/mms/data/WorkingMessage;->readStateFromBundle(Landroid/os/Bundle;)V

    .line 6633
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->loadToButtonState(Landroid/os/Bundle;)V

    .line 6635
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "initActivityState(),has bundle"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 6726
    :goto_0
    return-void

    .line 6641
    :cond_0
    const-string v0, "thread_id"

    invoke-virtual {p2, v0, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 6642
    cmp-long v0, v3, v7

    if-lez v0, :cond_4

    .line 6643
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v3, v4, v5}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 6715
    :cond_1
    :goto_1
    const-string v0, "exit_on_sent"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mExitOnSent:Z

    .line 6716
    const-string v0, "sms_body"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6717
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move-object v0, v1

    .line 6721
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    .line 6723
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-string v1, "subject"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 6725
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "initActivityState()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6645
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 6650
    if-eqz v3, :cond_9

    .line 6651
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 6654
    :goto_2
    if-eqz v0, :cond_8

    const-string v4, "smsto"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 6656
    const-string v0, "sendto"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 6684
    :goto_3
    if-eqz v0, :cond_5

    .line 6685
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v0, v5, v2}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Ljava/util/ArrayList;ZZ)Lcom/android/mms/data/Conversation;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 6686
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->showInvalidRecipientsPopup(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 6687
    :cond_5
    if-eqz v3, :cond_6

    .line 6689
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v3, v5, v2}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Landroid/net/Uri;ZZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 6692
    invoke-direct {p0, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->hasRecipientData(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 6700
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->alertInvalidRecipientsPopup(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 6705
    :cond_6
    const-string v0, "address"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6706
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 6707
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v5, v6}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-static {v2, v0, v5, v6}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Lcom/android/mms/data/ContactList;ZZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->setConversation(Lcom/android/mms/data/Conversation;)V

    goto/16 :goto_1

    .line 6710
    :cond_7
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/mms/data/Conversation;->createNew(Landroid/content/Context;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->setConversation(Lcom/android/mms/data/Conversation;)V

    goto/16 :goto_1

    :cond_8
    move-object v0, v1

    goto :goto_3

    :cond_9
    move-object v0, v1

    goto :goto_2
.end method

.method private initFocus()V
    .locals 2

    .prologue
    .line 6755
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "initFocus()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6757
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsKeyboardOpen:Z

    if-nez v0, :cond_1

    .line 6777
    :cond_0
    :goto_0
    return-void

    .line 6764
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6769
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    goto :goto_0

    .line 6770
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isBottomPanelVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6775
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(I)V

    goto :goto_0
.end method

.method private initMessageList()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 6251
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "initMessageList()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6253
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v0, :cond_0

    .line 6277
    :goto_0
    return-void

    .line 6257
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "highlight"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6258
    if-nez v0, :cond_1

    move-object v5, v2

    .line 6263
    :goto_1
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/MessageListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ListView;ZLjava/util/regex/Pattern;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    .line 6264
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->setOnDataSetChangedListener(Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;)V

    .line 6265
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMessageListItemHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->setMsgListItemHandler(Landroid/os/Handler;)V

    .line 6266
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 6267
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v6}, Lcom/android/mms/ui/MessageListView;->setItemsCanFocus(Z)V

    .line 6268
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v6}, Lcom/android/mms/ui/MessageListView;->setVisibility(I)V

    .line 6270
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteMode:Z

    if-eqz v0, :cond_2

    .line 6271
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 6258
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\b"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v5

    goto :goto_1

    .line 6273
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 6274
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v6}, Lcom/android/mms/ui/MessageListView;->setClickable(Z)V

    .line 6275
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method private initRecipientsEditor()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1893
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "initRecipientsEditor()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1895
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2081
    :goto_0
    return-void

    .line 1901
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    .line 1902
    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->reloadContactList()V

    .line 1904
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsField:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 1905
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v2, 0x7f080019

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsField:Landroid/widget/LinearLayout;

    .line 1908
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-nez v0, :cond_2

    .line 1909
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v2, 0x7f08001b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/RecipientsEditor;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    .line 1911
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mEditorBg:I

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/RecipientsEditor;->setBackgroundResource(I)V

    .line 1912
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTextColor:I

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/RecipientsEditor;->setTextColor(I)V

    .line 1913
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mCursorColor:I

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/RecipientsEditor;->setCursorColor(I)V

    .line 1914
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, p0}, Lcom/android/mms/ui/RecipientsEditor;->setComposer(Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 1915
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mEditTextTouchedListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/RecipientsEditor;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1919
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v2, 0x7f08001a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 1920
    if-eqz v0, :cond_3

    .line 1921
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ToButtonLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    .line 1922
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    const v2, 0x7f0800b1

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/ToButtonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1923
    const-string v2, "uk"

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mLocale:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1924
    const/high16 v2, 0x4160

    invoke-virtual {v0, v6, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1929
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1932
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 1933
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/ToButtonLayout;->setVisibility(I)V

    .line 1942
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsField:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1943
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/RecipientsEditor;->setVisibility(I)V

    .line 1944
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    if-eqz v0, :cond_5

    .line 1945
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    invoke-virtual {v0, v7}, Lcom/android/mms/ui/MessageContactHeader;->setVisibility(I)V

    .line 1949
    :cond_5
    new-instance v0, Lcom/android/mms/ui/RecipientsAdapter;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/android/mms/ui/RecipientsAdapter;-><init>(Landroid/content/Context;)V

    .line 1950
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v2, v0}, Lcom/android/mms/ui/RecipientsEditor;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1951
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/RecipientsEditor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1953
    invoke-direct {p0, v1, v5}, Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtonByContactList(Lcom/android/mms/data/ContactList;Z)V

    .line 1954
    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-nez v0, :cond_6

    .line 1955
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSavedToButtonRecipients:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtonsByString(Ljava/lang/String;)V

    .line 1957
    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSavedToButtonRecipients:Ljava/lang/String;

    .line 1959
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->setRecipientsInEditor()V

    .line 1960
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, p0}, Lcom/android/mms/ui/RecipientsEditor;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1963
    new-array v0, v5, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0xbb8

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v0, v4

    .line 1966
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/RecipientsEditor;->setFilters([Landroid/text/InputFilter;)V

    .line 1969
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    const v1, 0x2000005

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setImeOptions(I)V

    .line 1972
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setSoundEffect(I)V

    .line 1974
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$15;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageFragment$15;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 2000
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$16;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageFragment$16;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 2052
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$17;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageFragment$17;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2065
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    const v1, 0x7f090214

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setHint(I)V

    .line 2067
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v1, 0x7f08001c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientButton:Landroid/widget/ImageButton;

    .line 2068
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2069
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$18;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageFragment$18;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 2080
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTopPanel:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1926
    :cond_7
    const/high16 v2, 0x4180

    invoke-virtual {v0, v6, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_1

    .line 1937
    :cond_8
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mKeepToButtonVisible:Z

    if-nez v0, :cond_4

    .line 1938
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    invoke-virtual {v0, v7}, Lcom/android/mms/ui/ToButtonLayout;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method private initResourceLayout()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2474
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v3, v1}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;Z)V

    .line 2477
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gtz v0, :cond_3

    .line 2480
    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->hideRecipientEditor(Z)V

    .line 2481
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->initRecipientsEditor()V

    .line 2491
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V

    .line 2493
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->drawTopPanel(Z)V

    .line 2497
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 2498
    iget v0, v3, Landroid/content/res/Configuration;->keyboardHidden:I

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsKeyboardOpen:Z

    .line 2499
    iget v0, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsLandscape:Z

    .line 2500
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsKeyboardOpen:Z

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->onKeyboardStateChanged(Z)V

    .line 2501
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    if-eqz v0, :cond_0

    .line 2503
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsKeyboardOpen:Z

    if-eqz v0, :cond_6

    .line 2504
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    const v3, 0x7f090041

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/MmsRichContainer;->setHintRes(I)V

    .line 2510
    :goto_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MmsRichContainer;->hasContents(Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2511
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    const-string v3, ""

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/MmsRichContainer;->setHint(Ljava/lang/CharSequence;)V

    .line 2517
    :goto_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/LayoutModel;->getLayoutType()I

    move-result v0

    if-ne v0, v1, :cond_8

    .line 2519
    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTextOnTop:Z

    .line 2523
    :goto_5
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTextOnTop:Z

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsRichContainer;->setMMSLayout(Z)V

    .line 2525
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsNeedToAnimation:Z

    if-eqz v0, :cond_9

    .line 2526
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v3}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    .line 2533
    :cond_0
    :goto_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2534
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->setSignature()V

    .line 2537
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->isRawAttachmentPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2539
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->createAttachmentList(Lcom/android/mms/model/SlideshowModel;)V

    .line 2540
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2543
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->showAttachListPanel()V

    .line 2545
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2546
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->bindToContactHeaderWidget(Lcom/android/mms/data/ContactList;)V

    .line 2547
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListView;->setVisibility(I)V

    .line 2554
    :goto_7
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isNewCompose()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->recipientCount()I

    move-result v0

    if-gtz v0, :cond_b

    .line 2559
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    .line 2569
    :goto_8
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->updateEditorSize()V

    .line 2571
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "initialize()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 2573
    return-void

    .line 2488
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->hideRecipientEditor(Z)V

    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 2498
    goto/16 :goto_1

    :cond_5
    move v0, v2

    .line 2499
    goto/16 :goto_2

    .line 2507
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    const v3, 0x7f090042

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/MmsRichContainer;->setHintRes(I)V

    goto/16 :goto_3

    .line 2513
    :cond_7
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->setHint()V

    goto/16 :goto_4

    .line 2521
    :cond_8
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTextOnTop:Z

    goto/16 :goto_5

    .line 2528
    :cond_9
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v3}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    goto/16 :goto_6

    .line 2549
    :cond_a
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setVisibility(I)V

    goto :goto_7

    .line 2565
    :cond_b
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(I)V

    goto :goto_8
.end method

.method private initResourceRefs()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 5701
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "initResourceRefs()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5703
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 5704
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 5705
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->displayDensity:F

    .line 5708
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v2, 0x7f080011

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTopLayout:Landroid/widget/LinearLayout;

    .line 5710
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v2, 0x7f080026

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageListView;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    .line 5711
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 5712
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v2, 0x7f080020

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mBottomPanel:Landroid/view/View;

    .line 5713
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v2, 0x7f080017

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposerPanel:Landroid/widget/ScrollView;

    .line 5716
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v2, 0x7f080023

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    .line 5718
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v2, 0x7f080025

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MmsRichContainer;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    .line 5719
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTextColor:I

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MmsRichContainer;->setTextColor(I)V

    .line 5720
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mCursorColor:I

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MmsRichContainer;->setCursorColor(I)V

    .line 5725
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposerPanel:Landroid/widget/ScrollView;

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposerPanelBg:I

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setBackgroundResource(I)V

    .line 5726
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mEditorBg:I

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MmsRichContainer;->setBackgroundResource(I)V

    .line 5728
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsConainerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MmsRichContainer;->setHandler(Landroid/os/Handler;)V

    .line 5729
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0, p0}, Lcom/android/mms/ui/MmsRichContainer;->setRichEditorAction(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 5730
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTextEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MmsRichContainer;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 5731
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->initContainer()V

    .line 5732
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MmsRichContainer;->setOnSipUpListener(Lcom/android/mms/ui/OnEventListener;)V

    .line 5733
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsToMmsThreshold()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5735
    invoke-static {}, Lcom/android/mms/MmsConfig;->getComposeMaxLengthLimit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5736
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->setInputFilterComposeForSMS()V

    .line 5737
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v2, "setInputFilterComposeForSMS!!!"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5743
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTextViewKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 5746
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v2, Lcom/android/mms/ui/ComposeMessageFragment$53;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessageFragment$53;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 5765
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 5766
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mLocale:Ljava/lang/String;

    .line 5772
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mLocale:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->LanguageSize(Ljava/lang/String;)I

    move-result v0

    .line 5774
    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    .line 5775
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    const/high16 v2, 0x4140

    invoke-virtual {v0, v3, v2}, Landroid/widget/Button;->setTextSize(IF)V

    .line 5789
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->textScaleX(Landroid/widget/TextView;)V

    .line 5790
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5791
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v2, 0x7f080018

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTopPanel:Landroid/view/View;

    .line 5792
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTopPanel:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 5793
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v2, 0x7f080012

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 5794
    if-eqz v0, :cond_1

    .line 5795
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageContactHeader;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    .line 5796
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageContactHeader;->init()V

    .line 5798
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v2, 0x7f080024

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachButton:Landroid/widget/ImageButton;

    .line 5800
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5801
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5808
    :goto_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;

    if-nez v0, :cond_2

    .line 5809
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v2, 0x7f08001e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;

    .line 5812
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v2, 0x7f080013

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectAll:Landroid/widget/LinearLayout;

    .line 5814
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectAll:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/mms/ui/ComposeMessageFragment$54;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessageFragment$54;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5842
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectAll:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mListKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 5844
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v2, 0x7f080015

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    .line 5845
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v2, 0x7f080014

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectAllText:Landroid/widget/TextView;

    .line 5848
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSendAnimationJpn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5849
    const/16 v2, 0x2c

    .line 5850
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v3, 0x7f080027

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 5851
    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 5853
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 5855
    :cond_3
    return-void

    .line 5741
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTextEditorInputFilter:Landroid/text/InputFilter;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MmsRichContainer;->setEditTextCharMaxInputFilter(Landroid/text/InputFilter;)V

    goto/16 :goto_0

    .line 5776
    :cond_5
    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    if-eq v0, v3, :cond_6

    const/4 v2, 0x6

    if-eq v0, v2, :cond_6

    const/16 v2, 0xc

    if-eq v0, v2, :cond_6

    const/16 v2, 0x10

    if-eq v0, v2, :cond_6

    const/16 v2, 0x12

    if-eq v0, v2, :cond_6

    const/16 v2, 0x22

    if-ne v0, v2, :cond_7

    .line 5777
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    const/high16 v2, 0x4150

    invoke-virtual {v0, v3, v2}, Landroid/widget/Button;->setTextSize(IF)V

    goto/16 :goto_1

    .line 5778
    :cond_7
    const/4 v2, 0x7

    if-eq v0, v2, :cond_8

    const/16 v2, 0x9

    if-eq v0, v2, :cond_8

    const/16 v2, 0xa

    if-eq v0, v2, :cond_8

    const/16 v2, 0xe

    if-eq v0, v2, :cond_8

    const/16 v2, 0xf

    if-eq v0, v2, :cond_8

    const/16 v2, 0x14

    if-eq v0, v2, :cond_8

    const/16 v2, 0x16

    if-eq v0, v2, :cond_8

    const/16 v2, 0x1a

    if-ne v0, v2, :cond_9

    .line 5780
    :cond_8
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    const/high16 v2, 0x4160

    invoke-virtual {v0, v3, v2}, Landroid/widget/Button;->setTextSize(IF)V

    goto/16 :goto_1

    .line 5783
    :cond_9
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    const/high16 v2, 0x4180

    invoke-virtual {v0, v3, v2}, Landroid/widget/Button;->setTextSize(IF)V

    goto/16 :goto_1

    .line 5803
    :cond_a
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachButton:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 5804
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v2, "Remove Attach Button!"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private initializeContactInfo()V
    .locals 3

    .prologue
    .line 7135
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 7137
    .local v0, recipients:Lcom/android/mms/data/ContactList;
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 7138
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->updatePresence(Lcom/android/mms/data/Contact;)V

    .line 7142
    :goto_0
    return-void

    .line 7140
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->updatePresence(Lcom/android/mms/data/Contact;)V

    goto :goto_0
.end method

.method private insertText(Landroid/widget/EditText;Ljava/lang/String;Z)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 7218
    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v8

    .line 7219
    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    .line 7221
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsToMmsThreshold()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 7224
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7227
    invoke-static {}, Lcom/android/mms/MmsConfig;->getComposeMaxLengthLimit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7228
    sub-int v0, v1, v8

    .line 7229
    if-gez v0, :cond_0

    .line 7230
    const/4 v0, 0x0

    .line 7232
    :cond_0
    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v3

    .line 7233
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    aget v5, v3, v5

    add-int/2addr v5, v0

    if-le v4, v5, :cond_1

    .line 7234
    const/4 v4, 0x0

    const/4 v5, 0x2

    aget v3, v3, v5

    add-int/2addr v0, v3

    invoke-virtual {p2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 7240
    :cond_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 7243
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, v2, v3, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .line 7244
    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 7245
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v0, v2, v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7252
    const/4 v1, 0x0

    .line 7253
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 7255
    const/16 v4, 0x7d0

    if-le v3, v4, :cond_5

    .line 7256
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    .line 7257
    add-int/lit16 v1, v3, -0x7d0

    sub-int v5, v4, v1

    .line 7258
    if-gtz v5, :cond_3

    .line 7259
    const/4 v0, -0x7

    .line 7260
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 7261
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    :cond_2
    :goto_0
    move-object v7, v1

    move v1, v0

    .line 7290
    :goto_1
    const v2, 0x7f090199

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/ComposeMessageFragment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    .line 7295
    invoke-static {}, Lcom/android/mms/MmsConfig;->getComposeMaxLengthLimit()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7296
    const/4 v0, 0x0

    invoke-static {v7, v0}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v0

    .line 7297
    const/4 v2, 0x0

    aget v0, v0, v2

    const/4 v2, 0x1

    if-le v0, v2, :cond_6

    .line 7298
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->showToast()V

    .line 7403
    :goto_2
    return-void

    .line 7246
    :catch_0
    move-exception v0

    .line 7247
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_2

    .line 7264
    :cond_3
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 7265
    if-nez v8, :cond_4

    .line 7266
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v5}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7267
    invoke-virtual {v0, v4, v3}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7268
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 7269
    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 7279
    :goto_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    move-result v0

    .line 7280
    if-nez v0, :cond_2

    .line 7281
    const/4 v0, -0x7

    goto :goto_0

    .line 7271
    :cond_4
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v8}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7272
    add-int/2addr v5, v8

    invoke-virtual {v0, v8, v5}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 7273
    add-int/2addr v4, v8

    invoke-virtual {v0, v4, v3}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7274
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 7275
    invoke-virtual {v1, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 7276
    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_3

    .line 7286
    :cond_5
    if-nez p3, :cond_13

    .line 7287
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    move-result v1

    move-object v7, v0

    goto/16 :goto_1

    .line 7305
    :cond_6
    invoke-virtual {p1, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 7307
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v8

    const/16 v2, 0x7d0

    if-lt v0, v2, :cond_8

    .line 7308
    const/16 v0, 0x7d0

    .line 7316
    :goto_4
    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-nez v1, :cond_7

    .line 7317
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 7321
    :cond_7
    :try_start_1
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 7402
    :goto_5
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->updateEditorSize()V

    goto/16 :goto_2

    .line 7310
    :cond_8
    if-eqz v1, :cond_9

    move v0, v8

    .line 7311
    goto :goto_4

    .line 7313
    :cond_9
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v8

    goto :goto_4

    .line 7322
    :catch_1
    move-exception v0

    .line 7323
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 7324
    invoke-virtual {p1, v8}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_5

    .line 7329
    :cond_a
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 7330
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7332
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 7335
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v2, v0, v4, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .line 7336
    invoke-virtual {v2, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 7337
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v2, v0, v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3

    .line 7344
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getMessageCalculateParam(Ljava/lang/CharSequence;)[I

    move-result-object v0

    .line 7345
    const/4 v1, 0x0

    aget v0, v0, v1

    .line 7346
    const/16 v1, 0x7d0

    .line 7347
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 7348
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsToMmsTextThreshold()I

    move-result v5

    if-lt v0, v5, :cond_10

    const/4 v0, 0x1

    .line 7350
    :goto_6
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v5}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v5

    if-nez v5, :cond_12

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsToMmsThreshold()Z

    move-result v0

    if-nez v0, :cond_12

    .line 7351
    invoke-direct {p0, v2, v8, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->calculateMaxTextLength(Ljava/lang/CharSequence;II)I

    move-result v0

    .line 7354
    :goto_7
    if-le v4, v0, :cond_11

    .line 7356
    sub-int v0, v4, v0

    sub-int v5, v3, v0

    .line 7357
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 7359
    if-lez v8, :cond_b

    .line 7360
    const/4 v0, 0x0

    invoke-virtual {v2, v0, v8}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 7362
    :cond_b
    if-lez v5, :cond_c

    .line 7363
    add-int v0, v8, v5

    invoke-virtual {v2, v8, v0}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 7365
    :cond_c
    add-int v0, v8, v3

    if-ge v0, v4, :cond_d

    .line 7366
    add-int v0, v8, v3

    invoke-virtual {v2, v0, v4}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 7368
    :cond_d
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    move-result v0

    .line 7369
    if-nez v0, :cond_e

    .line 7370
    const/4 v0, -0x7

    .line 7376
    :cond_e
    add-int v2, v8, v5

    move-object v7, v1

    move v9, v2

    move v1, v0

    .line 7384
    :goto_8
    const v2, 0x7f090199

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/ComposeMessageFragment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    .line 7386
    invoke-virtual {p1, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 7388
    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_f

    .line 7389
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 7394
    :cond_f
    :try_start_3
    invoke-virtual {p1, v9}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_5

    .line 7395
    :catch_2
    move-exception v0

    .line 7396
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 7397
    invoke-virtual {p1, v8}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_5

    .line 7338
    :catch_3
    move-exception v0

    .line 7339
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto/16 :goto_2

    .line 7348
    :cond_10
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 7378
    :cond_11
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    move-result v1

    .line 7381
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v8

    move-object v7, v2

    move v9, v0

    goto :goto_8

    :cond_12
    move v0, v1

    goto/16 :goto_7

    :cond_13
    move-object v7, v0

    goto/16 :goto_1
.end method

.method private isAttachSupportedType(Ljava/lang/String;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 5387
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5388
    const-string v0, "image/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "video/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "audio/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "text/x-vCard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "text/x-vCalendar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "text/x-vNote"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "text/x-vtodo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5394
    :cond_0
    const/4 v0, 0x1

    .line 5397
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBottomPanelVisible()Z
    .locals 4

    .prologue
    .line 3327
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mBottomPanel:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mBottomPanel:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 3329
    .local v0, result:Z
    :goto_0
    const-string v1, "Mms/ComposeMessageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isBottomPanelVisible(),return="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3330
    return v0

    .line 3327
    .end local v0           #result:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isComposerPanelVisible()Z
    .locals 4

    .prologue
    .line 3334
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposerPanel:Landroid/widget/ScrollView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposerPanel:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 3336
    .local v0, result:Z
    :goto_0
    const-string v1, "Mms/ComposeMessageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isComposerPanelVisible(), return="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3337
    return v0

    .line 3334
    .end local v0           #result:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNeedCreateThread(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 6728
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6729
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SENDTO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6730
    const/4 v0, 0x0

    .line 6733
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isNewCompose()Z
    .locals 1

    .prologue
    .line 8299
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v0

    return v0
.end method

.method private isPreparedForSending()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 6345
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->recipientCount()I

    move-result v0

    .line 6346
    .local v0, recipientCount:I
    const/4 v1, 0x0

    .line 6350
    .local v1, result:Z
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSubjectSMS()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6351
    if-lez v0, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v4

    if-gt v0, v4, :cond_1

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move v1, v2

    .line 6358
    :goto_0
    const-string v2, "Mms/ComposeMessageFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPreparedForSending(),return="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6359
    return v1

    :cond_1
    move v1, v3

    .line 6351
    goto :goto_0

    .line 6354
    :cond_2
    if-lez v0, :cond_4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v4

    if-gt v0, v4, :cond_4

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move v1, v2

    :goto_1
    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_1
.end method

.method private isPreparedForSendingButton()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 6364
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->recipientCount()I

    move-result v0

    .line 6365
    .local v0, recipientCount:I
    const/4 v1, 0x0

    .line 6370
    .local v1, result:Z
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSubjectSMS()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6371
    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v4

    if-gt v0, v4, :cond_1

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move v1, v2

    .line 6378
    :goto_0
    const-string v2, "Mms/ComposeMessageFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPreparedForSendingButton(),return="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6379
    return v1

    :cond_1
    move v1, v3

    .line 6371
    goto :goto_0

    .line 6374
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v4

    if-gt v0, v4, :cond_4

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move v1, v2

    :goto_1
    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_1
.end method

.method private isRecipientCallable()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 3652
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 3653
    .local v0, recipients:Lcom/android/mms/data/ContactList;
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v2

    if-ne v2, v1, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->containsEmail()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->isPhoneNumber()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSubjectEditorVisible()Z
    .locals 4

    .prologue
    .line 3318
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 3321
    .local v0, result:Z
    :goto_0
    const-string v1, "Mms/ComposeMessageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSubjectEditorVisible(),return="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3322
    return v0

    .line 3318
    .end local v0           #result:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTemp(Lcom/android/mms/data/ContactList;)Z
    .locals 4
    .parameter "contactList"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1871
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-static {}, Lcom/android/mms/data/Conversation;->getTempThreadIdStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private isUnderLength(III)Z
    .locals 1
    .parameter "currentLength"
    .parameter "addingLength"
    .parameter "MaxLength"

    .prologue
    .line 7407
    add-int v0, p1, p2

    if-gt v0, p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadDraft()V
    .locals 2

    .prologue
    .line 6280
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6281
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "loadDraft() called with non-empty working message"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6291
    :goto_0
    return-void

    .line 6285
    :cond_0
    const-string v0, "Mms:app"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6286
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "loadDraft: call WorkingMessage.loadDraft"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6289
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-static {v0, p0, v1}, Lcom/android/mms/data/WorkingMessage;->loadDraft(Landroid/content/Context;Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 6290
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMessageHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setHandler(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method private loadMessageContent()V
    .locals 2

    .prologue
    .line 2766
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "loadMessageContent()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2767
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->startMsgListQuery()V

    .line 2768
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->initializeContactInfo()V

    .line 2769
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendFailedNotification()V

    .line 2770
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->drawComposerPanel()V

    .line 2772
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2773
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->setSignature()V

    .line 2775
    :cond_0
    return-void
.end method

.method private loadToButtonState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 2794
    const-string v0, "toButtonRecipients"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSavedToButtonRecipients:Ljava/lang/String;

    .line 2795
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadToButtonState toButtonRecipients="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSavedToButtonRecipients:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2796
    return-void
.end method

.method private noRecipientsInEditor()Z
    .locals 2

    .prologue
    .line 3280
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->hasValidRecipient(Z)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveEmptyRecipient()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->getRecipientCount()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onKeyboardStateChanged(Z)V
    .locals 3
    .parameter "isKeyboardOpen"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3103
    if-eqz p1, :cond_2

    .line 3104
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_0

    .line 3105
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/RecipientsEditor;->setFocusableInTouchMode(Z)V

    .line 3107
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 3108
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 3118
    :cond_1
    :goto_0
    return-void

    .line 3111
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_3

    .line 3112
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setFocusable(Z)V

    .line 3114
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 3115
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    goto :goto_0
.end method

.method private parseMultiPicker(Ljava/util/ArrayList;I)V
    .locals 9
    .parameter
    .parameter "reqCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 5021
    if-nez p1, :cond_1

    .line 5035
    :cond_0
    return-void

    .line 5023
    :cond_1
    const/4 v7, 0x0

    .line 5024
    .local v7, i:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 5025
    .local v6, count:I
    invoke-direct {p0, v6}, Lcom/android/mms/ui/ComposeMessageFragment;->getImportMediaCount(I)I

    move-result v8

    .line 5026
    .local v8, importCount:I
    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_0

    .line 5027
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 5029
    .local v1, attachUri:Landroid/net/Uri;
    const/16 v0, 0x1b

    if-eq p2, v0, :cond_2

    const/16 v0, 0x21

    if-ne p2, v0, :cond_3

    .line 5030
    :cond_2
    const/4 v3, 0x1

    move-object v0, p0

    move v4, v2

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageFragment;->addRawMedia(Landroid/net/Uri;ZZZI)V

    .line 5026
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, p2

    .line 5032
    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageFragment;->addRawMedia(Landroid/net/Uri;ZZZI)V

    goto :goto_1
.end method

.method private pasteClipBoardData(Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 8723
    .line 8725
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 8781
    :cond_0
    :goto_0
    return-void

    .line 8728
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsMediaPasteRunning:Z

    if-nez v0, :cond_0

    .line 8732
    iput-boolean v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsMediaPasteRunning:Z

    .line 8734
    new-instance v0, Ljava/io/File;

    check-cast p1, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    invoke-virtual {p1}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmapPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8736
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const-string v2, ""

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0901bd

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v1, v2, v3, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 8738
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/mms/ui/ComposeMessageFragment$77;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment$77;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/io/File;Landroid/app/ProgressDialog;)V

    const-string v0, "pasteClipBoardData"

    invoke-direct {v2, v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 8751
    :pswitch_1
    check-cast p1, Landroid/sec/clipboard/data/list/ClipboardDataText;

    invoke-virtual {p1}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8753
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8754
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    if-lez v1, :cond_1

    .line 8757
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8759
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-direct {p0, v1, v0, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->insertText(Landroid/widget/EditText;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 8760
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 8761
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    if-lez v1, :cond_3

    .line 8764
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8766
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x28

    invoke-direct {p0, v1, v2, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isUnderLength(III)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8768
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-direct {p0, v1, v0, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->insertText(Landroid/widget/EditText;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 8771
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 8775
    :pswitch_2
    check-cast p1, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    invoke-virtual {p1}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->getText()Ljava/lang/String;

    move-result-object v0

    .line 8776
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-direct {p0, v1, v0, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->insertText(Landroid/widget/EditText;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 8725
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private previewSlideshow()V
    .locals 4

    .prologue
    .line 7696
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    .line 7697
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const-string v1, ""

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0901da

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 7699
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/mms/ui/ComposeMessageFragment$67;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment$67;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/app/ProgressDialog;)V

    const-string v0, "previewSlideshow"

    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 7707
    return-void
.end method

.method private recipientCount()I
    .locals 4

    .prologue
    .line 6383
    const/4 v0, 0x0

    .line 6389
    .local v0, recipientCount:I
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6390
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->size()I

    move-result v0

    .line 6395
    :goto_0
    const-string v1, "Mms/ComposeMessageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recipientCount(),return="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6396
    return v0

    .line 6392
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    goto :goto_0
.end method

.method private refreshCheckedList()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 9047
    iget-boolean v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteMode:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-nez v5, :cond_1

    .line 9075
    :cond_0
    :goto_0
    return-void

    .line 9050
    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListAdapter;->backupCheckedList()V

    .line 9052
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 9055
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 9057
    :cond_2
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 9058
    .local v2, msgId:J
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 9059
    .local v4, msgType:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v5, v2, v3, v4}, Lcom/android/mms/ui/MessageListAdapter;->refreshChecked(JLjava/lang/String;)V

    .line 9060
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 9063
    .end local v2           #msgId:J
    .end local v4           #msgType:Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListAdapter;->cleanDummyCheckedList()V

    .line 9065
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListAdapter;->getCheckedCount()I

    move-result v1

    .line 9066
    .local v1, checkedCount:I
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v5

    if-ne v1, v5, :cond_4

    .line 9067
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 9071
    :goto_1
    if-lez v1, :cond_5

    .line 9072
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v5, v7}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    goto :goto_0

    .line 9069
    :cond_4
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 9074
    :cond_5
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    goto :goto_0
.end method

.method private removeRecipientsListener()V
    .locals 0

    .prologue
    .line 7177
    invoke-static {p0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 7178
    return-void
.end method

.method private requestClose()V
    .locals 2

    .prologue
    .line 8534
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "requestClose()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 8537
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mOnCloseListener:Lcom/android/mms/ui/OnEventListener;

    if-eqz v0, :cond_0

    .line 8538
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mOnCloseListener:Lcom/android/mms/ui/OnEventListener;

    invoke-interface {v0}, Lcom/android/mms/ui/OnEventListener;->onEvent()V

    .line 8539
    :cond_0
    return-void
.end method

.method private requestDrawPointerOnConverationList()V
    .locals 5

    .prologue
    .line 9197
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    .line 9198
    .local v0, threadId:J
    const-string v2, "Mms/ComposeMessageFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestDrawPointerOnConverationList() threadId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mIsLandscape="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsLandscape:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 9200
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 9204
    :goto_0
    return-void

    .line 9203
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v2, v0, v1}, Lcom/android/mms/ui/ConversationComposer;->requestDrawPointerOnConverationList(J)Z

    goto :goto_0
.end method

.method private requestFocusOnConverationList()V
    .locals 5

    .prologue
    .line 9186
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    .line 9187
    .local v0, threadId:J
    const-string v2, "Mms/ComposeMessageFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestFocusOnConverationList() threadId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mIsLandscape="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsLandscape:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 9189
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsLandscape:Z

    if-nez v2, :cond_1

    .line 9193
    :cond_0
    :goto_0
    return-void

    .line 9192
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v2, v0, v1}, Lcom/android/mms/ui/ConversationComposer;->requsetFocusOnConversationList(J)Z

    goto :goto_0
.end method

.method private resetMessage()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 6518
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "resetMessage()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6521
    invoke-direct {p0, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->showSubjectEditor(Z)V

    .line 6524
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText()V

    .line 6530
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTextEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsRichContainer;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 6532
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p0}, Lcom/android/mms/data/WorkingMessage;->createEmpty(Landroid/content/Context;Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 6533
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v1, v3}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;Z)V

    .line 6534
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMessageHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setHandler(Landroid/os/Handler;)V

    .line 6537
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->hideRecipientEditor(Z)V

    .line 6539
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/MmsRichContainer;->setMMSLayout(Z)V

    .line 6540
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    .line 6541
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->drawComposerPanel()V

    .line 6543
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6544
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->setSignature()V

    .line 6548
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6549
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->bindToContactHeaderWidget(Lcom/android/mms/data/ContactList;)V

    .line 6550
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/MessageListView;->setVisibility(I)V

    .line 6552
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListView;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setSelection(I)V

    .line 6558
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V

    .line 6561
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTextEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsRichContainer;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 6564
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsLandscape:Z

    if-eqz v0, :cond_1

    .line 6566
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;->hideSoftInputFromWindow(Landroid/os/IBinder;I)V

    .line 6571
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->recipienHasEmail()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6572
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->createSlideshow()Lcom/android/mms/model/SlideshowModel;

    .line 6573
    :cond_2
    iput-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendingMessage:Z

    .line 6574
    return-void

    .line 6554
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setVisibility(I)V

    goto :goto_0
.end method

.method private saveDraft(Z)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 6294
    const-string v1, "Mms/ComposeMessageFragment"

    const-string v2, "saveDraft()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6300
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->isDiscarded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6301
    const-string v1, "Mms/ComposeMessageFragment"

    const-string v2, "mWorkingMessage.isDiscarded()=true"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6341
    :cond_0
    :goto_0
    return v0

    .line 6306
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->hasOnlySignatureText()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6313
    :cond_2
    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWaitingForSubActivity:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v1

    if-nez v1, :cond_6

    .line 6316
    :cond_4
    const-string v1, "Mms/ComposeMessageFragment"

    const-string v2, "saveDraft: not worth saving"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6319
    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->isResizingImage:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/mms/ui/ComposeMessageFragment;->isComposerClosed:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsNewThreadOpen:Z

    if-eqz v1, :cond_0

    .line 6320
    :cond_5
    const-string v1, "Mms/ComposeMessageFragment"

    const-string v2, "saveDraft: discard WorkingMessage and bail"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6321
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->discard()V

    goto :goto_0

    .line 6326
    :cond_6
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "saveDraft: call WorkingMessage.saveDraft"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6328
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, p1}, Lcom/android/mms/data/WorkingMessage;->saveDraft(Z)Z

    move-result v0

    .line 6330
    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToastForDraftSave:Z

    if-eqz v1, :cond_0

    .line 6333
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f090056

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 6335
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToastForDraftSave:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6336
    :catch_0
    move-exception v1

    .line 6337
    const-string v2, "Mms/ComposeMessageFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot make Toast. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private saveToButtonState(Landroid/os/Bundle;)V
    .locals 6
    .parameter "outState"

    .prologue
    .line 2799
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2801
    .local v0, buffer:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v3}, Lcom/android/mms/ui/RecipientsEditor;->constructContactsFromInput()Lcom/android/mms/data/ContactList;

    move-result-object v1

    .line 2803
    .local v1, contactList:Lcom/android/mms/data/ContactList;
    if-eqz v1, :cond_0

    .line 2804
    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->serialize()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2806
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v3}, Lcom/android/mms/ui/RecipientsEditor;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2807
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v3}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2809
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2810
    .local v2, recipients:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2811
    const-string v3, "toButtonRecipients"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2812
    const-string v3, "Mms/ComposeMessageFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveToButtonState toButtonRecipients="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 2815
    .end local v0           #buffer:Ljava/lang/StringBuilder;
    .end local v1           #contactList:Lcom/android/mms/data/ContactList;
    .end local v2           #recipients:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private sendMessage(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 6400
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMessage(),bCheckEcmMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 6403
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_0

    .line 6404
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    .line 6406
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6407
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v2, v0}, Lcom/android/mms/ui/RecipientsEditor;->constructContactsFromValidRecipients(Z)Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/mms/data/WorkingMessage;->setWorkingRecipients(Lcom/android/mms/data/ContactList;)V

    .line 6414
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 6416
    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager;->getAllowTextMessaging(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6418
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "message sending is disabled"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6419
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f09018c

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 6420
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->requestClose()V

    .line 6515
    :goto_0
    return-void

    .line 6456
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6457
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setSignature(I)V

    .line 6460
    :cond_2
    if-eqz p1, :cond_3

    .line 6462
    const-string v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6463
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6465
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v1, 0x11

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6469
    :catch_0
    move-exception v0

    .line 6471
    const-string v1, "Mms/ComposeMessageFragment"

    const-string v2, "Cannot find EmergencyCallbackModeExitDialog"

    invoke-static {v1, v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6476
    :cond_3
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendingMessage:Z

    if-nez v0, :cond_4

    .line 6479
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->removeRecipientsListener()V

    .line 6482
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v0, :cond_8

    .line 6483
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v1

    iput v1, v0, Lcom/android/mms/ui/MessageListAdapter;->animationIdx:I

    .line 6489
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->send()V

    .line 6490
    iput-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSentMessage:Z

    .line 6491
    iput-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendingMessage:Z

    .line 6492
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->addRecipientsListener()V

    .line 6495
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    .line 6496
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6501
    :cond_5
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mExitOnSent:Z

    if-eqz v0, :cond_7

    .line 6502
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMessage(),mExitOnSent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mExitOnSent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6504
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsForwardedMessage:Z

    if-nez v0, :cond_6

    .line 6505
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    .line 6509
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 6510
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/mms/ui/MessageListAdapter;->animationIdx:I

    .line 6514
    :cond_7
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "sendMessage()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6485
    :cond_8
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iput v3, v0, Lcom/android/mms/ui/MessageListAdapter;->animationIdx:I

    goto :goto_1
.end method

.method public static setBundle(Landroid/os/Bundle;Z)V
    .locals 0
    .parameter "savedInstanceState"
    .parameter "isRestore"

    .prologue
    .line 2125
    sput-object p0, Lcom/android/mms/ui/ComposeMessageFragment;->mBundle:Landroid/os/Bundle;

    .line 2126
    sput-boolean p1, Lcom/android/mms/ui/ComposeMessageFragment;->mIsRestore:Z

    .line 2127
    return-void
.end method

.method private setConversation(Lcom/android/mms/data/Conversation;)V
    .locals 1
    .parameter "conv"

    .prologue
    .line 8543
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    .line 8544
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->hideMessageList(Z)V

    .line 8545
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mOnStateChangeListener:Lcom/android/mms/ui/OnEventListener;

    invoke-interface {v0}, Lcom/android/mms/ui/OnEventListener;->onEvent()V

    .line 8546
    return-void

    .line 8544
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setEditingMode(Z)V
    .locals 8
    .parameter

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 8305
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEditingMode(),isEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 8307
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v1, 0x7f080025

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 8308
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v2, 0x7f080023

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 8309
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getSizeStringView()Landroid/widget/TextView;

    move-result-object v2

    .line 8312
    const/high16 v3, 0x42e6

    .line 8314
    const/high16 v4, 0x4180

    .line 8318
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSendAnimationJpn()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 8319
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 8321
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 8322
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 8350
    :goto_0
    return-void

    .line 8325
    :cond_0
    if-eqz p1, :cond_1

    .line 8326
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 8327
    iget v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->displayDensity:F

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 8329
    iget v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->displayDensity:F

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 8331
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 8333
    :cond_1
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 8335
    iget v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->displayDensity:F

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v2, v6

    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 8337
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setFocusOnLastToButton()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 8200
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 8212
    :cond_0
    :goto_0
    return-void

    .line 8203
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 8204
    .local v1, lastKey:I
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ToButton;

    .line 8205
    .local v0, btn:Lcom/android/mms/ui/ToButton;
    if-eqz v0, :cond_0

    .line 8208
    iput-boolean v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mKeepToButtonVisible:Z

    .line 8209
    invoke-virtual {v0, v4}, Lcom/android/mms/ui/ToButton;->setFocusable(Z)V

    .line 8210
    invoke-virtual {v0, v4}, Lcom/android/mms/ui/ToButton;->setFocusableInTouchMode(Z)V

    .line 8211
    invoke-virtual {v0}, Lcom/android/mms/ui/ToButton;->requestFocus()Z

    goto :goto_0
.end method

.method private setFocusOnNextToButton()Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 8236
    const/4 v2, 0x0

    .line 8238
    .local v2, preToButton:Lcom/android/mms/ui/ToButton;
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v4}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 8239
    .local v1, id:I
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/ToButton;

    .line 8241
    .local v3, toButton:Lcom/android/mms/ui/ToButton;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/mms/ui/ToButton;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8242
    iput-boolean v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mKeepToButtonVisible:Z

    .line 8243
    invoke-virtual {v3, v5}, Lcom/android/mms/ui/ToButton;->setFocusable(Z)V

    .line 8244
    invoke-virtual {v3, v5}, Lcom/android/mms/ui/ToButton;->setFocusableInTouchMode(Z)V

    .line 8245
    invoke-virtual {v3}, Lcom/android/mms/ui/ToButton;->requestFocus()Z

    .line 8247
    invoke-virtual {v2, v6}, Lcom/android/mms/ui/ToButton;->setFocusable(Z)V

    .line 8248
    invoke-virtual {v2, v6}, Lcom/android/mms/ui/ToButton;->setFocusableInTouchMode(Z)V

    move v4, v5

    .line 8255
    .end local v1           #id:I
    .end local v3           #toButton:Lcom/android/mms/ui/ToButton;
    :goto_1
    return v4

    .line 8252
    .restart local v1       #id:I
    .restart local v3       #toButton:Lcom/android/mms/ui/ToButton;
    :cond_0
    move-object v2, v3

    goto :goto_0

    .end local v1           #id:I
    .end local v3           #toButton:Lcom/android/mms/ui/ToButton;
    :cond_1
    move v4, v6

    .line 8255
    goto :goto_1
.end method

.method private setFocusOnPreToButton()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 8215
    const/4 v2, 0x0

    .line 8217
    .local v2, preToButton:Lcom/android/mms/ui/ToButton;
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v4}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 8218
    .local v1, id:I
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/ToButton;

    .line 8220
    .local v3, toButton:Lcom/android/mms/ui/ToButton;
    if-eqz v2, :cond_1

    invoke-virtual {v3}, Lcom/android/mms/ui/ToButton;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8221
    iput-boolean v6, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mKeepToButtonVisible:Z

    .line 8222
    invoke-virtual {v2, v6}, Lcom/android/mms/ui/ToButton;->setFocusable(Z)V

    .line 8223
    invoke-virtual {v2, v6}, Lcom/android/mms/ui/ToButton;->setFocusableInTouchMode(Z)V

    .line 8224
    invoke-virtual {v2}, Lcom/android/mms/ui/ToButton;->requestFocus()Z

    .line 8226
    invoke-virtual {v3, v7}, Lcom/android/mms/ui/ToButton;->setFocusable(Z)V

    .line 8227
    invoke-virtual {v3, v7}, Lcom/android/mms/ui/ToButton;->setFocusableInTouchMode(Z)V

    .line 8233
    .end local v1           #id:I
    .end local v3           #toButton:Lcom/android/mms/ui/ToButton;
    :cond_0
    return-void

    .line 8231
    .restart local v1       #id:I
    .restart local v3       #toButton:Lcom/android/mms/ui/ToButton;
    :cond_1
    move-object v2, v3

    goto :goto_0
.end method

.method private setInputFilterComposeForSMS()V
    .locals 3

    .prologue
    .line 5897
    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$55;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$55;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 5964
    .local v0, filter:Landroid/text/InputFilter;
    const/4 v2, 0x1

    new-array v1, v2, [Landroid/text/InputFilter;

    .line 5965
    .local v1, filterArray:[Landroid/text/InputFilter;
    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 5967
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 5968
    return-void
.end method

.method private declared-synchronized setIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 8465
    monitor-enter p0

    :try_start_0
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "setIntent()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 8466
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIntent:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8467
    monitor-exit p0

    return-void

    .line 8465
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setMessageListBackground()V
    .locals 2

    .prologue
    .line 8788
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const v1, -0xd4d2d0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setBackgroundColor(I)V

    .line 8789
    return-void
.end method

.method private setParentTop(Landroid/view/View;Z)V
    .locals 6
    .parameter "v"
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    const/16 v4, 0xa

    .line 7783
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 7787
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v3

    aget v3, v3, v4

    if-ne v3, v5, :cond_0

    const/4 v0, 0x1

    .line 7788
    .local v0, isParentTop:Z
    :goto_0
    if-ne v0, p2, :cond_1

    .line 7797
    :goto_1
    return-void

    .end local v0           #isParentTop:Z
    :cond_0
    move v0, v2

    .line 7787
    goto :goto_0

    .line 7791
    .restart local v0       #isParentTop:Z
    :cond_1
    if-eqz p2, :cond_2

    .line 7792
    invoke-virtual {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 7796
    :goto_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 7794
    :cond_2
    invoke-virtual {v1, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_2
.end method

.method private setRecipientsOnRecipientsEditor()V
    .locals 6

    .prologue
    .line 8259
    const/4 v2, 0x0

    .line 8261
    .local v2, recipients:[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v4}, Ljava/util/SortedMap;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 8262
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v4}, Ljava/util/SortedMap;->size()I

    move-result v4

    new-array v2, v4, [Ljava/lang/String;

    .line 8264
    const/4 v0, 0x0

    .line 8265
    .local v0, i:I
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v4}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/ToButton;

    .line 8266
    .local v3, toButton:Lcom/android/mms/ui/ToButton;
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/mms/ui/ToButton;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v4, v2, v0

    .line 8267
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8271
    .end local v0           #i:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #toButton:Lcom/android/mms/ui/ToButton;
    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v4, v2}, Lcom/android/mms/ui/RecipientsEditor;->setRecipients([Ljava/lang/String;)V

    .line 8272
    return-void
.end method

.method private setSendButtonText(Z)V
    .locals 3
    .parameter

    .prologue
    .line 3420
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSendButtonText(),isMms="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3422
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    .line 3423
    const v1, 0x7f09003f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 3425
    return-void
.end method

.method private setSignature()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 9366
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 9367
    .local v3, prefs:Landroid/content/SharedPreferences;
    const-string v8, "pref_key_enable_signature"

    const/4 v9, 0x0

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 9369
    .local v5, signature_is_on:Z
    iget-boolean v8, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsForwardedMessage:Z

    if-eqz v8, :cond_1

    .line 9398
    :cond_0
    :goto_0
    return-void

    .line 9373
    :cond_1
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v8}, Lcom/android/mms/data/WorkingMessage;->getSignature()I

    move-result v4

    .line 9374
    .local v4, signature_already_set:I
    const-string v8, "pref_key_signature_text"

    const-string v9, ""

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 9375
    .local v6, signature_text:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v8}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->length()I

    move-result v8

    if-lez v8, :cond_2

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v8}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 9377
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v8, v10}, Lcom/android/mms/data/WorkingMessage;->setSignature(I)V

    goto :goto_0

    .line 9382
    :cond_2
    if-eqz v5, :cond_0

    if-nez v4, :cond_0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 9383
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v8}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 9385
    .local v0, before:Landroid/text/Editable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9386
    .local v1, initials:Ljava/lang/StringBuilder;
    const-string v8, "\n"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9387
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9388
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v8}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 9389
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v8}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    .line 9390
    .local v7, text:Landroid/text/Editable;
    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v8, v9

    add-int/lit8 v2, v8, -0x1

    .line 9391
    .local v2, length:I
    if-gez v2, :cond_3

    .line 9392
    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v2

    .line 9393
    :cond_3
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v8}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {p0, v7, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->cropSelectionIndex(Ljava/lang/CharSequence;I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setSelection(I)V

    .line 9394
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v8, v10}, Lcom/android/mms/data/WorkingMessage;->setSignature(I)V

    .line 9396
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v9}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v9

    invoke-virtual {v8, v9, v7}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    goto/16 :goto_0
.end method

.method private setSlideDuration(II)V
    .locals 4
    .parameter "slideIndex"
    .parameter "duration"

    .prologue
    .line 4064
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    .line 4065
    .local v0, model:Lcom/android/mms/model/SlideshowModel;
    if-eqz v0, :cond_0

    .line 4066
    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getSlides()Ljava/util/ArrayList;

    move-result-object v2

    .line 4067
    .local v2, slideList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, p1, :cond_1

    .line 4076
    .end local v2           #slideList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    :cond_0
    :goto_0
    return-void

    .line 4070
    .restart local v2       #slideList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    :cond_1
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    .line 4071
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    if-eqz v1, :cond_0

    .line 4072
    invoke-virtual {v1, p2}, Lcom/android/mms/model/SlideModel;->setDuration(I)V

    goto :goto_0
.end method

.method private setTextFieldColor(I)V
    .locals 2
    .parameter

    .prologue
    .line 9309
    iput p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTextFieldColor:I

    .line 9311
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTextFieldColor:I

    if-nez v0, :cond_0

    .line 9312
    const v0, 0x7f02011a

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mEditorBg:I

    .line 9313
    const v0, 0x7f0200ca

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposerPanelBg:I

    .line 9314
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x205001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTextColor:I

    .line 9315
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mCursorColor:I

    .line 9322
    :goto_0
    return-void

    .line 9317
    :cond_0
    const v0, 0x7f02011b

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mEditorBg:I

    .line 9318
    const v0, 0x7f0200cb

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposerPanelBg:I

    .line 9319
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2050001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTextColor:I

    .line 9320
    const/high16 v0, -0x100

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mCursorColor:I

    goto :goto_0
.end method

.method private showAddAttachmentDialog(ZI)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 4297
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getAvailableStorage()J

    move-result-wide v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 4298
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f090180

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4299
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 4330
    :cond_0
    :goto_0
    return-void

    .line 4303
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 4306
    new-instance v0, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, v4, p1, p2}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;-><init>(Landroid/content/Context;IZI)V

    .line 4309
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4311
    const v2, 0x7f090039

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 4312
    new-instance v2, Lcom/android/mms/ui/ComposeMessageFragment$36;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/mms/ui/ComposeMessageFragment$36;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;Z)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4321
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachDialog:Landroid/app/AlertDialog;

    .line 4322
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$37;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageFragment$37;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 4328
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private showAddtextDialog()V
    .locals 3

    .prologue
    .line 4397
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4398
    const v1, 0x7f090152

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 4400
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAddTextSelectorAdapter:Lcom/android/mms/ui/AddTextSelectorAdapter;

    if-nez v1, :cond_0

    .line 4401
    new-instance v1, Lcom/android/mms/ui/AddTextSelectorAdapter;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/android/mms/ui/AddTextSelectorAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAddTextSelectorAdapter:Lcom/android/mms/ui/AddTextSelectorAdapter;

    .line 4403
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAddTextSelectorAdapter:Lcom/android/mms/ui/AddTextSelectorAdapter;

    new-instance v2, Lcom/android/mms/ui/ComposeMessageFragment$38;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessageFragment$38;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4409
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 4410
    return-void
.end method

.method private showAttachListPanel()V
    .locals 2

    .prologue
    .line 4819
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "showAttachListPanel()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4821
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 4822
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v0

    if-lez v0, :cond_1

    .line 4824
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4828
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->checkSubjectMargin()V

    .line 4830
    :cond_0
    return-void

    .line 4826
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private showChooseContactDialog()V
    .locals 4

    .prologue
    .line 4414
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4415
    const v1, 0x7f090067

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 4417
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mChooseContactSelectorAdapter:Lcom/android/mms/ui/ChooseContactSelectorAdapter;

    if-nez v1, :cond_0

    .line 4418
    new-instance v1, Lcom/android/mms/ui/ChooseContactSelectorAdapter;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/mms/ui/ChooseContactSelectorAdapter;-><init>(Landroid/content/Context;Lcom/android/mms/data/ContactList;)V

    iput-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mChooseContactSelectorAdapter:Lcom/android/mms/ui/ChooseContactSelectorAdapter;

    .line 4421
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mChooseContactSelectorAdapter:Lcom/android/mms/ui/ChooseContactSelectorAdapter;

    new-instance v2, Lcom/android/mms/ui/ComposeMessageFragment$39;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessageFragment$39;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4428
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 4429
    return-void
.end method

.method private showDupplicatedRecipientToast()V
    .locals 3

    .prologue
    .line 7959
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f090191

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 7961
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mshowDupplicatedRecipientToast:Landroid/widget/Toast;

    if-nez v1, :cond_0

    .line 7962
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mshowDupplicatedRecipientToast:Landroid/widget/Toast;

    .line 7966
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mshowDupplicatedRecipientToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 7969
    return-void

    .line 7964
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mshowDupplicatedRecipientToast:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showEditTextMaxCharExceedToast(Ljava/lang/String;)V
    .locals 2
    .parameter "str"

    .prologue
    const/4 v1, 0x0

    .line 7973
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMaxCharExceedToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 7974
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMaxCharExceedToast:Landroid/widget/Toast;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 7975
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMaxCharExceedToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 7980
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMaxCharExceedToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 7981
    return-void

    .line 7977
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMaxCharExceedToast:Landroid/widget/Toast;

    goto :goto_0
.end method

.method private showInternationalSmsRoamGuardDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1350
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030030

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1352
    .local v1, roamGuardView:Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1353
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1354
    const v2, 0x7f060012

    new-instance v3, Lcom/android/mms/ui/ComposeMessageFragment$10;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/ComposeMessageFragment$10;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1359
    const v2, 0x7f09006a

    new-instance v3, Lcom/android/mms/ui/ComposeMessageFragment$CancelSendingListener;

    invoke-direct {v3, p0, v4}, Lcom/android/mms/ui/ComposeMessageFragment$CancelSendingListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ComposeMessageFragment$1;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1360
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1361
    return-void
.end method

.method private showInvalidRecipientsPopup(Ljava/util/ArrayList;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const v8, 0x7f0901a9

    const/4 v0, 0x0

    .line 9231
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 9270
    :cond_0
    :goto_0
    return-void

    .line 9234
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 9236
    invoke-static {p1}, Lcom/android/mms/data/Conversation;->getRecipientByList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    .line 9237
    const-string v3, "[,;]"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 9239
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientList:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->clear()V

    .line 9241
    array-length v4, v3

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_6

    aget-object v5, v3, v1

    .line 9242
    invoke-direct {p0, v5, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->CheckValidRecipient(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 9244
    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 9245
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->showDupplicatedRecipientToast()V

    .line 9241
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 9246
    :cond_3
    const/4 v7, 0x3

    if-ne v6, v7, :cond_5

    .line 9247
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 9248
    const-string v6, ", "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9250
    :cond_4
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 9251
    :cond_5
    if-nez v6, :cond_2

    .line 9252
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 9256
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9257
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0901aa

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getResourcesString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v8}, Lcom/android/mms/ui/ComposeMessageFragment;->getResourcesString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9263
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09010f

    new-instance v2, Lcom/android/mms/ui/ComposeMessageFragment$82;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessageFragment$82;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method

.method private showLayoutSelectorDialog()V
    .locals 3

    .prologue
    .line 8421
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 8422
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 8423
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 8425
    new-instance v1, Lcom/android/mms/ui/LayoutSelectorAdapter;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/android/mms/ui/LayoutSelectorAdapter;-><init>(Landroid/content/Context;)V

    .line 8426
    new-instance v2, Lcom/android/mms/ui/ComposeMessageFragment$76;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessageFragment$76;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 8458
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 8462
    return-void
.end method

.method private showMaxRecipientToast()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 7953
    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v0

    .line 7954
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f090192

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 7955
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 7956
    return-void
.end method

.method private showSmileyDialog()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 7047
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSmileyDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_3

    .line 7048
    sget-object v3, Lcom/android/mms/util/SmileyParser;->DEFAULT_SMILEY_RES_IDS:[I

    .line 7049
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 7050
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 7052
    array-length v8, v4

    .line 7054
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v1, v5

    .line 7055
    :goto_0
    if-ge v1, v8, :cond_2

    move v0, v5

    .line 7059
    :goto_1
    if-ge v0, v1, :cond_4

    .line 7060
    aget v9, v3, v1

    aget v10, v3, v0

    if-ne v9, v10, :cond_1

    move v0, v6

    .line 7065
    :goto_2
    if-nez v0, :cond_0

    .line 7066
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7068
    const-string v9, "icon"

    aget v10, v3, v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7069
    const-string v9, "name"

    aget-object v10, v4, v1

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7070
    const-string v9, "text"

    aget-object v10, v7, v1

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7072
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7055
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 7059
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7076
    :cond_2
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f03002f

    new-array v4, v11, [Ljava/lang/String;

    const-string v7, "icon"

    aput-object v7, v4, v5

    const-string v5, "name"

    aput-object v5, v4, v6

    const/4 v5, 0x2

    const-string v7, "text"

    aput-object v7, v4, v5

    new-array v5, v11, [I

    fill-array-data v5, :array_0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 7082
    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$58;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageFragment$58;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 7092
    invoke-virtual {v0, v1}, Landroid/widget/SimpleAdapter;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 7094
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7096
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0900ee

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 7098
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 7099
    new-instance v2, Lcom/android/mms/ui/ComposeMessageFragment$59;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment$59;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/widget/SimpleAdapter;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7123
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSmileyDialog:Landroid/app/AlertDialog;

    .line 7126
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSmileyDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 7127
    return-void

    :cond_4
    move v0, v5

    goto :goto_2

    .line 7076
    nop

    :array_0
    .array-data 0x4
        0xa9t 0x0t 0x8t 0x7ft
        0xaat 0x0t 0x8t 0x7ft
        0xabt 0x0t 0x8t 0x7ft
    .end array-data
.end method

.method private showSubjectEditor(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2318
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showSubjectEditor(),show="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2320
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-nez v0, :cond_1

    .line 2323
    if-nez p1, :cond_0

    .line 2408
    :goto_0
    return-void

    .line 2327
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v3, 0x7f08001d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    .line 2329
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    iget v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mEditorBg:I

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 2330
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    iget v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTextColor:I

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 2331
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    iget v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mCursorColor:I

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setCursorColor(I)V

    .line 2333
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    const v3, 0x7f090038

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 2335
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 2336
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mEditTextTouchedListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2339
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectKeyListener:Landroid/view/View$OnKeyListener;

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 2341
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    new-instance v3, Lcom/android/mms/ui/ComposeMessageFragment$20;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/ComposeMessageFragment$20;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 2350
    if-eqz p1, :cond_8

    .line 2351
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2357
    :goto_2
    if-nez p1, :cond_2

    .line 2358
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isBottomPanelVisible()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2359
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText()V

    .line 2370
    :cond_2
    :goto_3
    if-eqz p1, :cond_3

    .line 2371
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 2372
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->checkSubjectMargin()V

    .line 2376
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    const/high16 v3, 0x200

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 2378
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 2380
    if-lez v0, :cond_4

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_5

    :cond_4
    move v0, v2

    .line 2384
    :cond_5
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 2386
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 2389
    :cond_6
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2390
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz p1, :cond_b

    :goto_4
    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 2391
    if-nez p1, :cond_c

    .line 2392
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2393
    iput-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    .line 2407
    :goto_5
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->hideOrShowTopPanel()V

    goto/16 :goto_0

    :cond_7
    move-object v0, v1

    .line 2339
    goto/16 :goto_1

    .line 2353
    :cond_8
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_2

    .line 2360
    :cond_9
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2361
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    goto/16 :goto_3

    .line 2363
    :cond_a
    sget-boolean v0, Lcom/android/mms/ui/ComposeMessageFragment;->isSipVisible:Z

    if-eqz v0, :cond_2

    .line 2364
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;

    invoke-virtual {v0, v2, v2}, Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;->toggleSoftInput(II)V

    goto/16 :goto_3

    .line 2390
    :cond_b
    const/16 v2, 0x8

    goto :goto_4

    .line 2403
    :cond_c
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 2405
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->updateEditorSize()V

    goto :goto_5
.end method

.method private showToButtonMenuDialog(Lcom/android/mms/ui/ToButton;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 8387
    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsOpenToButtonMenu:Z

    if-ne v2, v0, :cond_0

    .line 8417
    :goto_0
    return-void

    .line 8390
    :cond_0
    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsOpenToButtonMenu:Z

    .line 8391
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->clearFocusAllToButtons()V

    .line 8393
    invoke-virtual {p1}, Lcom/android/mms/ui/ToButton;->getNumber()Ljava/lang/String;

    move-result-object v2

    .line 8394
    invoke-virtual {p1}, Lcom/android/mms/ui/ToButton;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 8397
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1}, Lcom/android/mms/ui/ToButton;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/data/Contact;->IsPresentInContact(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8398
    const-string v4, "%s (%s)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v1

    aput-object v2, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 8402
    :goto_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 8403
    new-instance v3, Lcom/android/mms/ui/ToButtonMenuAdapter;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4, v0}, Lcom/android/mms/ui/ToButtonMenuAdapter;-><init>(Landroid/content/Context;Z)V

    .line 8404
    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;

    invoke-virtual {p1}, Lcom/android/mms/ui/ToButton;->getId()I

    move-result v4

    invoke-direct {v0, p0, v4}, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;I)V

    .line 8406
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 8407
    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 8409
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonDialog:Landroid/app/AlertDialog;

    .line 8410
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$75;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageFragment$75;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 8416
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_1
    move v0, v1

    move-object v1, v2

    goto :goto_1
.end method

.method private showToast()V
    .locals 3

    .prologue
    .line 5663
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMaxCharsInputToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMaxCharsInputToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMaxCharsInputToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5666
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f09017d

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMaxCharsInputToast:Landroid/widget/Toast;

    .line 5668
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMaxCharsInputToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5670
    :cond_1
    return-void
.end method

.method private startActivityforAddMedia(IZ)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const-wide/16 v9, 0x0

    const/16 v3, 0x33

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 4083
    if-eqz p2, :cond_0

    .line 4091
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    .line 4092
    packed-switch p1, :pswitch_data_0

    .line 4293
    :cond_1
    :goto_0
    return-void

    .line 4094
    :pswitch_0
    const-string v1, "image/*"

    .line 4095
    if-eqz p2, :cond_2

    .line 4096
    const/16 v0, 0x29

    .line 4104
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4105
    if-eqz v2, :cond_1

    .line 4106
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4107
    invoke-virtual {p0, v2, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 4098
    :cond_2
    const/16 v0, 0xa

    goto :goto_1

    .line 4112
    :pswitch_1
    if-eqz p2, :cond_3

    .line 4113
    const/16 v0, 0x2a

    .line 4117
    :goto_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4118
    const-string v2, "com.sec.android.app.camera"

    const-string v3, "com.sec.android.app.camera.Camera"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4120
    const-string v2, "return-uri"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4121
    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 4115
    :cond_3
    const/16 v0, 0xb

    goto :goto_2

    .line 4126
    :pswitch_2
    const-string v1, "video/*"

    .line 4127
    if-eqz p2, :cond_4

    .line 4128
    const/16 v0, 0x2b

    .line 4136
    :goto_3
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4137
    if-eqz v2, :cond_1

    .line 4138
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4139
    invoke-virtual {p0, v2, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 4130
    :cond_4
    const/16 v0, 0xc

    goto :goto_3

    .line 4144
    :pswitch_3
    if-eqz p2, :cond_6

    .line 4145
    const/16 v0, 0x2c

    .line 4149
    :goto_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v1

    int-to-long v1, v1

    .line 4150
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 4152
    if-nez p2, :cond_5

    .line 4153
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->getRemainContentsSize()I

    move-result v1

    int-to-long v1, v1

    .line 4156
    :cond_5
    cmp-long v3, v1, v9

    if-lez v3, :cond_7

    .line 4159
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4160
    const-string v4, "android.intent.extra.videoQuality"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4161
    const-string v4, "android.intent.extra.sizeLimit"

    invoke-virtual {v3, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4162
    const-string v1, "mms"

    invoke-virtual {v3, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4163
    invoke-virtual {p0, v3, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 4147
    :cond_6
    const/16 v0, 0xd

    goto :goto_4

    .line 4165
    :cond_7
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f090046

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 4174
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Sounds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4175
    const-string v2, "audio/*"

    .line 4176
    if-eqz p2, :cond_8

    .line 4177
    const/16 v0, 0x2d

    .line 4182
    :goto_5
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 4183
    if-eqz v3, :cond_1

    .line 4184
    const-string v4, "com.sec.android.app.myfiles"

    const-string v5, "com.sec.android.app.myfiles.fileselector.SingleSelectorActivity"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4186
    const-string v4, "com.sec.android.app.myfiles.PICK_DATA "

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4187
    const-string v4, "FOLDERPATH"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4188
    const-string v1, "CONTENT_TYPE"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4189
    invoke-virtual {p0, v3, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 4179
    :cond_8
    const/16 v0, 0xe

    goto :goto_5

    .line 4195
    :pswitch_5
    if-eqz p2, :cond_9

    .line 4196
    const/16 v0, 0x2e

    .line 4201
    :goto_6
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.provider.MediaStore.RECORD_SOUND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4203
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    .line 4206
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v3

    int-to-long v3, v3

    .line 4207
    if-eqz v2, :cond_d

    .line 4209
    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->getRemainContentsSize()I

    move-result v5

    int-to-long v5, v5

    .line 4210
    invoke-virtual {v2, v7}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v2

    int-to-long v7, v2

    .line 4211
    if-eqz p2, :cond_c

    .line 4212
    cmp-long v2, v7, v9

    if-lez v2, :cond_b

    .line 4213
    add-long v9, v5, v7

    cmp-long v2, v9, v3

    if-gez v2, :cond_a

    .line 4214
    const-string v2, "android.provider.MediaStore.extra.MAX_BYTES"

    add-long v3, v5, v7

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4230
    :goto_7
    const-string v2, "mime_type"

    const-string v3, "audio/amr"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4232
    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 4198
    :cond_9
    const/16 v0, 0xf

    goto :goto_6

    .line 4217
    :cond_a
    const-string v2, "android.provider.MediaStore.extra.MAX_BYTES"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_7

    .line 4221
    :cond_b
    const-string v2, "android.provider.MediaStore.extra.MAX_BYTES"

    invoke-virtual {v1, v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_7

    .line 4225
    :cond_c
    const-string v2, "android.provider.MediaStore.extra.MAX_BYTES"

    invoke-virtual {v1, v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_7

    .line 4228
    :cond_d
    const-string v2, "android.provider.MediaStore.extra.MAX_BYTES"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_7

    .line 4238
    :pswitch_6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4239
    const-string v1, "text/x-vcard"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4240
    const/16 v1, 0x14

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 4244
    :pswitch_7
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4245
    const-string v1, "vnd.android.cursor.dir/event"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4247
    const/16 v1, 0x1a

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 4248
    :catch_0
    move-exception v0

    .line 4249
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4250
    const v1, 0x7f09015a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 4251
    const v1, 0x7f02005e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 4252
    const v1, 0x7f09015b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 4253
    const v1, 0x7f090069

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4254
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 4259
    :pswitch_8
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4260
    const-string v1, "text/x-vnote"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4261
    const/16 v1, 0x1b

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 4265
    :pswitch_9
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4266
    const-string v1, "text/x-vtodo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4267
    const/16 v1, 0x21

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 4272
    :pswitch_a
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4273
    const-string v1, "image_location"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4274
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/android/mms/ui/SelectMapActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 4275
    const/16 v1, 0x24

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 4279
    :pswitch_b
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PENMEMO_ATTACH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4280
    const-string v1, "app_name"

    const-string v2, "com.android.mms"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4281
    invoke-virtual {p0, v0, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 4285
    :pswitch_c
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4286
    const-string v1, "application/vnd.penmemo.drawingpad"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4287
    invoke-virtual {p0, v0, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 4092
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private startDeleteAnimation([I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 8552
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDeleteAnimation(), delCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 8554
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8555
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const-string v1, ""

    const v2, 0x7f0901d1

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getResourcesString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/ComposeMessageFragment;->mDelAnimProgressDialog:Landroid/app/ProgressDialog;

    .line 8556
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "DeleteAnimation Progress shown with startDeleteAnimation()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8559
    :cond_0
    iput-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteAnimation:Z

    .line 8560
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageListView;->startDeleteMsgAnimation([I)V

    .line 8561
    return-void
.end method

.method private startMsgListQuery()V
    .locals 9

    .prologue
    const/16 v4, 0x2537

    .line 6231
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 6232
    .local v3, conversationUri:Landroid/net/Uri;
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startMsgListQuery(),conversationUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6234
    if-nez v3, :cond_0

    .line 6235
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->hideMessageList(Z)V

    .line 6248
    :goto_0
    return-void

    .line 6240
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->cancelOperation(I)V

    .line 6243
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;

    const/16 v1, 0x2537

    const/4 v2, 0x0

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const-string v5, "hidden=0"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6245
    :catch_0
    move-exception v8

    .line 6246
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v8}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method private startSendAnimation(Ljava/lang/Runnable;)V
    .locals 13
    .parameter

    .prologue
    .line 3507
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->sendAnimSet:Landroid/view/animation/AnimationSet;

    .line 3509
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->lastView:Landroid/view/View;

    .line 3512
    const/4 v3, 0x0

    .line 3513
    const/4 v9, 0x0

    .line 3514
    const/4 v2, 0x0

    .line 3515
    const/4 v4, 0x0

    .line 3516
    const/4 v1, 0x0

    .line 3517
    const/4 v0, 0x0

    .line 3536
    const/high16 v5, 0x4118

    iget v6, p0, Lcom/android/mms/ui/ComposeMessageFragment;->displayDensity:F

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    .line 3537
    const/high16 v6, 0x41c8

    iget v7, p0, Lcom/android/mms/ui/ComposeMessageFragment;->displayDensity:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    .line 3538
    const/high16 v7, 0x4190

    iget v8, p0, Lcom/android/mms/ui/ComposeMessageFragment;->displayDensity:F

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    .line 3539
    const/high16 v8, 0x40a0

    iget v10, p0, Lcom/android/mms/ui/ComposeMessageFragment;->displayDensity:F

    mul-float/2addr v8, v10

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v8, v8

    .line 3542
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment;->sendAnimSet:Landroid/view/animation/AnimationSet;

    new-instance v11, Lcom/android/mms/ui/ComposeMessageFragment$30;

    invoke-direct {v11, p0}, Lcom/android/mms/ui/ComposeMessageFragment$30;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v10, v11}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3559
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment;->lastView:Landroid/view/View;

    if-eqz v10, :cond_0

    .line 3560
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->lastView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3561
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->lastView:Landroid/view/View;

    const v1, 0x7f080052

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 3562
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->animView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sub-float v3, v1, v5

    .line 3563
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->lastView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->animView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    add-float v9, v1, v6

    .line 3564
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v7

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->animView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v1, v2

    .line 3565
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v8

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->animView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v4, v0, v1

    .line 3566
    const/high16 v1, 0x3f80

    .line 3567
    const v0, 0x3e99999a

    move v10, v0

    move v11, v1

    move v12, v3

    .line 3570
    :goto_0
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f80

    const/high16 v3, 0x3f80

    const/4 v5, 0x1

    const/high16 v6, 0x3f80

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 3573
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v5, v12

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 3576
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v11, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 3578
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->sendAnimSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 3579
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->sendAnimSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 3580
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->sendAnimSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 3582
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->sendAnimSet:Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    .line 3583
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->sendAnimSet:Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 3584
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->sendAnimSet:Landroid/view/animation/AnimationSet;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 3586
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->animView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->sendAnimSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3587
    return-void

    :cond_0
    move v10, v0

    move v11, v1

    move v12, v3

    goto :goto_0
.end method

.method private startSendAnimationPrepare(I)V
    .locals 6
    .parameter

    .prologue
    .line 3463
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v1, 0x7f080025

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3464
    const/4 v1, 0x0

    .line 3465
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 3467
    const/high16 v4, 0x42e6

    .line 3468
    const/high16 v0, 0x4180

    .line 3470
    add-float/2addr v0, v4

    iget v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->displayDensity:F

    mul-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 3474
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSendAnimationJpn()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3475
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 3481
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-gt v2, v0, :cond_1

    .line 3483
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 3484
    const/16 v0, 0x1f4

    .line 3486
    :goto_0
    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$27;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageFragment$27;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    add-int/lit16 v2, v0, 0xc8

    int-to-long v4, v2

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3492
    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$28;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageFragment$28;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    add-int/lit16 v0, v0, 0x1f4

    int-to-long v4, v0

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3504
    :goto_1
    return-void

    .line 3498
    :cond_1
    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$29;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$29;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private threadSafeToast(Landroid/app/Activity;II)V
    .locals 1
    .parameter "activity"
    .parameter "resId"
    .parameter "length"

    .prologue
    .line 5878
    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5879
    .local v0, message:Ljava/lang/String;
    invoke-direct {p0, p1, v0, p3}, Lcom/android/mms/ui/ComposeMessageFragment;->threadSafeToast(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 5880
    return-void
.end method

.method private threadSafeToast(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 3
    .parameter "activity"
    .parameter "message"
    .parameter "length"

    .prologue
    .line 5883
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getToastHandler()Landroid/os/Handler;

    move-result-object v1

    .line 5885
    .local v1, toastHandler:Landroid/os/Handler;
    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 5886
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5887
    invoke-static {p2, p3}, Lcom/android/mms/ui/ToastHandler;->createToastInfo(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 5889
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5890
    return-void
.end method

.method private toastConvertInfo(Z)V
    .locals 3
    .parameter "toMms"

    .prologue
    .line 956
    if-eqz p1, :cond_0

    const v0, 0x7f090052

    .line 958
    .local v0, resId:I
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 959
    return-void

    .line 956
    .end local v0           #resId:I
    :cond_0
    const v0, 0x7f090053

    goto :goto_0
.end method

.method private updateAttachListHeight(Landroid/widget/ListView;)V
    .locals 2
    .parameter "attachList"

    .prologue
    .line 5997
    invoke-virtual {p1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 5998
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->calcAttachListHeight(Landroid/widget/ListView;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5999
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6000
    return-void
.end method

.method private updateCounter(Ljava/lang/CharSequence;III)I
    .locals 16
    .parameter "text"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 854
    const/4 v9, 0x0

    .line 855
    .local v9, result:I
    invoke-virtual/range {p0 .. p1}, Lcom/android/mms/ui/ComposeMessageFragment;->getMessageCalculateParam(Ljava/lang/CharSequence;)[I

    move-result-object v8

    .line 856
    .local v8, params:[I
    if-nez v8, :cond_0

    move v10, v9

    .line 951
    .end local v9           #result:I
    .local v10, result:I
    :goto_0
    return v10

    .line 859
    .end local v10           #result:I
    .restart local v9       #result:I
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsToMmsThreshold()Z

    move-result v13

    if-eqz v13, :cond_b

    .line 861
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 869
    .local v5, length:I
    const/4 v13, 0x0

    aget v13, v8, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgCount:I

    .line 870
    const/4 v13, 0x2

    aget v13, v8, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mRemainingInCurrentMessage:I

    .line 873
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgCount:I

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsToMmsTextThreshold()I

    move-result v15

    if-lt v13, v15, :cond_5

    const/4 v13, 0x1

    :goto_1
    invoke-virtual {v14, v13}, Lcom/android/mms/data/WorkingMessage;->setLengthRequiresMms(Z)V

    .line 876
    const/16 v13, 0x7d0

    if-le v5, v13, :cond_9

    .line 877
    add-int/lit16 v13, v5, -0x7d0

    sub-int v6, p4, v13

    .line 881
    .local v6, newCount:I
    if-gtz v6, :cond_6

    .line 882
    const/4 v9, -0x7

    .line 913
    .end local v6           #newCount:I
    :goto_2
    const/4 v13, -0x7

    if-ne v9, v13, :cond_a

    .line 914
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v13

    add-int/lit16 v13, v13, -0x7d0

    sub-int v6, p4, v13

    .line 917
    .restart local v6       #newCount:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v13}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v13

    add-int v14, p2, v6

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 925
    .end local v6           #newCount:I
    :cond_1
    :goto_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getComposeMaxLengthLimit()Z

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mRemainingInCurrentMessage:I

    if-gtz v13, :cond_2

    .line 926
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMessageFragment;->showToast()V

    .line 928
    :cond_2
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3

    if-lez p3, :cond_4

    .line 929
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/mms/ui/ComposeMessageFragment;->showSizeString(Ljava/lang/CharSequence;)V

    :cond_4
    move v10, v9

    .line 931
    .end local v9           #result:I
    .restart local v10       #result:I
    goto :goto_0

    .line 873
    .end local v10           #result:I
    .restart local v9       #result:I
    :cond_5
    const/4 v13, 0x0

    goto :goto_1

    .line 884
    .restart local v6       #newCount:I
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 885
    .local v7, newText:Ljava/lang/StringBuilder;
    if-nez p2, :cond_7

    .line 886
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 887
    .local v4, inserted:Ljava/lang/String;
    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-interface {v0, v1, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 888
    .local v3, eStr:Ljava/lang/String;
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    :goto_4
    move-object/from16 p1, v7

    .line 899
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v14}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v13, v14, v0}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    move-result v12

    .line 900
    .local v12, tempRes:I
    if-nez v12, :cond_8

    .line 901
    const/4 v9, -0x7

    goto :goto_2

    .line 891
    .end local v3           #eStr:Ljava/lang/String;
    .end local v4           #inserted:Ljava/lang/String;
    .end local v12           #tempRes:I
    :cond_7
    const/4 v13, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v0, v13, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 892
    .local v11, sStr:Ljava/lang/String;
    add-int v13, p2, v6

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v0, v1, v13}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 893
    .restart local v4       #inserted:Ljava/lang/String;
    add-int v13, p2, p4

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 894
    .restart local v3       #eStr:Ljava/lang/String;
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 903
    .end local v11           #sStr:Ljava/lang/String;
    .restart local v12       #tempRes:I
    :cond_8
    move v9, v12

    goto/16 :goto_2

    .line 907
    .end local v3           #eStr:Ljava/lang/String;
    .end local v4           #inserted:Ljava/lang/String;
    .end local v6           #newCount:I
    .end local v7           #newText:Ljava/lang/StringBuilder;
    .end local v12           #tempRes:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v14}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v13, v14, v0}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    move-result v9

    goto/16 :goto_2

    .line 918
    .restart local v6       #newCount:I
    :catch_0
    move-exception v2

    .line 919
    .local v2, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v13, "TAG"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "IndexOutOfBoundsException"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 921
    .end local v2           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v6           #newCount:I
    :cond_a
    const/4 v13, -0x2

    if-ne v9, v13, :cond_1

    .line 922
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v13}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_3

    .line 940
    .end local v5           #length:I
    :cond_b
    const/4 v13, 0x0

    aget v13, v8, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgCount:I

    .line 943
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgCount:I

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsToMmsTextThreshold()I

    move-result v15

    if-lt v13, v15, :cond_e

    const/4 v13, 0x1

    :goto_5
    invoke-virtual {v14, v13}, Lcom/android/mms/data/WorkingMessage;->setLengthRequiresMms(Z)V

    .line 946
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v14}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v13, v14, v0}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    .line 948
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_c

    if-lez p3, :cond_d

    .line 949
    :cond_c
    invoke-virtual/range {p0 .. p1}, Lcom/android/mms/ui/ComposeMessageFragment;->showSizeString(Ljava/lang/CharSequence;)V

    :cond_d
    move v10, v9

    .line 951
    .end local v9           #result:I
    .restart local v10       #result:I
    goto/16 :goto_0

    .line 943
    .end local v10           #result:I
    .restart local v9       #result:I
    :cond_e
    const/4 v13, 0x0

    goto :goto_5
.end method

.method private updateEditorSize()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 8286
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    if-nez v1, :cond_0

    .line 8294
    :goto_0
    return-void

    .line 8289
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isNewCompose()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/MmsRichContainer;->hasContents(Z)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isSubjectEditorVisible()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v1

    if-lez v1, :cond_2

    :cond_1
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->setEditingMode(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateEditorSize(Z)V
    .locals 1
    .parameter "extend"

    .prologue
    .line 8278
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    if-nez v0, :cond_0

    .line 8282
    :goto_0
    return-void

    .line 8281
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->setEditingMode(Z)V

    goto :goto_0
.end method

.method private updatePresence(Lcom/android/mms/data/Contact;)V
    .locals 0
    .parameter "updated"

    .prologue
    .line 7131
    return-void
.end method

.method private updateSendButtonState()V
    .locals 4

    .prologue
    .line 6577
    const/4 v0, 0x0

    .line 6579
    .local v0, enable:Z
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isPreparedForSendingButton()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6580
    const/4 v0, 0x1

    .line 6581
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 6582
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->updateEditorSize(Z)V

    .line 6585
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->setSendButtonText(Z)V

    .line 6586
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->textScaleX(Landroid/widget/TextView;)V

    .line 6588
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 6590
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setFocusable(Z)V

    .line 6591
    const-string v1, "Mms/ComposeMessageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSendButtonState(),enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6592
    return-void
.end method

.method private updateSendFailedNotification()V
    .locals 5

    .prologue
    .line 2778
    const-string v2, "Mms/ComposeMessageFragment"

    const-string v3, "updateSendFailedNotification()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2780
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    .line 2781
    .local v0, threadId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 2791
    :goto_0
    return-void

    .line 2786
    :cond_0
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/mms/ui/ComposeMessageFragment$21;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment$21;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;J)V

    const-string v4, "updateSendFailedNotification"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method


# virtual methods
.method public alertInvalidRecipientsPopup(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 1408
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mInvalidRecipientsDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    .line 1409
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1410
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1411
    const v1, 0x7f0901d8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1412
    const v1, 0x7f09004e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1413
    const v1, 0x7f09010f

    new-instance v2, Lcom/android/mms/ui/ComposeMessageFragment$11;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessageFragment$11;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1420
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mInvalidRecipientsDialog:Landroid/app/AlertDialog;

    .line 1423
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mInvalidRecipientsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1424
    return-void
.end method

.method public alertInvalidRecipientsPopup(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "invalidRecipients"

    .prologue
    .line 1427
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1429
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1430
    const v1, 0x7f0901d8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1431
    const v1, 0x7f09004e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1432
    const v1, 0x104000a

    new-instance v2, Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsListener;

    invoke-direct {v2, p0, p2}, Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1433
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1434
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 3230
    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$22;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$22;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->exitComposeMessageActivity(Ljava/lang/Runnable;)V

    .line 3236
    return-void
.end method

.method public final cropSelectionIndex(Ljava/lang/CharSequence;I)I
    .locals 1
    .parameter "text"
    .parameter "index"

    .prologue
    .line 9401
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p2, v0, :cond_0

    if-gez p2, :cond_1

    .line 9402
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    .line 9404
    :cond_1
    return p2
.end method

.method public findAvailableViewToFocus()V
    .locals 1

    .prologue
    .line 9128
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 9129
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 9134
    :cond_0
    :goto_0
    return-void

    .line 9130
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 9131
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    goto :goto_0

    .line 9132
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 9133
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText()V

    goto :goto_0
.end method

.method public getConversationThreadId()J
    .locals 2

    .prologue
    .line 792
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    if-nez v0, :cond_0

    .line 793
    const-wide/16 v0, -0x1

    .line 795
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getMessageCalculateParam(Ljava/lang/CharSequence;)[I
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 7743
    .line 7750
    sget v0, Lcom/android/mms/ui/ComposeMessageFragment;->mEncodingType:I

    if-nez v0, :cond_0

    .line 7751
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isContainKoreanChar(Ljava/lang/String;)Z

    move-result v0

    .line 7752
    if-eqz v0, :cond_0

    .line 7753
    const/4 v0, 0x2

    sput v0, Lcom/android/mms/ui/ComposeMessageFragment;->mEncodingType:I

    .line 7757
    :cond_0
    sget v0, Lcom/android/mms/ui/ComposeMessageFragment;->mEncodingType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 7758
    sget v0, Lcom/android/mms/ui/ComposeMessageFragment;->mEncodingType:I

    invoke-static {p1, v2, v0}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v0

    .line 7773
    :goto_0
    return-object v0

    .line 7759
    :cond_1
    sget v0, Lcom/android/mms/ui/ComposeMessageFragment;->mEncodingType:I

    if-nez v0, :cond_2

    .line 7760
    sget v0, Lcom/android/mms/ui/ComposeMessageFragment;->mEncodingType:I

    invoke-static {p1, v2, v0}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v0

    goto :goto_0

    .line 7762
    :cond_2
    invoke-static {p1, v2}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v0

    goto :goto_0
.end method

.method public getMimeTypeFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 5313
    const-string v6, ""

    .line 5315
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 5316
    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 5318
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v8, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v2, v4

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 5323
    if-eqz v7, :cond_2

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_2

    .line 5324
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5325
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 5327
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The actual path is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v7

    move-object v0, v6

    .line 5360
    :goto_0
    if-eqz v1, :cond_0

    .line 5361
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 5368
    :cond_0
    :goto_1
    invoke-static {}, Lcom/android/mms/util/MessageMimeTypeMap;->getSingleton()Lcom/android/mms/util/MessageMimeTypeMap;

    move-result-object v2

    .line 5369
    invoke-static {v0}, Lcom/android/mms/util/MessageMimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5370
    const-string v3, ""

    .line 5372
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 5375
    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 5376
    if-ltz v3, :cond_9

    .line 5377
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 5380
    :goto_2
    invoke-virtual {v2, v0}, Lcom/android/mms/util/MessageMimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5381
    if-nez v0, :cond_1

    .line 5383
    :cond_1
    return-object v0

    .line 5329
    :cond_2
    if-eqz v7, :cond_3

    .line 5330
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 5333
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 5337
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_4

    .line 5338
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5339
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 5341
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The actual path is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v7

    move-object v0, v6

    goto :goto_0

    .line 5343
    :cond_4
    if-eqz v7, :cond_5

    .line 5344
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 5347
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 5351
    if-eqz v1, :cond_6

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_6

    .line 5352
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5353
    const-string v0, "_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 5355
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The actual path is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_6
    move-object v0, v6

    goto/16 :goto_0

    .line 5360
    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_3
    if-eqz v1, :cond_7

    .line 5361
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    .line 5364
    :cond_8
    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5365
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 5360
    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_9
    move-object v0, v1

    goto/16 :goto_2

    :cond_a
    move-object v0, v6

    goto/16 :goto_1
.end method

.method public getRemoveComoposer()Z
    .locals 2

    .prologue
    .line 9416
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "getRemoveComoposer()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 9417
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRemoveComposer:Z

    return v0
.end method

.method public declared-synchronized getState()I
    .locals 5

    .prologue
    .line 8499
    monitor-enter p0

    const/4 v0, -0x1

    .line 8500
    .local v0, result:I
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    if-nez v1, :cond_0

    .line 8501
    const/4 v0, 0x0

    .line 8515
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 8526
    const-string v1, "Mms/ComposeMessageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getState(),return="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8529
    :goto_1
    monitor-exit p0

    return v0

    .line 8503
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mFlagDeletedAll:Z

    if-eqz v1, :cond_1

    .line 8504
    const/4 v0, 0x0

    goto :goto_0

    .line 8505
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    .line 8506
    const/4 v0, 0x0

    goto :goto_0

    .line 8507
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v1

    if-gtz v1, :cond_3

    .line 8508
    const/4 v0, 0x0

    goto :goto_0

    .line 8509
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v1

    if-gtz v1, :cond_4

    .line 8510
    const/4 v0, 0x0

    goto :goto_0

    .line 8512
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 8517
    :pswitch_0
    const-string v1, "Mms/ComposeMessageFragment"

    const-string v2, "getState(),STATE_NONE"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 8499
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 8520
    :pswitch_1
    :try_start_2
    const-string v1, "Mms/ComposeMessageFragment"

    const-string v2, "getState(),STATE_NOCONV"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 8523
    :pswitch_2
    const-string v1, "Mms/ComposeMessageFragment"

    const-string v2, "getState(),STATE_HASCONV"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 8515
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public handleCheckbox(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V
    .locals 8
    .parameter "msgListItem"
    .parameter "msgItem"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 9015
    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteMode:Z

    if-eqz v2, :cond_0

    .line 9016
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-wide v3, p2, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    iget-object v5, p2, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/mms/ui/MessageListAdapter;->toggleCheckBox(JLjava/lang/String;)Z

    move-result v0

    .line 9017
    .local v0, checked:Z
    invoke-virtual {p1, v6, v0}, Lcom/android/mms/ui/MessageListItem;->setCheckBox(IZ)V

    .line 9019
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListAdapter;->getCheckedCount()I

    move-result v1

    .line 9020
    .local v1, checkedCount:I
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 9021
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 9025
    :goto_0
    if-lez v1, :cond_2

    .line 9026
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v2, v7}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 9032
    .end local v0           #checked:Z
    .end local v1           #checkedCount:I
    :cond_0
    :goto_1
    return-void

    .line 9023
    .restart local v0       #checked:Z
    .restart local v1       #checkedCount:I
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 9028
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v2, v6}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    goto :goto_1
.end method

.method public hideSip()V
    .locals 1

    .prologue
    .line 9628
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;->hideSip()V

    .line 9629
    return-void
.end method

.method public initialize(Landroid/os/Bundle;J)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2418
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "initialize()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 2421
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 2423
    iput-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mFlagDeletedAll:Z

    .line 2425
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2427
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mScreenWidth:I

    .line 2430
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p0}, Lcom/android/mms/data/WorkingMessage;->createEmpty(Landroid/content/Context;Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 2431
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMessageHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Lcom/android/mms/data/WorkingMessage;->setHandler(Landroid/os/Handler;)V

    .line 2434
    invoke-direct {p0, p1, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->initActivityState(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 2436
    const-string v0, "Mms:app"

    invoke-static {v0, v3}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2437
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialize: savedInstanceState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " intent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " recipients = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 2441
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->cancelFailedToDeliverNotification(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2444
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getMessageDate(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->undeliveredMessageDialog(J)V

    .line 2446
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->cancelFailedDownloadNotification(Landroid/content/Intent;Landroid/content/Context;)Z

    .line 2449
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->initMessageList()V

    .line 2458
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIntent:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->handleSendIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2459
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->handleForwardedMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2460
    iput-boolean v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsForwardedMessage:Z

    .line 2464
    :goto_0
    iput-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsNeedToAnimation:Z

    .line 2468
    :goto_1
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->initResourceLayout()V

    .line 2470
    return-void

    .line 2462
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->loadDraft()V

    goto :goto_0

    .line 2466
    :cond_3
    iput-boolean v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsNeedToAnimation:Z

    goto :goto_1
.end method

.method public isBodyFocused()Z
    .locals 1

    .prologue
    .line 9560
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isComposerClosed()Z
    .locals 1

    .prologue
    .line 9564
    sget-boolean v0, Lcom/android/mms/ui/ComposeMessageFragment;->isComposerClosed:Z

    return v0
.end method

.method public isDeleteMode()Z
    .locals 1

    .prologue
    .line 8640
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteMode:Z

    return v0
.end method

.method public isMms()Z
    .locals 1

    .prologue
    .line 9552
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_0

    .line 9553
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    .line 9556
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecipientsEditorVisible()Z
    .locals 2

    .prologue
    .line 3310
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientsEditor;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 3314
    .local v0, result:Z
    :goto_0
    return v0

    .line 3310
    .end local v0           #result:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReplyAllowedForThread()Z
    .locals 7

    .prologue
    .line 1396
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v6}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v3

    .line 1398
    .local v3, isMms:Z
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v6, :cond_0

    .line 1399
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v6}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v1

    .line 1401
    .local v1, dests:[Ljava/lang/String;
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    .line 1402
    .local v5, number:Ljava/lang/String;
    invoke-static {v5, v3}, Lcom/android/mms/ui/RecipientsEditor;->isValidAddress(Ljava/lang/String;Z)Z

    move-result v6

    .line 1405
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #dests:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .end local v5           #number:Ljava/lang/String;
    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2169
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onActivityCreated() savedInstanceState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 2170
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2172
    if-eqz p1, :cond_0

    .line 2173
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "savedInstanceState exists"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2178
    :cond_0
    sget-boolean v0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsRestore:Z

    if-eqz v0, :cond_1

    .line 2179
    sget-object p1, Lcom/android/mms/ui/ComposeMessageFragment;->mBundle:Landroid/os/Bundle;

    .line 2180
    sput-boolean v3, Lcom/android/mms/ui/ComposeMessageFragment;->mIsRestore:Z

    .line 2181
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/ComposeMessageFragment;->mBundle:Landroid/os/Bundle;

    .line 2186
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    .line 2188
    new-instance v0, Lcom/android/mms/ui/GreekInputHandler;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/android/mms/ui/GreekInputHandler;-><init>(Landroid/app/Activity;Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mGreekInputHandler:Lcom/android/mms/ui/GreekInputHandler;

    .line 2191
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getInputmode(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ComposeMessageFragment;->mEncodingType:I

    .line 2193
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mEncodingType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/ui/ComposeMessageFragment;->mEncodingType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2196
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "clipboardEx"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    .line 2197
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setProgressBarVisibility(Z)V

    .line 2199
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getTextFieldColor(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->setTextFieldColor(I)V

    .line 2200
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getBubbleFontSize(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mBubbleFontSize:F

    .line 2203
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->initResourceRefs()V

    .line 2205
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContentResolver:Landroid/content/ContentResolver;

    .line 2206
    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;

    .line 2208
    new-instance v0, Lcom/android/mms/ui/GreekInputHandler;

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/mms/ui/GreekInputHandler;-><init>(Landroid/app/Activity;Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mGreekInputHandler:Lcom/android/mms/ui/GreekInputHandler;

    .line 2210
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->initialize(Landroid/os/Bundle;J)V

    .line 2232
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_2

    .line 2233
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v3}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    .line 2240
    :cond_2
    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;

    .line 2242
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->reqReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "ResponseAxT9Info"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2244
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mGreekInputHandler:Lcom/android/mms/ui/GreekInputHandler;

    invoke-virtual {v0}, Lcom/android/mms/ui/GreekInputHandler;->onActivityCreate()V

    .line 2246
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v1, 0x7f080027

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->animView:Landroid/view/View;

    .line 2249
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$19;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageFragment$19;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setOnDeleteMsgAnimation(Lcom/android/mms/ui/MessageListView$OnDeleteMsgAnimationListener;)V

    .line 2272
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mListKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 2274
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, " onActivityCreated()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 2275
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x3

    const v6, 0x7f0901bd

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4432
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult: requestCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", resultCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/mms/Log;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4435
    iput-boolean v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWaitingForSubActivity:Z

    .line 4439
    const/16 v0, 0x2a

    if-eq p1, v0, :cond_0

    const/16 v0, 0x29

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2e

    if-ne p1, v0, :cond_e

    :cond_0
    move v3, v4

    .line 4450
    :goto_0
    const/16 v0, 0xb

    if-eq p1, v0, :cond_2

    .line 4451
    if-nez p3, :cond_3

    .line 4452
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "onActivityResult : data is null"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4814
    :cond_1
    :goto_1
    return-void

    .line 4455
    :cond_2
    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    .line 4456
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult(),fail due to resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4460
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 4812
    :cond_4
    :goto_2
    :pswitch_0
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult(),requestCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4462
    :pswitch_1
    if-eqz p3, :cond_4

    .line 4464
    const/4 v0, 0x0

    .line 4465
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v1, :cond_5

    .line 4466
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v0

    .line 4468
    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/android/mms/data/WorkingMessage;->load(Landroid/content/Context;Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v1

    .line 4470
    if-eqz v1, :cond_4

    .line 4471
    iput-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 4472
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1, v2, v5}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;Z)V

    .line 4473
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/16 v3, 0xc

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    .line 4475
    if-eqz v0, :cond_6

    .line 4476
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1, v0, v4}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 4479
    :cond_6
    invoke-direct {p0, v5}, Lcom/android/mms/ui/ComposeMessageFragment;->drawTopPanel(Z)V

    .line 4480
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V

    goto :goto_2

    .line 4491
    :pswitch_2
    const-string v0, "uri-data"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4492
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 4494
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const-string v2, ""

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v1, v2, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 4497
    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Lcom/android/mms/ui/ComposeMessageFragment$40;

    invoke-direct {v4, p0, v0, v3, v1}, Lcom/android/mms/ui/ComposeMessageFragment$40;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;ZLandroid/app/ProgressDialog;)V

    const-string v0, "addAttachment"

    invoke-direct {v2, v4, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    .line 4511
    :pswitch_3
    if-eqz p3, :cond_1

    .line 4515
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 4517
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const-string v2, ""

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v1, v2, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 4519
    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Lcom/android/mms/ui/ComposeMessageFragment$41;

    invoke-direct {v4, p0, v0, v3, v1}, Lcom/android/mms/ui/ComposeMessageFragment$41;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;ZLandroid/app/ProgressDialog;)V

    const-string v0, "addAttachment"

    invoke-direct {v2, v4, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    .line 4534
    :pswitch_4
    if-eqz p3, :cond_1

    .line 4537
    const/4 v1, 0x2

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageFragment;->addMedia(ILandroid/net/Uri;ZZZ)V

    goto/16 :goto_2

    .line 4544
    :pswitch_5
    if-eqz p3, :cond_1

    .line 4547
    const-string v0, "FILE_URI"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    move-object v0, p0

    .line 4548
    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageFragment;->addMedia(ILandroid/net/Uri;ZZZ)V

    goto/16 :goto_2

    .line 4555
    :pswitch_6
    if-eqz p3, :cond_1

    .line 4559
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageFragment;->addMedia(ILandroid/net/Uri;ZZZ)V

    goto/16 :goto_2

    .line 4563
    :pswitch_7
    const-string v0, "exit_ecm_result"

    invoke-virtual {p3, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 4564
    if-eqz v0, :cond_4

    .line 4565
    invoke-direct {p0, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->sendMessage(Z)V

    goto/16 :goto_2

    .line 4571
    :pswitch_8
    if-eqz p3, :cond_1

    .line 4574
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 4575
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 4578
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4579
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const-string v2, ""

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v1, v2, v3, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 4581
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 4582
    const-string v2, "vcard"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4583
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/mms/ui/ComposeMessageFragment$42;

    invoke-direct {v4, p0, v2, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment$42;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;Landroid/net/Uri;Landroid/app/ProgressDialog;)V

    const-string v0, "addAttachment"

    invoke-direct {v3, v4, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    .line 4601
    :cond_7
    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4602
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 4603
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4604
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getImportMediaCount(I)I

    move-result v9

    move v7, v4

    .line 4605
    :goto_3
    if-ge v7, v9, :cond_8

    .line 4606
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    move-object v2, v0

    .line 4607
    check-cast v2, Landroid/net/Uri;

    const/16 v6, 0x14

    move-object v1, p0

    move v3, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/mms/ui/ComposeMessageFragment;->addRawMedia(Landroid/net/Uri;ZZZI)V

    .line 4605
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_3

    .line 4609
    :cond_8
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4610
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v4}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 4611
    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_4

    .line 4612
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v4}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    goto/16 :goto_2

    .line 4621
    :pswitch_9
    const-string v0, "uristrings"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->parseMultiPicker(Ljava/util/ArrayList;I)V

    .line 4623
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4624
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v4}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 4625
    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_4

    .line 4626
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v4}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    goto/16 :goto_2

    .line 4632
    :pswitch_a
    const-string v0, "uristrings"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->parseMultiPicker(Ljava/util/ArrayList;I)V

    .line 4635
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4636
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v4}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 4637
    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_4

    .line 4638
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v4}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    goto/16 :goto_2

    .line 4644
    :pswitch_b
    const-string v0, "uristrings"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x21

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->parseMultiPicker(Ljava/util/ArrayList;I)V

    .line 4647
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4648
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v4}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 4649
    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_4

    .line 4650
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v4}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    goto/16 :goto_2

    .line 4658
    :pswitch_c
    const-string v0, "contact_number"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 4659
    if-eqz v0, :cond_4

    .line 4660
    invoke-static {v0, v5}, Lcom/android/mms/data/Contact;->get(Ljava/util/ArrayList;Z)Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 4661
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1, v0}, Lcom/android/mms/data/WorkingMessage;->addWorkingRecipients(Lcom/android/mms/data/ContactList;)V

    .line 4662
    invoke-direct {p0, v0, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtonByContactList(Lcom/android/mms/data/ContactList;Z)V

    goto/16 :goto_2

    .line 4668
    :pswitch_d
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "REQUEST_PHONE_MULTI"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4670
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 4681
    invoke-static {v0, v5}, Lcom/android/mms/data/Contact;->get(Ljava/util/ArrayList;Z)Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 4683
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 4684
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1, v0}, Lcom/android/mms/data/WorkingMessage;->addWorkingRecipients(Lcom/android/mms/data/ContactList;)V

    .line 4685
    invoke-direct {p0, v0, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtonByContactList(Lcom/android/mms/data/ContactList;Z)V

    goto/16 :goto_2

    .line 4691
    :pswitch_e
    const-string v0, "namecard_result"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4692
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->AddText(Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 4695
    :pswitch_f
    const-string v0, "result"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4696
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->AddText(Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 4700
    :pswitch_10
    const-string v0, "memotext"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4701
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->AddText(Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 4705
    :pswitch_11
    const-string v0, "taskstext"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4706
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->AddText(Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 4710
    :pswitch_12
    if-eqz p3, :cond_4

    const-string v0, "empty_thread"

    invoke-virtual {p3, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4711
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->clearThreadId()V

    .line 4713
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->requestClose()V

    goto/16 :goto_2

    .line 4723
    :pswitch_13
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAddContactIntent:Landroid/content/Intent;

    if-eqz v0, :cond_4

    .line 4724
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAddContactIntent:Landroid/content/Intent;

    const-string v1, "email"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4726
    if-nez v0, :cond_9

    .line 4727
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAddContactIntent:Landroid/content/Intent;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4730
    :cond_9
    if-eqz v0, :cond_4

    .line 4731
    invoke-static {v0, v4}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 4732
    if-eqz v0, :cond_4

    .line 4733
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->reload()V

    goto/16 :goto_2

    .line 4740
    :pswitch_14
    const-string v0, "location"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4742
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->AddText(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 4743
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 4751
    :pswitch_15
    const/16 v1, 0x50

    .line 4752
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "map_image"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 4754
    if-nez v0, :cond_a

    .line 4755
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "onActivityResult REQUEST_CODE_PICK_LOCATION mapImage is null"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4759
    :cond_a
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4760
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v5, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 4762
    new-instance v0, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v0}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 4763
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 4764
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 4765
    const-string v1, "image/jpg"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 4768
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1, v4}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    move-result-object v1

    .line 4769
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    .line 4771
    :try_start_0
    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Lcom/google/android/mms/pdu/PduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;J)Landroid/net/Uri;

    move-result-object v2

    .line 4772
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageFragment;->addMedia(ILandroid/net/Uri;ZZZ)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 4773
    :catch_0
    move-exception v0

    .line 4775
    invoke-virtual {v0}, Lcom/google/android/mms/MmsException;->printStackTrace()V

    goto/16 :goto_2

    .line 4780
    :pswitch_16
    const-string v0, "isSubject"

    invoke-virtual {p3, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 4781
    const-string v1, "transString"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4782
    const-string v2, "isSend"

    invoke-virtual {p3, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 4783
    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_d

    .line 4784
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4785
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4791
    :goto_4
    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4793
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4794
    invoke-direct {p0, v4, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtonsByRecipientEditor(ZZ)Z

    .line 4797
    :cond_b
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->recipientCount()I

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_c

    .line 4798
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    .line 4801
    :cond_c
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isPreparedForSending()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4802
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->confirmSendMessageIfNeeded()V

    goto/16 :goto_2

    .line 4787
    :cond_d
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4788
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_e
    move v3, v5

    goto/16 :goto_0

    .line 4460
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_7
        :pswitch_c
        :pswitch_d
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_13
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_b
        :pswitch_11
        :pswitch_14
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_16
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 2131
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "start onAttach"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2132
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 2133
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "end onAttach"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2134
    return-void
.end method

.method public onAttachmentChanged(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 3375
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "onAttachmentChanged(final int type)"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3379
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$24;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment$24;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3392
    return-void
.end method

.method public onAttachmentChanged(Z)V
    .locals 3
    .parameter "sendMultiple"

    .prologue
    .line 3341
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAttachmentChanged() sendMultiple = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3345
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$23;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment$23;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3365
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    monitor-enter v1

    .line 3367
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3371
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 3372
    return-void

    .line 3371
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 3368
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 5473
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick(),v="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5475
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5476
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5477
    const/4 v0, 0x1

    invoke-direct {p0, v3, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtonsByRecipientEditor(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5514
    :cond_0
    :goto_0
    return-void

    .line 5482
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->recipientCount()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_2

    .line 5483
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    .line 5486
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isPreparedForSending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5488
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->confirmSendMessageIfNeeded()V

    goto :goto_0

    .line 5490
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5492
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 5493
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 5495
    const/16 v0, 0x8

    invoke-direct {p0, v3, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->showAddAttachmentDialog(ZI)V

    goto :goto_0

    .line 5496
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5497
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    .line 5499
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.INTERACTION_TOPMENU"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5500
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5501
    const-string v1, "additional"

    const-string v2, "email-phone-multi"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5506
    :goto_1
    const-string v1, "existingRecipientCount"

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v2}, Lcom/android/mms/ui/RecipientsEditor;->getRecipientCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5508
    const-string v1, "maxRecipientCount"

    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5512
    const/16 v1, 0x13

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 5504
    :cond_5
    const-string v1, "additional"

    const-string v2, "phone-multi"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .parameter "newConfig"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3030
    const-string v2, "Mms/ComposeMessageFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onConfigurationChanged: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3032
    iget v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-ne v2, v3, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsKeyboardOpen:Z

    .line 3033
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    move v1, v3

    .line 3034
    .local v1, isLandscape:Z
    :goto_1
    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsLandscape:Z

    if-eq v2, v1, :cond_0

    .line 3035
    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsLandscape:Z

    .line 3037
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v2}, Lcom/android/mms/ui/RecipientsEditor;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3038
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/RecipientsEditor;->ensureImeVisible(Z)V

    .line 3074
    :cond_0
    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsKeyboardOpen:Z

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->onKeyboardStateChanged(Z)V

    .line 3076
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 3078
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mScreenWidth:I

    .line 3080
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->AddToButtonInPanel()V

    .line 3083
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->requestDrawPointerOnConverationList()V

    .line 3084
    return-void

    .end local v0           #display:Landroid/view/Display;
    .end local v1           #isLandscape:Z
    :cond_1
    move v2, v4

    .line 3032
    goto :goto_0

    :cond_2
    move v1, v4

    .line 3033
    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2139
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, " onCreate()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 2140
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2142
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    .line 2143
    iput v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonId:I

    .line 2145
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientList:Ljava/util/SortedMap;

    .line 2146
    iput v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientId:I

    .line 2148
    invoke-static {}, Lcom/android/mms/ui/NullDialog;->getInstance()Lcom/android/mms/ui/NullDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    .line 2150
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->setHasOptionsMenu(Z)V

    .line 2151
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 2152
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 6150
    packed-switch p1, :pswitch_data_0

    .line 6163
    :goto_0
    return-object v0

    .line 6153
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f09015e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09015f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 6158
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 6150
    nop

    :pswitch_data_0
    .packed-switch 0x7f080000
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2158
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, " onCreateView()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 2160
    const v0, 0x7f030006

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    .line 2162
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v1, 0x7f080010

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 2163
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, " onCreateView()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 2164
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    return-object v0
.end method

.method public onDeleteStarting()V
    .locals 1

    .prologue
    .line 1066
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSentMessage:Z

    .line 1067
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2958
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 2959
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, " onDestroy()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 2961
    invoke-static {}, Lcom/android/mms/ui/NullDialog;->getInstance()Lcom/android/mms/ui/NullDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    .line 2967
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;->setSoftInputMode(I)V

    .line 2969
    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_0

    .line 2970
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v3}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    .line 2979
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->reqReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2985
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mGreekInputHandler:Lcom/android/mms/ui/GreekInputHandler;

    invoke-virtual {v0}, Lcom/android/mms/ui/GreekInputHandler;->onActivityDestroyed()V

    .line 2988
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToastHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 2989
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 2990
    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mHandlerThread:Landroid/os/HandlerThread;

    .line 2991
    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToastHandler:Landroid/os/Handler;

    .line 2994
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v0, :cond_2

    .line 2995
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 3001
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachmentProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachmentProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3002
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "mAttachmentProgressDialog Progress Dismissed with onPause()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3003
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachmentProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 3007
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mLayoutSelectorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    .line 3008
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mLayoutSelectorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3009
    :cond_4
    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mLayoutSelectorDialog:Landroid/app/AlertDialog;

    .line 3011
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    .line 3015
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3016
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v0

    if-gtz v0, :cond_5

    .line 3017
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->clearThreadId()V

    .line 3021
    :cond_5
    sget-boolean v0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsRestore:Z

    if-eqz v0, :cond_6

    sput-boolean v3, Lcom/android/mms/ui/ComposeMessageFragment;->mIsRestore:Z

    .line 3022
    :cond_6
    sget-object v0, Lcom/android/mms/ui/ComposeMessageFragment;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_7

    sput-object v2, Lcom/android/mms/ui/ComposeMessageFragment;->mBundle:Landroid/os/Bundle;

    .line 3025
    :cond_7
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, " onDestroy()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 3026
    return-void

    .line 2980
    :catch_0
    move-exception v0

    .line 2981
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "reqReceiver not registered"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 5518
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEditorAction(),actionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5519
    if-eqz p3, :cond_0

    .line 5529
    const/4 v0, 0x0

    .line 5553
    :goto_0
    return v0

    .line 5534
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5535
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    .line 5536
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 5553
    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 5538
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText()V

    goto :goto_1

    .line 5540
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5541
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText()V

    goto :goto_1

    .line 5544
    :cond_4
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->recipientCount()I

    move-result v0

    if-nez v0, :cond_5

    .line 5545
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_5

    .line 5546
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    .line 5549
    :cond_5
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isPreparedForSending()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5550
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->confirmSendMessageIfNeeded()V

    goto :goto_1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 3208
    packed-switch p1, :pswitch_data_0

    .line 3225
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 3211
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    const/16 v3, 0x20

    if-ne v1, v3, :cond_0

    move v1, v2

    .line 3212
    goto :goto_0

    .line 3214
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->getNextSplitMode()I

    move-result v0

    .line 3215
    .local v0, splitMode:I
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3216
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->requestClose()V

    :goto_1
    move v1, v2

    .line 3220
    goto :goto_0

    .line 3218
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->close()V

    goto :goto_1

    .line 3208
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onMaxPendingMessagesReached()V
    .locals 3

    .prologue
    .line 3636
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->saveDraft(Z)Z

    .line 3638
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f090106

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->threadSafeToast(Landroid/app/Activity;II)V

    .line 3639
    return-void
.end method

.method public onMessageSent()V
    .locals 1

    .prologue
    .line 3440
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 3441
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->startMsgListQuery()V

    .line 3443
    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 13
    .parameter

    .prologue
    .line 2576
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\tonNewIntent(),intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/mms/Log;->securedDump(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 2579
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2580
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtonsByRecipientEditor(ZZ)Z

    .line 2583
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->noRecipientsInEditor()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2584
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDiscardDraftConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 2585
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDiscardDraftConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2587
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ComposeMessageFragment$1;)V

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;->setIntent(Landroid/content/Intent;)Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->showDiscardDraftConfirmDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDiscardDraftConfirmDialog:Landroid/app/AlertDialog;

    .line 2708
    :goto_0
    return-void

    .line 2591
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->isEnter:Z

    .line 2593
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->setIntent(Landroid/content/Intent;)V

    .line 2595
    const/4 v1, 0x0

    .line 2596
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSentMessage:Z

    .line 2597
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDraftSavedOnStop:Z

    .line 2601
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v3

    .line 2602
    const-string v0, "thread_id"

    const-wide/16 v5, 0x0

    invoke-virtual {p1, v0, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 2603
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 2604
    const-string v0, "conversationDeleteMode"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 2606
    const/4 v0, 0x0

    .line 2608
    if-eqz v7, :cond_f

    .line 2609
    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 2612
    :goto_1
    const/4 v0, 0x0

    .line 2613
    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-lez v9, :cond_7

    .line 2614
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, v5, v6, v2}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v1

    .line 2647
    :cond_3
    :goto_2
    const-string v2, "Mms/ComposeMessageFragment"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onNewIntent: data="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", thread_id extra is "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2648
    const-string v2, "Mms/ComposeMessageFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "     new conversation="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mConversation="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 2650
    if-eqz v1, :cond_4

    .line 2653
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/android/mms/data/Conversation;->blockMarkAsRead(Z)V

    .line 2661
    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v5

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v9

    cmp-long v0, v5, v9

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1, v0}, Lcom/android/mms/data/Conversation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    .line 2666
    :cond_4
    :goto_3
    if-eqz v0, :cond_b

    const-string v0, "android.intent.action.SEND"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v0

    if-lez v0, :cond_b

    .line 2667
    if-eqz v1, :cond_5

    .line 2668
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/mms/data/Conversation;->blockMarkAsRead(Z)V

    .line 2670
    :cond_5
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "onNewIntent: same conversation"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2673
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mOnStateChangeListener:Lcom/android/mms/ui/OnEventListener;

    invoke-interface {v0}, Lcom/android/mms/ui/OnEventListener;->onEvent()V

    .line 2694
    :goto_4
    if-eqz v8, :cond_6

    .line 2695
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->setConversationDeleteModeLayout()V

    .line 2697
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsNewThreadOpen:Z

    .line 2707
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2616
    :cond_7
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v9}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-nez v9, :cond_8

    .line 2620
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->syncWorkingRecipients()V

    .line 2621
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v7}, Lcom/android/mms/data/Conversation;->sameRecipient(Landroid/net/Uri;)Z

    move-result v0

    .line 2623
    :cond_8
    if-nez v0, :cond_3

    .line 2626
    const/4 v1, 0x0

    .line 2628
    if-eqz v2, :cond_e

    const-string v9, "smsto"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2630
    const-string v1, "sendto"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    move-object v2, v1

    .line 2633
    :goto_5
    if-eqz v2, :cond_9

    .line 2634
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v1, v2, v9, v10}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Ljava/util/ArrayList;ZZ)Lcom/android/mms/data/Conversation;

    move-result-object v1

    .line 2635
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->showInvalidRecipientsPopup(Ljava/util/ArrayList;)V

    goto/16 :goto_2

    .line 2637
    :cond_9
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->isNeedCreateThread(Landroid/content/Intent;)Z

    move-result v9

    invoke-static {v1, v7, v2, v9}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Landroid/net/Uri;ZZ)Lcom/android/mms/data/Conversation;

    move-result-object v1

    .line 2640
    invoke-direct {p0, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->hasRecipientData(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 2641
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->alertInvalidRecipientsPopup(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 2661
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 2675
    :cond_b
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "onNewIntent: different conversation, initialize..."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2676
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsNewThreadOpen:Z

    .line 2677
    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_d

    .line 2678
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    .line 2682
    :goto_6
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->dismissAllDialog()V

    .line 2683
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->disableDeleteModeLayout()V

    .line 2684
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->initialize(Landroid/os/Bundle;J)V

    .line 2685
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v0

    if-nez v0, :cond_c

    .line 2686
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->bindToContactHeaderWidget(Lcom/android/mms/data/ContactList;)V

    .line 2688
    :cond_c
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->loadMessageContent()V

    .line 2690
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->requestDrawPointerOnConverationList()V

    goto/16 :goto_4

    .line 2680
    :cond_d
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->saveDraft(Z)Z

    goto :goto_6

    :cond_e
    move-object v2, v1

    goto :goto_5

    :cond_f
    move-object v2, v0

    goto/16 :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x1

    .line 3869
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    move v9, v1

    .line 4060
    :cond_0
    :goto_0
    return v9

    .line 3871
    :sswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->previewSlideshow()V

    goto :goto_0

    .line 3875
    :sswitch_1
    invoke-direct {p0, v9}, Lcom/android/mms/ui/ComposeMessageFragment;->showSubjectEditor(Z)V

    .line 3876
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 3878
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_1

    .line 3879
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-string v2, ""

    invoke-virtual {v0, v2, v9}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 3880
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 3881
    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_1

    .line 3882
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    .line 3887
    :cond_1
    sget-boolean v0, Lcom/android/mms/ui/ComposeMessageFragment;->isSipVisible:Z

    if-nez v0, :cond_2

    .line 3888
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;->toggleSoftInputFromWindow(Landroid/os/IBinder;II)V

    .line 3891
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    if-eqz v0, :cond_2

    .line 3892
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    invoke-interface {v0}, Lcom/android/mms/ui/OnEventListener;->onEvent()V

    .line 3894
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->showSizeString(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3898
    :sswitch_2
    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->showSubjectEditor(Z)V

    .line 3899
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v9}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 3900
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v9}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    .line 3901
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->showSizeString(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3904
    :sswitch_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->discard()V

    .line 3905
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    .line 3907
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->requestClose()V

    goto :goto_0

    .line 3910
    :sswitch_4
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isPreparedForSending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3911
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->confirmSendMessageIfNeeded()V

    goto :goto_0

    .line 3915
    :sswitch_5
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onSearchRequested()Z

    goto/16 :goto_0

    .line 3918
    :sswitch_6
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v0

    if-ne v0, v9, :cond_3

    .line 3920
    invoke-virtual {p0, v1, v9}, Lcom/android/mms/ui/ComposeMessageFragment;->setDeleteModeLayout(ZZ)V

    .line 3921
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v0, :cond_0

    .line 3923
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 3924
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/16 v0, 0x70b

    invoke-static {v1, v2, v3, v0}, Lcom/android/mms/data/Conversation;->startQueryHaveLockedMessages(Landroid/content/AsyncQueryHandler;JI)V

    goto/16 :goto_0

    .line 3927
    :cond_3
    invoke-virtual {p0, v9, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->setDeleteModeLayout(ZZ)V

    goto/16 :goto_0

    .line 3931
    :sswitch_7
    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$34;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$34;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->exitComposeMessageActivity(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 3941
    :sswitch_8
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->dialRecipient()V

    goto/16 :goto_0

    .line 3944
    :sswitch_9
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->showSmileyDialog()V

    goto/16 :goto_0

    .line 3948
    :sswitch_a
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    .line 3949
    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-ne v0, v9, :cond_0

    invoke-virtual {v2, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3950
    invoke-virtual {v2, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 3951
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3952
    const/high16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3953
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3960
    :sswitch_b
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->showAddtextDialog()V

    goto/16 :goto_0

    .line 3963
    :sswitch_c
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAddContactIntent:Landroid/content/Intent;

    .line 3964
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAddContactIntent:Landroid/content/Intent;

    const/16 v1, 0x1d

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 3969
    :sswitch_d
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->showChooseContactDialog()V

    goto/16 :goto_0

    .line 3974
    :sswitch_e
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    .line 3976
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f09005e

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v2}, Lcom/android/mms/ui/MmsRichContainer;->getTotalPageCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3980
    new-instance v2, Lcom/android/mms/ui/ComposeMessageFragment$35;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessageFragment$35;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 3988
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v3}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getDuration()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3994
    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 3996
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result v0

    if-ge v3, v0, :cond_4

    .line 3997
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result v3

    .line 3999
    :cond_4
    new-instance v0, Lcom/android/mms/ui/MessagePickerDialog;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result v4

    const/16 v5, 0x64

    const/4 v6, -0x1

    const v8, 0x7f020048

    invoke-direct/range {v0 .. v8}, Lcom/android/mms/ui/MessagePickerDialog;-><init>(Landroid/content/Context;Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;IIIILjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    .line 4001
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessagePickerDialog;->show()V

    goto/16 :goto_0

    .line 3990
    :catch_0
    move-exception v0

    .line 3991
    const-string v1, "Mms/ComposeMessageFragment"

    const-string v2, "NullPointerException !!!"

    invoke-static {v1, v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 4006
    :sswitch_f
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->showLayoutSelectorDialog()V

    goto/16 :goto_0

    .line 4010
    :sswitch_10
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 4011
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2, v0}, Lcom/android/mms/data/WorkingMessage;->addSlide(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4012
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/16 v4, 0x10

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    .line 4014
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v2, v0, v1}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    .line 4017
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4018
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 4019
    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_0

    .line 4020
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    goto/16 :goto_0

    .line 4028
    :sswitch_11
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4029
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v0

    .line 4030
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1, v0}, Lcom/android/mms/data/WorkingMessage;->removeSlide(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4031
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/MmsRichContainer;->removePage(I)V

    .line 4032
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->showSizeString(Ljava/lang/CharSequence;)V

    .line 4033
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    .line 4035
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V

    goto/16 :goto_0

    .line 4042
    :sswitch_12
    new-instance v2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/android/mms/ui/TranslateActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4043
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4044
    const-string v0, "fromString"

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4049
    :cond_6
    :goto_1
    const-string v0, "editable"

    invoke-virtual {v2, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4050
    const-string v0, "isMms"

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4051
    const-string v3, "isSubject"

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    :goto_2
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4053
    const-string v0, "hasRecipient"

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->recipientCount()I

    move-result v3

    if-lez v3, :cond_7

    move v1, v9

    :cond_7
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4054
    const/16 v0, 0x2f

    invoke-virtual {p0, v2, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 4055
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    goto/16 :goto_0

    .line 4045
    :cond_8
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4047
    const-string v0, "fromString"

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v3}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_9
    move v0, v1

    .line 4051
    goto :goto_2

    .line 3869
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x66 -> :sswitch_6
        0x68 -> :sswitch_3
        0x69 -> :sswitch_4
        0x6a -> :sswitch_8
        0x6b -> :sswitch_7
        0x6d -> :sswitch_b
        0x6e -> :sswitch_2
        0x70 -> :sswitch_a
        0x77 -> :sswitch_5
        0x7e -> :sswitch_9
        0x7f -> :sswitch_c
        0x82 -> :sswitch_d
        0x85 -> :sswitch_0
        0x8c -> :sswitch_e
        0x98 -> :sswitch_f
        0x99 -> :sswitch_10
        0x9a -> :sswitch_11
        0x9b -> :sswitch_12
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 2888
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "\t\t onPause()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 2889
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 2895
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->resetChildView()V

    .line 2896
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 2897
    sget-object v0, Lcom/android/mms/ui/ComposeMessageFragment;->mDelAnimProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mms/ui/ComposeMessageFragment;->mDelAnimProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2898
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "DeleteAnimation Progress Dismissed with onPause()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2899
    sget-object v0, Lcom/android/mms/ui/ComposeMessageFragment;->mDelAnimProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2901
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->isHideCompose:Z

    .line 2903
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mGreekInputHandler:Lcom/android/mms/ui/GreekInputHandler;

    invoke-virtual {v0}, Lcom/android/mms/ui/GreekInputHandler;->onActivityPause()V

    .line 2906
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    if-eqz v0, :cond_1

    .line 2907
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->dismissUIDataDialog()V

    .line 2908
    :cond_1
    return-void
.end method

.method public onPreMessageSent()V
    .locals 2

    .prologue
    .line 3434
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mResetMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3435
    return-void
.end method

.method public onPrepareComposerOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter

    .prologue
    const/16 v2, 0x6a

    const v7, 0x202014a

    const/16 v6, 0x66

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3661
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "onPrepareOptionsMenu()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3664
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isCbSms()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isWapPushMessage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3665
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 3667
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 3668
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 3669
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v5, :cond_2

    .line 3670
    const v0, 0x7f0900af

    invoke-interface {p1, v4, v6, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3837
    :cond_1
    :goto_0
    return v5

    .line 3673
    :cond_2
    const v0, 0x7f0900b0

    invoke-interface {p1, v4, v6, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 3682
    :cond_3
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isBottomPanelVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3683
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3685
    :cond_4
    const/16 v0, 0x7e

    const v1, 0x7f0900ee

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02007a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3691
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3694
    :cond_6
    const/16 v0, 0x85

    const v1, 0x7f09005b

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2020161

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3698
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isBottomPanelVisible()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3699
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3700
    const/16 v0, 0x6d

    const v1, 0x7f090152

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020065

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3706
    :cond_7
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientCallable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3707
    const v0, 0x7f090009

    invoke-interface {p1, v4, v2, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020068

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3728
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const-string v1, "com.android.contacts"

    invoke-static {v0, v1}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3729
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 3730
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v1

    if-ne v1, v5, :cond_9

    invoke-virtual {v0, v4}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3731
    const/16 v0, 0x70

    const v1, 0x7f090066

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02006d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3735
    :cond_9
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->buildAddAddressToContactMenuItem(Landroid/view/Menu;)V

    .line 3739
    :cond_a
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3741
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    sget v1, Lcom/android/mms/ui/MessageUtils;->MESSAGE_MAX_SLIDE_NUM:I

    if-ge v0, v1, :cond_c

    .line 3742
    :cond_b
    const/16 v0, 0x99

    const v1, 0x7f09002d

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020062

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3745
    :cond_c
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 3746
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    .line 3747
    if-le v0, v5, :cond_d

    .line 3749
    const/16 v0, 0x9a

    const v1, 0x7f09002c

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020081

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3758
    :cond_d
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "  ComposeMessage     MMS Subject feature enable !!!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3759
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3760
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isSubjectEditorVisible()Z

    move-result v0

    if-nez v0, :cond_17

    .line 3761
    const/16 v0, 0x64

    const v1, 0x7f09003a

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020064

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3772
    :cond_e
    :goto_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3773
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3774
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    if-lez v0, :cond_10

    .line 3776
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getDuration()I

    move-result v0

    .line 3779
    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3781
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result v1

    if-ge v0, v1, :cond_f

    .line 3782
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result v0

    .line 3785
    :cond_f
    if-ne v0, v5, :cond_18

    .line 3786
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f09005d

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3792
    :goto_3
    const/16 v1, 0x8c

    invoke-interface {p1, v4, v1, v4, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020074

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3798
    :cond_10
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3801
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getMMSLayout()Z

    move-result v0

    if-ne v0, v5, :cond_19

    .line 3802
    const v0, 0x7f090060

    .line 3806
    :goto_4
    const/16 v1, 0x98

    invoke-interface {p1, v4, v1, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02007f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3810
    :cond_11
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_12

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v0

    if-nez v0, :cond_12

    .line 3811
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 3812
    if-eqz v0, :cond_12

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_12

    .line 3813
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v5, :cond_1a

    .line 3814
    const v0, 0x7f0900af

    invoke-interface {p1, v4, v6, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3831
    :cond_12
    :goto_5
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsTranslateMenuON:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_14

    :cond_13
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3834
    :cond_14
    const/16 v0, 0x9b

    const v1, 0x7f0901c5

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020088

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 3712
    :cond_15
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientCallable()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3713
    const v0, 0x7f090009

    invoke-interface {p1, v4, v2, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020068

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3717
    :cond_16
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isBottomPanelVisible()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3718
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3719
    const/16 v0, 0x6d

    const v1, 0x7f090152

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020065

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 3763
    :cond_17
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isSubjectEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3765
    const/16 v0, 0x6e

    const v1, 0x7f090153

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020083

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 3789
    :cond_18
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f09016b

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 3804
    :cond_19
    const v0, 0x7f090061

    goto/16 :goto_4

    .line 3817
    :cond_1a
    const v0, 0x7f0900b0

    invoke-interface {p1, v4, v6, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_5
.end method

.method public onProtocolChanged(Z)V
    .locals 3
    .parameter "mms"

    .prologue
    .line 3395
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProtocolChanged(),mms="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3399
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$25;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment$25;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3417
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2836
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "\t\t onResume()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 2837
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 2839
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 2840
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const-string v1, "com.android.contacts"

    invoke-static {v0, v1}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2841
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2846
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 2847
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;->setSoftInputMode(I)V

    .line 2850
    :cond_1
    iput-boolean v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->isHideCompose:Z

    .line 2856
    iput-boolean v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSentMessage:Z

    .line 2859
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getInputmode(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ComposeMessageFragment;->mEncodingType:I

    .line 2861
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume(),mEncodingType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/ui/ComposeMessageFragment;->mEncodingType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2864
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->showAttachListPanel()V

    .line 2866
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x378

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 2869
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2870
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->showSip()V

    .line 2873
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 2875
    invoke-direct {p0, v5}, Lcom/android/mms/ui/ComposeMessageFragment;->updateEditorSize(Z)V

    .line 2882
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mGreekInputHandler:Lcom/android/mms/ui/GreekInputHandler;

    invoke-virtual {v0}, Lcom/android/mms/ui/GreekInputHandler;->onActivityResume()V

    .line 2884
    return-void

    .line 2843
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 2819
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2820
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2822
    const-string v0, "recipients"

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->serialize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2824
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, p1}, Lcom/android/mms/data/WorkingMessage;->writeStateToBundle(Landroid/os/Bundle;)V

    .line 2825
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->saveToButtonState(Landroid/os/Bundle;)V

    .line 2827
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mExitOnSent:Z

    if-eqz v0, :cond_0

    .line 2828
    const-string v0, "exit_on_sent"

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mExitOnSent:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2832
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2715
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "\t onStart()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 2716
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 2717
    sput-boolean v4, Lcom/android/mms/ui/ComposeMessageFragment;->isComposerClosed:Z

    .line 2718
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v3}, Lcom/android/mms/data/Conversation;->blockMarkAsRead(Z)V

    .line 2719
    iput-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->isEnter:Z

    .line 2721
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->initFocus()V

    .line 2724
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mHttpProgressReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mHttpProgressFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2725
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->addRecipientsListener()V

    .line 2728
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDraftSavedOnStop:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2729
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "onStart : deleteDraft()!!!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2730
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->deleteDraft()V

    .line 2731
    iput-boolean v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDraftSavedOnStop:Z

    .line 2734
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->loadMessageContent()V

    .line 2736
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 2737
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->reloadContactList()V

    .line 2740
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2741
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->bindToContactHeaderWidget(Lcom/android/mms/data/ContactList;)V

    .line 2744
    :cond_1
    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_2

    .line 2745
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v3}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    .line 2746
    invoke-direct {p0, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->drawTopPanel(Z)V

    .line 2750
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->requestDrawPointerOnConverationList()V

    .line 2752
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->setMessageListBackground()V

    .line 2754
    iput-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsOnScreen:Z

    .line 2755
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2914
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "\t onStop()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 2915
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 2917
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getRemoveComoposer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2918
    const/4 v0, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtonsByRecipientEditor(ZZ)Z

    .line 2929
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;->windowDismissed(Landroid/os/IBinder;)V

    .line 2933
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v2}, Lcom/android/mms/data/Conversation;->blockMarkAsRead(Z)V

    .line 2936
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 2939
    sget-boolean v0, Lcom/android/mms/ui/ComposeMessageFragment;->mDoNotRefreshDraftCache:Z

    if-nez v0, :cond_1

    .line 2940
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getRemoveComoposer()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->saveDraft(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDraftSavedOnStop:Z

    .line 2942
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->removeRecipientsListener()V

    .line 2945
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mHttpProgressReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2951
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/mms/ui/MessageListAdapter;->animationIdx:I

    .line 2953
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsOnScreen:Z

    .line 2954
    return-void

    .line 2946
    :catch_0
    move-exception v0

    .line 2947
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "onStop() was called twice!!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 2
    .parameter "updated"

    .prologue
    .line 7146
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMessageListItemHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$60;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment$60;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/data/Contact;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7169
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 3123
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->checkPendingNotification()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3126
    :goto_0
    return-void

    .line 3124
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasFocus"

    .prologue
    .line 3130
    if-eqz p1, :cond_0

    .line 3131
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->checkPendingNotification()V

    .line 3133
    :cond_0
    return-void
.end method

.method public requestFocusOnComposer()Z
    .locals 1

    .prologue
    .line 9176
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isComposerPanelVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9177
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText()V

    .line 9182
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 9179
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->requestFocus()Z

    goto :goto_0
.end method

.method protected resetChildView()V
    .locals 7

    .prologue
    .line 6816
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageListView;->getChildCount()I

    move-result v2

    .line 6817
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 6818
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v4, v0}, Lcom/android/mms/ui/MessageListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 6819
    .local v3, thisView:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    .line 6820
    .local v1, p:Landroid/widget/AbsListView$LayoutParams;
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    .end local v1           #p:Landroid/widget/AbsListView$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    const/4 v6, 0x0

    invoke-direct {v1, v4, v5, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    .line 6821
    .restart local v1       #p:Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6817
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6823
    .end local v1           #p:Landroid/widget/AbsListView$LayoutParams;
    .end local v3           #thisView:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public resizeImage(Lcom/google/android/mms/pdu/PduPart;ZZ)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 7524
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "onResizeResult()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 7525
    if-nez p1, :cond_1

    .line 7526
    const/4 v1, -0x1

    const v2, 0x7f0900dc

    const/4 v3, 0x0

    const/16 v4, 0xa

    move-object v0, p0

    move v5, p3

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/ComposeMessageFragment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    .line 7562
    :cond_0
    :goto_0
    return-void

    .line 7531
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    .line 7532
    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    .line 7534
    const/4 v4, 0x0

    .line 7535
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getMessageUri()Landroid/net/Uri;

    move-result-object v0

    .line 7536
    if-nez v0, :cond_2

    .line 7537
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    move-result-object v0

    .line 7540
    :cond_2
    :try_start_0
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/mms/pdu/PduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;J)Landroid/net/Uri;

    move-result-object v4

    .line 7542
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v2

    .line 7543
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x1

    const/4 v6, 0x0

    move v5, p2

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/data/WorkingMessage;->setAttachment(Landroid/content/ContentResolver;IILandroid/net/Uri;ZZZ)I

    move-result v1

    .line 7545
    const-string v0, "Mms:app"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7546
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResizeImageResultCallback: dataUri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    move-object v3, v4

    .line 7551
    :goto_1
    if-nez v1, :cond_4

    .line 7552
    invoke-virtual {p0, p3}, Lcom/android/mms/ui/ComposeMessageFragment;->onAttachmentChanged(Z)V

    .line 7555
    :cond_4
    const v2, 0x7f0900dc

    const/16 v4, 0xa

    move-object v0, p0

    move v5, p3

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/ComposeMessageFragment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    .line 7557
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->isResizingImage:Z

    .line 7558
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 7559
    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_0

    .line 7560
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    goto :goto_0

    .line 7548
    :catch_0
    move-exception v0

    .line 7549
    const/4 v1, -0x1

    move-object v3, v4

    goto :goto_1
.end method

.method protected sendSmsInInternationalRoaming(I)V
    .locals 3
    .parameter

    .prologue
    .line 1364
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendSmsInInternationalRoaming : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    packed-switch p1, :pswitch_data_0

    .line 1382
    :goto_0
    return-void

    .line 1368
    :pswitch_0
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "saveSmsToPending: call WorkingMessage.saveSmsToPending"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->saveSmsToPending()V

    .line 1371
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendingMessage:Z

    goto :goto_0

    .line 1375
    :pswitch_1
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->checkInputModeAndSendMessage()V

    goto :goto_0

    .line 1379
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->close()V

    goto :goto_0

    .line 1366
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setAnimationEnable(Z)V
    .locals 0
    .parameter "isAnimationEnable"

    .prologue
    .line 2762
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsAnimationEnable:Z

    .line 2763
    return-void
.end method

.method public setConversationDeleteModeLayout()V
    .locals 2

    .prologue
    .line 8632
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "setConversationDeleteModeLayout()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 8634
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    if-eqz v0, :cond_0

    .line 8635
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 8636
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposerPanel:Landroid/widget/ScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 8637
    return-void
.end method

.method public setDeleteModeLayout(ZZ)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8566
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDeleteModeLayout(),isDeleteMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 8567
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteMode:Z

    .line 8570
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->addDeleteSoftKey()V

    .line 8572
    if-eqz p1, :cond_1

    .line 8573
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8574
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 8575
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    .line 8576
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090098

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageContactHeader;->setDisplayName(Ljava/lang/CharSequence;)V

    .line 8577
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposerPanel:Landroid/widget/ScrollView;

    invoke-virtual {v0, v5}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 8578
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 8579
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setFocusable(Z)V

    .line 8580
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSoftkeyRight:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setFocusable(Z)V

    .line 8582
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v6}, Lcom/android/mms/ui/MessageListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 8584
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/MessageListView;->setClickable(Z)V

    .line 8585
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 8594
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectAllText:Landroid/widget/TextView;

    const v1, 0x7f090114

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 8618
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteMode:Z

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->setDeleteMode(Z)V

    .line 8619
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->requestLayout()V

    .line 8620
    return-void

    .line 8596
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8597
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    .line 8598
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setFocusable(Z)V

    .line 8599
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSoftkeyRight:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setFocusable(Z)V

    .line 8601
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageContactHeader;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 8602
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageContactHeader;->bindContactHeader(Lcom/android/mms/data/ContactList;)Z

    .line 8604
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isCbSms()Z

    move-result v0

    if-eq v0, v4, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isWapPushMessage()Z

    move-result v0

    if-ne v0, v4, :cond_4

    .line 8606
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposerPanel:Landroid/widget/ScrollView;

    invoke-virtual {v0, v5}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 8611
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v6}, Lcom/android/mms/ui/MessageListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 8612
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/MessageListView;->setClickable(Z)V

    .line 8613
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v6}, Lcom/android/mms/ui/MessageListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 8614
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    if-eqz v0, :cond_0

    .line 8615
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText()V

    goto :goto_0

    .line 8608
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposerPanel:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setOnCloseListener(Lcom/android/mms/ui/OnEventListener;)V
    .locals 0
    .parameter "onEventListener"

    .prologue
    .line 8476
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mOnCloseListener:Lcom/android/mms/ui/OnEventListener;

    .line 8477
    return-void
.end method

.method public setOnSipUpListener(Lcom/android/mms/ui/OnEventListener;)V
    .locals 0
    .parameter "onEventListener"

    .prologue
    .line 8482
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    .line 8483
    return-void
.end method

.method public setOnStateChangedListener(Lcom/android/mms/ui/OnEventListener;)V
    .locals 0
    .parameter "onEventListener"

    .prologue
    .line 8488
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mOnStateChangeListener:Lcom/android/mms/ui/OnEventListener;

    .line 8489
    return-void
.end method

.method public setRemoveComposer(Z)V
    .locals 3
    .parameter "isRemoveComposer"

    .prologue
    .line 9410
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRemoveComoposer() isRemoveComposer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 9411
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRemoveComposer:Z

    .line 9412
    return-void
.end method

.method public setSelectAll(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 8689
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 8690
    return-void
.end method

.method public setSizeString(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 7737
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getSizeStringView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7738
    return-void
.end method

.method public showItemContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Lcom/android/mms/ui/MessageItem;Lcom/android/mms/ui/MessageListItem;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x7c

    const/16 v7, 0x79

    const/16 v3, 0x76

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 8861
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, p2}, Lcom/android/mms/ui/MessageListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectedPosition:I

    .line 8863
    invoke-direct {p0, p1, p2, p4}, Lcom/android/mms/ui/ComposeMessageFragment;->addPositionBasedMenuItems(Landroid/view/ContextMenu;Landroid/view/View;Lcom/android/mms/ui/MessageListItem;)V

    .line 8866
    if-nez p3, :cond_1

    .line 9011
    :cond_0
    :goto_0
    return-void

    .line 8871
    :cond_1
    const v0, 0x7f090028

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 8873
    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$MsgListMenuClickListener;

    invoke-direct {v1, p0, p3, p2}, Lcom/android/mms/ui/ComposeMessageFragment$MsgListMenuClickListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/MessageItem;Landroid/view/View;)V

    .line 8875
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isCbSms()Z

    move-result v0

    if-eq v0, v6, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isWapPushMessage()Z

    move-result v0

    if-ne v0, v6, :cond_3

    .line 8876
    :cond_2
    const v0, 0x7f0900af

    invoke-interface {p1, v5, v3, v5, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 8878
    const v0, 0x7f09001c

    invoke-interface {p1, v5, v7, v5, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 8880
    const v0, 0x7f090022

    invoke-interface {p1, v5, v4, v5, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0

    .line 8886
    :cond_3
    invoke-virtual {p3}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8887
    const/16 v0, 0x7d

    const v2, 0x7f0900ad

    invoke-interface {p1, v5, v0, v5, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 8890
    :cond_4
    const v0, 0x7f0900af

    invoke-interface {p1, v5, v3, v5, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 8894
    invoke-direct {p0, p1, v1, p3}, Lcom/android/mms/ui/ComposeMessageFragment;->addCallAndContactMenuItems(Landroid/view/ContextMenu;Lcom/android/mms/ui/ComposeMessageFragment$MsgListMenuClickListener;Lcom/android/mms/ui/MessageItem;)V

    .line 8896
    invoke-virtual {p3}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p3}, Lcom/android/mms/ui/MessageItem;->isWpm()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 8897
    :cond_5
    const v0, 0x7f090022

    invoke-interface {p1, v5, v4, v5, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 8901
    :cond_6
    iget-boolean v0, p3, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    if-eqz v0, :cond_c

    .line 8902
    const/16 v0, 0x81

    const v2, 0x7f0900b2

    invoke-interface {p1, v5, v0, v5, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 8952
    :goto_1
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-ne v0, v6, :cond_7

    invoke-virtual {p3}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 8953
    const/16 v0, 0x72

    const v2, 0x7f0900ac

    invoke-interface {p1, v5, v0, v5, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 8956
    :cond_7
    invoke-virtual {p3}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 8958
    iget-object v0, p3, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_d

    .line 8962
    const/16 v0, 0x87

    const v2, 0x7f090154

    invoke-interface {p1, v5, v0, v5, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 8984
    :cond_8
    :goto_2
    invoke-virtual {p3}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 8985
    const v0, 0x7f09001c

    invoke-interface {p1, v5, v7, v5, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 8991
    :cond_9
    invoke-virtual {p3}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 8993
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "airplane_mode_on"

    invoke-static {v0, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 8994
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {p3}, Lcom/android/mms/ui/MessageOptions;->isSingleSms(Lcom/android/mms/ui/MessageItem;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p3}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v2

    if-eq v2, v6, :cond_a

    invoke-virtual {p3}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_b

    :cond_a
    if-nez v0, :cond_b

    .line 8998
    const/16 v0, 0x83

    const v2, 0x7f090023

    invoke-interface {p1, v5, v0, v5, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 9004
    :cond_b
    const/16 v0, 0x75

    const v2, 0x7f090014

    invoke-interface {p1, v5, v0, v5, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 9008
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsTranslateMenuON:Z

    if-eqz v0, :cond_0

    iget-object v0, p3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 9009
    const/16 v0, 0x9b

    const v2, 0x7f0901c5

    invoke-interface {p1, v5, v0, v5, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 8904
    :cond_c
    const/16 v0, 0x80

    const v2, 0x7f0900b1

    invoke-interface {p1, v5, v0, v5, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 8965
    :cond_d
    invoke-virtual {p3}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 8967
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p3, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    .line 8971
    if-eqz v0, :cond_8

    .line 8972
    const/4 v0, 0x0

    const/16 v2, 0x87

    const/4 v3, 0x0

    const v4, 0x7f090154

    invoke-interface {p1, v0, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 8976
    :catch_0
    move-exception v0

    .line 8977
    const-string v2, "Mms/ComposeMessageFragment"

    invoke-virtual {v0}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2
.end method

.method public showSip()V
    .locals 6

    .prologue
    .line 7429
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v2}, Lcom/android/mms/ui/RecipientsEditor;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7430
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    .line 7442
    .local v0, focusedview:Landroid/view/View;
    :goto_0
    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsAnimationEnable:Z

    if-nez v2, :cond_3

    .line 7443
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 7445
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    sget-boolean v2, Lcom/android/mms/ui/ComposeMessageFragment;->isSipVisible:Z

    if-nez v2, :cond_0

    .line 7446
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 7447
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 7462
    .end local v0           #focusedview:Landroid/view/View;
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    :goto_1
    return-void

    .line 7432
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isSubjectEditorVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7433
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    .restart local v0       #focusedview:Landroid/view/View;
    goto :goto_0

    .line 7435
    .end local v0           #focusedview:Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isBodyFocused()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7436
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    .restart local v0       #focusedview:Landroid/view/View;
    goto :goto_0

    .line 7452
    :cond_3
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/mms/ui/ComposeMessageFragment$63;

    invoke-direct {v3, p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment$63;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/view/View;)V

    const-wide/16 v4, 0xa

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method public showSip(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 7412
    if-nez p1, :cond_0

    .line 7424
    :goto_0
    return-void

    .line 7415
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$62;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment$62;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/view/View;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public showSizeString(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter

    .prologue
    .line 7715
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    .line 7716
    if-eqz v0, :cond_0

    .line 7717
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->expectedMessageSize()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->setSizeString(Ljava/lang/CharSequence;)V

    .line 7730
    :goto_0
    return-void

    .line 7719
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->getMessageCalculateParam(Ljava/lang/CharSequence;)[I

    move-result-object v0

    .line 7720
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgCount:I

    .line 7721
    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRemainingInCurrentMessage:I

    .line 7724
    invoke-static {}, Lcom/android/mms/MmsConfig;->getComposeMaxLengthLimit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7725
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRemainingInCurrentMessage:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->setSizeString(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7727
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRemainingInCurrentMessage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->setSizeString(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showWarningDialog(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 4998
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5000
    const v1, 0x7f02005e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 5001
    const v1, 0x7f09009d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 5002
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 5003
    const v1, 0x1040013

    invoke-virtual {v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5004
    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5005
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 5006
    return-void
.end method

.method undeliveredMessageDialog(J)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 6211
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030027

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 6214
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    .line 6215
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f090019

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v5, p1, p2}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 6222
    :goto_0
    const v1, 0x7f08000e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6224
    new-instance v1, Landroid/widget/Toast;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 6225
    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 6226
    invoke-virtual {v1, v6}, Landroid/widget/Toast;->setDuration(I)V

    .line 6227
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 6228
    return-void

    .line 6219
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f09001a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_0
.end method
