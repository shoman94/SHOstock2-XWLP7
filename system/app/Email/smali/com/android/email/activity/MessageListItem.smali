.class public Lcom/android/email/activity/MessageListItem;
.super Landroid/view/View;
.source "MessageListItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageListItem$SearchItem;
    }
.end annotation


# static fields
.field private static iconStackRightBound:I

.field private static mSelectedIconNinePatch:Landroid/graphics/NinePatch;

.field private static sAttachmentIcon:Landroid/graphics/Bitmap;

.field private static sAttachmentIconDimmed:Landroid/graphics/Bitmap;

.field private static sAttachmentIconPressed:Landroid/graphics/Bitmap;

.field private static sAttachmentPaddingLeft:I

.field private static sAttachmentPaddingTopHuge:I

.field private static sAttachmentPaddingTopLarge:I

.field private static sAttachmentPaddingTopNormal:I

.field private static sAttachmentPaddingTopSmall:I

.field private static sAttachmentPaddingTopTiny:I

.field private static sBackgroundThreadItemColorLightReadDarkTheme:I

.field private static sBackgroundThreadItemColorLightReadWhiteTheme:I

.field private static sBackgroundThreadItemColorLightUnreadDarkTheme:I

.field private static sBackgroundThreadItemColorLightUnreadWhiteTheme:I

.field private static sCheckboxHitWidth:I

.field private static sCheckboxPaddingTopHuge:I

.field private static sCheckboxPaddingTopLarge:I

.field private static sCheckboxPaddingTopNormal:I

.field private static sCheckboxPaddingTopSmall:I

.field private static sCheckboxPaddingTopTiny:I

.field private static sColorTipWidth:I

.field private static sDatePaddingRight:I

.field private static sDatePaddingRightDark:I

.field private static sDatePaddingTopHuge:I

.field private static sDatePaddingTopLarge:I

.field private static sDatePaddingTopNormal:I

.field private static sDatePaddingTopSmall:I

.field private static sDatePaddingTopTiny:I

.field private static final sDatePaint:Landroid/text/TextPaint;

.field private static sDateReadTextColorDarkDarkTheme:I

.field private static sDateReadTextColorDarkWhiteTheme:I

.field private static sDateReadTextColorLightDarkTheme:I

.field private static sDateReadTextColorLightWhiteTheme:I

.field private static sDateUnReadTextColorDarkDarkTheme:I

.field private static sDateUnReadTextColorDarkWhiteTheme:I

.field private static sDateUnReadTextColorLightDarkTheme:I

.field private static sDateUnReadTextColorLightWhiteTheme:I

.field private static sDraftIconClient:Landroid/graphics/Bitmap;

.field private static sDraftIconServer:Landroid/graphics/Bitmap;

.field private static sEncryptIcon:Landroid/graphics/Bitmap;

.field private static sFavoriteHitWidth:I

.field private static sFavoriteIconOff:Landroid/graphics/Bitmap;

.field private static sFavoriteIconOn:Landroid/graphics/Bitmap;

.field private static sFavoriteIconPressed:Landroid/graphics/Bitmap;

.field private static sFavoriteIconWidth:I

.field private static sFavoritePaddingRight:I

.field private static sFavoritePaddingRightDark:I

.field private static sFavoritePaddingTopHuge:I

.field private static sFavoritePaddingTopLarge:I

.field private static sFavoritePaddingTopNormal:I

.field private static sFavoritePaddingTopSmall:I

.field private static sFavoritePaddingTopTiny:I

.field private static sFocusedBackgroundColorDarkTheme:I

.field private static sFocusedBackgroundColorWhiteTheme:I

.field private static sFollowUpFlagIconClear:Landroid/graphics/Bitmap;

.field private static sFollowUpFlagIconComplete:Landroid/graphics/Bitmap;

.field private static sFollowUpFlagIconPressed:Landroid/graphics/Bitmap;

.field private static sFollowUpFlagIconSet:Landroid/graphics/Bitmap;

.field private static sFullViewSplitViewImage:Landroid/graphics/Bitmap;

.field private static sFullViewSplitViewNinePatch:Landroid/graphics/NinePatch;

.field private static sInit:Z

.field private static sIrmIcon:Landroid/graphics/Bitmap;

.field private static sLastVerbIconForward:Landroid/graphics/Bitmap;

.field private static sLastVerbIconForwardPressed:Landroid/graphics/Bitmap;

.field private static sLastVerbIconReply:Landroid/graphics/Bitmap;

.field private static sLastVerbIconReplyPressed:Landroid/graphics/Bitmap;

.field private static sListLineDarkDark:Landroid/graphics/Bitmap;

.field private static sListLineDarkTheme:Landroid/graphics/Bitmap;

.field private static sListLineDarkThreadDarkTheme:Landroid/graphics/Bitmap;

.field private static sListLineDarkThreadWhiteTheme:Landroid/graphics/Bitmap;

.field private static sListLineDarkWhiteTheme:Landroid/graphics/Bitmap;

.field private static sListLineNinepatchDarkDark:Landroid/graphics/NinePatch;

.field private static sListLineNinepatchDarkTheme:Landroid/graphics/NinePatch;

.field private static sListLineNinepatchDarkThreadDarkTheme:Landroid/graphics/NinePatch;

.field private static sListLineNinepatchDarkThreadWhiteTheme:Landroid/graphics/NinePatch;

.field private static sListLineNinepatchDarkWhiteTheme:Landroid/graphics/NinePatch;

.field private static sListLineNinepatchWhiteTheme:Landroid/graphics/NinePatch;

.field private static sListLineWhiteTheme:Landroid/graphics/Bitmap;

.field private static sMainTextPaddingLeft:I

.field private static sMainTextPaddingRight:I

.field private static sMainTextPaddingTopHuge:I

.field private static sMainTextPaddingTopLarge:I

.field private static sMainTextPaddingTopNormal:I

.field private static sMainTextPaddingTopSmall:I

.field private static sMainTextPaddingTopTiny:I

.field private static final sMainTextPaint:Landroid/text/TextPaint;

.field private static sMainTextReadTextColorDarkDarkTheme:I

.field private static sMainTextReadTextColorDarkWhiteTheme:I

.field private static sMainTextReadTextColorLightDarkTheme:I

.field private static sMainTextReadTextColorLightWhiteTheme:I

.field private static sMainTextUnReadTextColorDarkDarkTheme:I

.field private static sMainTextUnReadTextColorDarkWhiteTheme:I

.field private static sMainTextUnReadTextColorLightDarkTheme:I

.field private static sMainTextUnReadTextColorLightWhiteTheme:I

.field private static sMatchedtextColorDarkTheme:I

.field private static sMatchedtextColorWhiteTheme:I

.field private static sMeetingRequestIcon:Landroid/graphics/Bitmap;

.field private static sMorePadding:I

.field private static sMorePaddingVertical:I

.field private static sNoneSelectedIconNinePatch:Landroid/graphics/NinePatch;

.field private static sNoneSelectedMessageIcon:Landroid/graphics/Bitmap;

.field private static sPaddingIconMiddleHuge:I

.field private static sPaddingIconMiddleLarge:I

.field private static sPaddingIconMiddleNormal:I

.field private static sPaddingIconMiddleSmall:I

.field private static sPaddingIconMiddleTiny:I

.field private static sPaddingTextEndHuge:I

.field private static sPaddingTextEndLarge:I

.field private static sPaddingTextEndNormal:I

.field private static sPaddingTextEndSmall:I

.field private static sPaddingTextEndTiny:I

.field private static sPaddingTextMiddleHuge:I

.field private static sPaddingTextMiddleLarge:I

.field private static sPaddingTextMiddleNormal:I

.field private static sPaddingTextMiddleSmall:I

.field private static sPaddingTextMiddleTiny:I

.field private static sPaddingTextTopHuge:I

.field private static sPaddingTextTopLarge:I

.field private static sPaddingTextTopNormal:I

.field private static sPaddingTextTopSmall:I

.field private static sPaddingTextTopTiny:I

.field private static sPressedTextColorDarkTheme:I

.field private static sPressedTextColorWhiteTheme:I

.field private static sPriorityIconHigh:Landroid/graphics/Bitmap;

.field private static sPriorityIconHighPressed:Landroid/graphics/Bitmap;

.field private static sPriorityIconLow:Landroid/graphics/Bitmap;

.field private static sPriorityIconLowPressed:Landroid/graphics/Bitmap;

.field private static sSMSIcon:Landroid/graphics/Bitmap;

.field private static sSelectedIconNinePatch:Landroid/graphics/NinePatch;

.field private static sSelectedIconNinePatchBeige:Landroid/graphics/NinePatch;

.field private static sSelectedIconNinePatchBlack:Landroid/graphics/NinePatch;

.field private static sSelectedIconOffDarkTheme:Landroid/graphics/Bitmap;

.field private static sSelectedIconOffDisabledDarkTheme:Landroid/graphics/Bitmap;

.field private static sSelectedIconOffDisabledWhiteTheme:Landroid/graphics/Bitmap;

.field private static sSelectedIconOffPressedDarkTheme:Landroid/graphics/Bitmap;

.field private static sSelectedIconOffPressedWhiteTheme:Landroid/graphics/Bitmap;

.field private static sSelectedIconOffWhiteTheme:Landroid/graphics/Bitmap;

.field private static sSelectedIconOnDarkTheme:Landroid/graphics/Bitmap;

.field private static sSelectedIconOnDisabledDarkTheme:Landroid/graphics/Bitmap;

.field private static sSelectedIconOnDisabledWhiteTheme:Landroid/graphics/Bitmap;

.field private static sSelectedIconOnPressedDarkTheme:Landroid/graphics/Bitmap;

.field private static sSelectedIconOnPressedWhiteTheme:Landroid/graphics/Bitmap;

.field private static sSelectedIconOnWhiteTheme:Landroid/graphics/Bitmap;

.field private static sSelectedMessageIcon:Landroid/graphics/Bitmap;

.field private static sSelectedMessageIconBeige:Landroid/graphics/Bitmap;

.field private static sSelectedMessageIconBlack:Landroid/graphics/Bitmap;

.field private static sSignIcon:Landroid/graphics/Bitmap;

.field private static final sSnippetPaint:Landroid/text/TextPaint;

.field private static sSnippetReadTextColorDarkDarkTheme:I

.field private static sSnippetReadTextColorDarkWhiteTheme:I

.field private static sSnippetReadTextColorLightDarkTheme:I

.field private static sSnippetReadTextColorLightWhiteTheme:I

.field private static sSnippetUnReadTextColorDarkDarkTheme:I

.field private static sSnippetUnReadTextColorDarkWhiteTheme:I

.field private static sSnippetUnReadTextColorLightDarkTheme:I

.field private static sSnippetUnReadTextColorLightWhiteTheme:I

.field private static final sSubTextPaint:Landroid/text/TextPaint;

.field private static sSubTextReadTextColorDarkDarkTheme:I

.field private static sSubTextReadTextColorDarkWhiteTheme:I

.field private static sSubTextReadTextColorLightDarkTheme:I

.field private static sSubTextReadTextColorLightWhiteTheme:I

.field private static sSubTextUnReadTextColorDarkDarkTheme:I

.field private static sSubTextUnReadTextColorDarkWhiteTheme:I

.field private static sSubTextUnReadTextColorLightDarkTheme:I

.field private static sSubTextUnReadTextColorLightWhiteTheme:I

.field private static sTextReadOpacityDarkTheme:I

.field private static sTextReadOpacityWhiteTheme:I

.field private static sTextSizeHuge:I

.field private static sTextSizeLarge:I

.field private static sTextSizeMainTextHuge:I

.field private static sTextSizeMainTextLarge:I

.field private static sTextSizeMainTextNormal:I

.field private static sTextSizeMainTextSmall:I

.field private static sTextSizeMainTextTiny:I

.field private static sTextSizeNormal:I

.field private static sTextSizeSmall:I

.field private static sTextSizeTiny:I

.field private static sTextUnreadOpacityDarkTheme:I

.field private static sTextUnreadOpacityWhiteTheme:I

.field private static sThreadListPadding:I

.field private static sVerbPaddingTopHuge:I

.field private static sVerbPaddingTopLarge:I

.field private static sVerbPaddingTopNormal:I

.field private static sVerbPaddingTopSmall:I

.field private static sVerbPaddingTopTiny:I

.field private static sViewHeightHugePreviewOne:I

.field private static sViewHeightHugePreviewThree:I

.field private static sViewHeightHugePreviewTwo:I

.field private static sViewHeightHugePreviewZero:I

.field private static sViewHeightLargePreviewOne:I

.field private static sViewHeightLargePreviewThree:I

.field private static sViewHeightLargePreviewTwo:I

.field private static sViewHeightLargePreviewZero:I

.field private static sViewHeightNormalPreviewOne:I

.field private static sViewHeightNormalPreviewThree:I

.field private static sViewHeightNormalPreviewTwo:I

.field private static sViewHeightNormalPreviewZero:I

.field private static sViewHeightSmallPreviewOne:I

.field private static sViewHeightSmallPreviewThree:I

.field private static sViewHeightSmallPreviewTwo:I

.field private static sViewHeightSmallPreviewZero:I

.field private static sViewHeightTinyPreviewOne:I

.field private static sViewHeightTinyPreviewThree:I

.field private static sViewHeightTinyPreviewTwo:I

.field private static sViewHeightTinyPreviewZero:I

.field private static sVoiceMailIcon:Landroid/graphics/Bitmap;


# instance fields
.field public isEncrypted:Z

.field private isLastThreadItem:Z

.field public isSigned:Z

.field public isSms:Z

.field public isVoiceMail:Z

.field mAccountId:J

.field public mAccountSchema:Ljava/lang/String;

.field private mAdapter:Lcom/android/email/activity/MessagesAdapter;

.field private mAttachmentIcon:Landroid/graphics/Bitmap;

.field private mAttachmentPaddingTop:I

.field private mBackgroundThreadItemColorLightRead:I

.field private mBackgroundThreadItemColorLightUnread:I

.field public mBgColor:I

.field private mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

.field public mCheckboxDisabled:Z

.field private mCheckboxPaddingTop:I

.field public mCheckboxPressed:Z

.field public mChildCount:I

.field public mChildIndex:I

.field public mColorChipBitmap:Landroid/graphics/NinePatch;

.field public mConvId:Ljava/lang/String;

.field public mConvThreadId:I

.field private mCurrentSelectIdx:I

.field private mDatePaddingTop:I

.field private mDateReadTextColorDark:I

.field private mDateReadTextColorLight:I

.field private mDateUnReadTextColorDark:I

.field private mDateUnReadTextColorLight:I

.field private mDownEvent:Z

.field private mFavoriteIcon:Landroid/graphics/Bitmap;

.field private mFavoritePaddingTop:I

.field public mFlagComFFConv:I

.field public mFlagReadConv:I

.field public mFlagSetFFConv:I

.field private mFocusedBackgroundColor:I

.field public mFollowUpFlagStatus:I

.field private mFormattedDate:Ljava/lang/CharSequence;

.field private mFormattedMainText:Ljava/lang/CharSequence;

.field private mFormattedSubText:Ljava/lang/CharSequence;

.field public mHasAttachment:Z

.field public mHasDivider:Z

.field public mHasFavoriteIcon:Z

.field public mHasInvite:Z

.field public mHasIrm:Z

.field public mHasLastVerbIcon:Z

.field public mHasPriorityIcon:Z

.field public mHasReplyIcon:Z

.field public mHasTitleIcon:Z

.field private mHighlightMainText:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MessageListItem$SearchItem;",
            ">;"
        }
    .end annotation
.end field

.field private mHighlightSnippet:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MessageListItem$SearchItem;",
            ">;"
        }
    .end annotation
.end field

.field private mHighlightSubText:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MessageListItem$SearchItem;",
            ">;"
        }
    .end annotation
.end field

.field public mIsBgColorChanged:Z

.field public mIsFavorite:Z

.field public mLastVerb:I

.field private mLastVerbPaddingTop:I

.field private mLastverbIcon:Landroid/graphics/Bitmap;

.field private mListLineNinepatch:Landroid/graphics/NinePatch;

.field mMailboxId:J

.field public mMailboxType:I

.field public mMainText:Ljava/lang/String;

.field private mMainTextPaddingTop:I

.field private mMainTextReadTextColorDark:I

.field private mMainTextReadTextColorLight:I

.field private mMainTextUnReadTextColorDark:I

.field private mMainTextUnReadTextColorLight:I

.field private mMatchedtextColor:I

.field mMessageId:J

.field public mNeedMorePadding:Z

.field private mPaddingIconMiddle:I

.field private mPaddingTextEnd:I

.field private mPaddingTextMiddle:I

.field private mPaddingTextTop:I

.field public mParentIndex:I

.field public mPosition:I

.field private mPressedTextColor:I

.field public mPreviewLineSize:I

.field public mPriority:I

.field private mPriorityIcon:Landroid/graphics/Bitmap;

.field public mRead:Z

.field private mReplyIcon:Landroid/graphics/Bitmap;

.field private mSearchString:Ljava/lang/String;

.field private mSelectedIconOff:Landroid/graphics/Bitmap;

.field private mSelectedIconOn:Landroid/graphics/Bitmap;

.field public mServerId:Ljava/lang/String;

.field public mSnippet:Ljava/lang/String;

.field public mSnippetLineCount:I

.field private mSnippetLines:[Ljava/lang/CharSequence;

.field private mSnippetReadTextColorDark:I

.field private mSnippetReadTextColorLight:I

.field private mSnippetUnReadTextColorDark:I

.field private mSnippetUnReadTextColorLight:I

.field public mSubText:Ljava/lang/String;

.field private mSubTextReadTextColorDark:I

.field private mSubTextReadTextColorLight:I

.field private mSubTextUnReadTextColorDark:I

.field private mSubTextUnReadTextColorLight:I

.field private mTextReadOpacity:I

.field private mTextSize:I

.field private mTextSizeMainText:I

.field private mTextUnreadOpacity:I

.field public mTimestamp:J

.field private mViewHeight:I

.field private mViewWidth:I

.field public mfontSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/activity/MessageListItem;->sInit:Z

    .line 121
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageListItem;->sSubTextPaint:Landroid/text/TextPaint;

    .line 123
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageListItem;->sSnippetPaint:Landroid/text/TextPaint;

    .line 125
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    .line 127
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 633
    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasFavoriteIcon:Z

    .line 635
    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasAttachment:Z

    .line 637
    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasTitleIcon:Z

    .line 639
    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasPriorityIcon:Z

    .line 641
    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasLastVerbIcon:Z

    .line 643
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mHasInvite:Z

    .line 645
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mHasDivider:Z

    .line 647
    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mNeedMorePadding:Z

    .line 649
    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mIsFavorite:Z

    .line 653
    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasReplyIcon:Z

    .line 655
    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mCheckboxPressed:Z

    .line 657
    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mCheckboxDisabled:Z

    .line 659
    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mChildCount:I

    .line 661
    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mChildIndex:I

    .line 663
    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mParentIndex:I

    .line 719
    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    .line 721
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mIsBgColorChanged:Z

    .line 725
    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    .line 727
    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    .line 831
    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mPosition:I

    .line 1728
    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mCurrentSelectIdx:I

    .line 1734
    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    .line 99
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListItem;->init(Landroid/content/Context;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 105
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 633
    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasFavoriteIcon:Z

    .line 635
    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasAttachment:Z

    .line 637
    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasTitleIcon:Z

    .line 639
    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasPriorityIcon:Z

    .line 641
    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasLastVerbIcon:Z

    .line 643
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mHasInvite:Z

    .line 645
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mHasDivider:Z

    .line 647
    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mNeedMorePadding:Z

    .line 649
    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mIsFavorite:Z

    .line 653
    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasReplyIcon:Z

    .line 655
    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mCheckboxPressed:Z

    .line 657
    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mCheckboxDisabled:Z

    .line 659
    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mChildCount:I

    .line 661
    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mChildIndex:I

    .line 663
    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mParentIndex:I

    .line 719
    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    .line 721
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mIsBgColorChanged:Z

    .line 725
    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    .line 727
    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    .line 831
    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mPosition:I

    .line 1728
    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mCurrentSelectIdx:I

    .line 1734
    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    .line 107
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListItem;->init(Landroid/content/Context;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 633
    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasFavoriteIcon:Z

    .line 635
    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasAttachment:Z

    .line 637
    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasTitleIcon:Z

    .line 639
    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasPriorityIcon:Z

    .line 641
    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasLastVerbIcon:Z

    .line 643
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mHasInvite:Z

    .line 645
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mHasDivider:Z

    .line 647
    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mNeedMorePadding:Z

    .line 649
    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mIsFavorite:Z

    .line 653
    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasReplyIcon:Z

    .line 655
    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mCheckboxPressed:Z

    .line 657
    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mCheckboxDisabled:Z

    .line 659
    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mChildCount:I

    .line 661
    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mChildIndex:I

    .line 663
    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mParentIndex:I

    .line 719
    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    .line 721
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mIsBgColorChanged:Z

    .line 725
    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    .line 727
    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    .line 831
    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mPosition:I

    .line 1728
    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mCurrentSelectIdx:I

    .line 1734
    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    .line 115
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListItem;->init(Landroid/content/Context;)V

    .line 117
    return-void
.end method

.method private calculateDrawingData()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x3

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 2302
    .line 2304
    new-instance v0, Ljava/util/Date;

    iget-wide v3, p0, Lcom/android/email/activity/MessageListItem;->mTimestamp:J

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 2306
    iget-wide v3, p0, Lcom/android/email/activity/MessageListItem;->mTimestamp:J

    invoke-static {v3, v4}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2308
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getTimeFormat()Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 2316
    :goto_0
    if-nez v0, :cond_0

    .line 2318
    const-string v0, ""

    .line 2320
    :cond_0
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->isMesssageListLeftside()Z

    move-result v1

    if-eqz v1, :cond_4

    sget v1, Lcom/android/email/activity/MessageListItem;->sDatePaddingRightDark:I

    .line 2324
    :goto_1
    sget-object v3, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    sget v5, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingLeft:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2328
    sget-object v3, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    int-to-float v5, v4

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v3, v5, v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFormattedDate:Ljava/lang/CharSequence;

    .line 2332
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSortType()I

    move-result v0

    const/4 v3, 0x7

    if-ne v0, v3, :cond_17

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mParentIndex:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_17

    .line 2334
    sget v0, Lcom/android/email/activity/MessageListItem;->sThreadListPadding:I

    .line 2340
    :goto_2
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->isMesssageListLeftside()Z

    move-result v3

    if-eqz v3, :cond_5

    sget v3, Lcom/android/email/activity/MessageListItem;->sFavoritePaddingRightDark:I

    .line 2344
    :goto_3
    iget-boolean v5, p0, Lcom/android/email/activity/MessageListItem;->isSigned:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/android/email/activity/MessageListItem;->isEncrypted:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/android/email/activity/MessageListItem;->mHasIrm:Z

    if-eqz v5, :cond_6

    .line 2346
    :cond_1
    iget v4, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    sget v5, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingLeft:I

    sub-int/2addr v4, v5

    sub-int v3, v4, v3

    sget-object v4, Lcom/android/email/activity/MessageListItem;->sFavoriteIconOn:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    sget v4, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingRight:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v0

    .line 2358
    :goto_4
    iget-object v4, p0, Lcom/android/email/activity/MessageListItem;->mSubText:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 2360
    const-string v4, ""

    iput-object v4, p0, Lcom/android/email/activity/MessageListItem;->mSubText:Ljava/lang/String;

    .line 2362
    :cond_2
    iget-object v4, p0, Lcom/android/email/activity/MessageListItem;->mSubText:Ljava/lang/String;

    sget-object v5, Lcom/android/email/activity/MessageListItem;->sSubTextPaint:Landroid/text/TextPaint;

    int-to-float v3, v3

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v4, v5, v3, v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/MessageListItem;->mFormattedSubText:Ljava/lang/CharSequence;

    .line 2368
    iget v3, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    sget v4, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingLeft:I

    sub-int/2addr v3, v4

    sub-int v1, v3, v1

    sget v3, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingRight:I

    sub-int/2addr v1, v3

    sub-int v5, v1, v0

    .line 2373
    if-gtz v5, :cond_7

    .line 2592
    :goto_5
    return-void

    .line 2312
    :cond_3
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2320
    :cond_4
    sget v1, Lcom/android/email/activity/MessageListItem;->sDatePaddingRight:I

    goto/16 :goto_1

    .line 2340
    :cond_5
    sget v3, Lcom/android/email/activity/MessageListItem;->sFavoritePaddingRight:I

    goto :goto_3

    .line 2352
    :cond_6
    iget v5, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    sget v6, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingLeft:I

    sub-int/2addr v5, v6

    sub-int v3, v5, v3

    sub-int/2addr v3, v4

    sget v4, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingRight:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v0

    goto :goto_4

    .line 2379
    :cond_7
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippetLines:[Ljava/lang/CharSequence;

    if-nez v0, :cond_8

    .line 2381
    new-array v0, v11, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippetLines:[Ljava/lang/CharSequence;

    .line 2385
    :cond_8
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2387
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippet:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2389
    new-instance v3, Landroid/text/SpannableString;

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippet:Ljava/lang/String;

    invoke-direct {v3, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2391
    new-instance v4, Landroid/text/style/StyleSpan;

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mRead:Z

    if-eqz v0, :cond_a

    move v0, v2

    :goto_6
    invoke-direct {v4, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 2393
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v0

    const/16 v6, 0x21

    invoke-virtual {v3, v4, v2, v0, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 2395
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2407
    :cond_9
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    sget-object v4, Lcom/android/email/activity/MessageListItem;->sSnippetPaint:Landroid/text/TextPaint;

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f80

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 2411
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    iput v3, p0, Lcom/android/email/activity/MessageListItem;->mSnippetLineCount:I

    move v4, v2

    .line 2413
    :goto_7
    iget v3, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-ge v4, v3, :cond_f

    .line 2415
    invoke-virtual {v0, v4}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v3

    .line 2417
    iget v6, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    add-int/lit8 v6, v6, -0x1

    if-ne v4, v6, :cond_d

    .line 2419
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 2421
    if-le v3, v6, :cond_b

    .line 2413
    :goto_8
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_7

    :cond_a
    move v0, v9

    .line 2391
    goto :goto_6

    .line 2425
    :cond_b
    invoke-interface {v1, v3, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 2427
    if-nez v3, :cond_c

    .line 2429
    const-string v3, ""

    .line 2435
    :cond_c
    iget-object v6, p0, Lcom/android/email/activity/MessageListItem;->mSnippetLines:[Ljava/lang/CharSequence;

    sget-object v7, Lcom/android/email/activity/MessageListItem;->sSnippetPaint:Landroid/text/TextPaint;

    int-to-float v8, v5

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v3, v7, v8, v10}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v6, v4

    goto :goto_8

    .line 2443
    :cond_d
    invoke-virtual {v0, v4}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v6

    if-gt v3, v6, :cond_e

    .line 2445
    iget-object v6, p0, Lcom/android/email/activity/MessageListItem;->mSnippetLines:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v7

    invoke-interface {v1, v3, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v6, v4

    goto :goto_8

    .line 2449
    :cond_e
    iget-object v3, p0, Lcom/android/email/activity/MessageListItem;->mSnippetLines:[Ljava/lang/CharSequence;

    aput-object v12, v3, v4

    goto :goto_8

    .line 2514
    :cond_f
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSnippet:[Ljava/util/ArrayList;

    if-nez v0, :cond_10

    .line 2516
    new-array v0, v11, [Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSnippet:[Ljava/util/ArrayList;

    .line 2520
    :cond_10
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isInSearchMode()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSearchString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 2522
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSearchString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSearchString:Ljava/lang/String;

    .line 2524
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSelectedSearchType()I

    move-result v0

    if-nez v0, :cond_11

    .line 2526
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightMainText:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/email/activity/MessageListItem;->mFormattedMainText:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/email/activity/MessageListItem;->mSearchString:Ljava/lang/String;

    sget-object v5, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/android/email/activity/MessageListItem;->setHighlightPosition(Ljava/util/ArrayList;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/graphics/Paint;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightMainText:Ljava/util/ArrayList;

    .line 2530
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSubText:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/email/activity/MessageListItem;->mFormattedSubText:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/email/activity/MessageListItem;->mSearchString:Ljava/lang/String;

    sget-object v5, Lcom/android/email/activity/MessageListItem;->sSubTextPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/android/email/activity/MessageListItem;->setHighlightPosition(Ljava/util/ArrayList;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/graphics/Paint;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSubText:Ljava/util/ArrayList;

    .line 2534
    :goto_9
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-ge v2, v0, :cond_12

    .line 2536
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSnippet:[Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSnippet:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/android/email/activity/MessageListItem;->mSnippetLines:[Ljava/lang/CharSequence;

    aget-object v4, v4, v2

    iget-object v5, p0, Lcom/android/email/activity/MessageListItem;->mSearchString:Ljava/lang/String;

    sget-object v6, Lcom/android/email/activity/MessageListItem;->sSnippetPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/email/activity/MessageListItem;->setHighlightPosition(Ljava/util/ArrayList;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/graphics/Paint;)Ljava/util/ArrayList;

    move-result-object v3

    aput-object v3, v0, v2

    .line 2534
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 2542
    :cond_11
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSelectedSearchType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_14

    .line 2544
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getTopLineMode()I

    move-result v0

    if-nez v0, :cond_13

    .line 2546
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSubText:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/email/activity/MessageListItem;->mFormattedSubText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/email/activity/MessageListItem;->mSearchString:Ljava/lang/String;

    sget-object v4, Lcom/android/email/activity/MessageListItem;->sSubTextPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/email/activity/MessageListItem;->setHighlightPosition(Ljava/util/ArrayList;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/graphics/Paint;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSubText:Ljava/util/ArrayList;

    .line 2586
    :cond_12
    :goto_a
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    goto/16 :goto_5

    .line 2552
    :cond_13
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightMainText:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/email/activity/MessageListItem;->mFormattedMainText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/email/activity/MessageListItem;->mSearchString:Ljava/lang/String;

    sget-object v4, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/email/activity/MessageListItem;->setHighlightPosition(Ljava/util/ArrayList;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/graphics/Paint;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightMainText:Ljava/util/ArrayList;

    goto :goto_a

    .line 2559
    :cond_14
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSelectedSearchType()I

    move-result v0

    if-ne v0, v9, :cond_12

    .line 2561
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getTopLineMode()I

    move-result v0

    if-nez v0, :cond_15

    .line 2563
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightMainText:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/email/activity/MessageListItem;->mFormattedMainText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/email/activity/MessageListItem;->mSearchString:Ljava/lang/String;

    sget-object v4, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/email/activity/MessageListItem;->setHighlightPosition(Ljava/util/ArrayList;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/graphics/Paint;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightMainText:Ljava/util/ArrayList;

    goto :goto_a

    .line 2570
    :cond_15
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSubText:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/email/activity/MessageListItem;->mFormattedSubText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/email/activity/MessageListItem;->mSearchString:Ljava/lang/String;

    sget-object v4, Lcom/android/email/activity/MessageListItem;->sSubTextPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/email/activity/MessageListItem;->setHighlightPosition(Ljava/util/ArrayList;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/graphics/Paint;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSubText:Ljava/util/ArrayList;

    goto :goto_a

    .line 2580
    :cond_16
    iput-object v12, p0, Lcom/android/email/activity/MessageListItem;->mSearchString:Ljava/lang/String;

    goto :goto_a

    :cond_17
    move v0, v2

    goto/16 :goto_2
.end method

.method private calculateMainTextText()V
    .locals 4

    .prologue
    .line 2278
    const/4 v0, 0x0

    .line 2280
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSortType()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mParentIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2282
    sget v0, Lcom/android/email/activity/MessageListItem;->sThreadListPadding:I

    .line 2286
    :cond_0
    sget v1, Lcom/android/email/activity/MessageListItem;->iconStackRightBound:I

    sget v2, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingLeft:I

    sub-int/2addr v1, v2

    sub-int v0, v1, v0

    .line 2288
    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mMainText:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 2290
    const-string v1, ""

    iput-object v1, p0, Lcom/android/email/activity/MessageListItem;->mMainText:Ljava/lang/String;

    .line 2292
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mMainText:Ljava/lang/String;

    sget-object v2, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    int-to-float v0, v0

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v1, v2, v0, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFormattedMainText:Ljava/lang/CharSequence;

    .line 2295
    return-void
.end method

.method private getStringWithEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 2596
    .line 2598
    const-string v0, "\\\\"

    const-string v1, "\\\\\\\\"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2600
    const-string v1, "\\|"

    const-string v2, "\\\\|"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2602
    const-string v1, "\\*"

    const-string v2, "\\\\*"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2604
    const-string v1, "\\?"

    const-string v2, "\\\\?"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2606
    const-string v1, "\\+"

    const-string v2, "\\\\+"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2608
    const-string v1, "\\["

    const-string v2, "\\\\["

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2610
    const-string v1, "\\]"

    const-string v2, "\\\\]"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2612
    const-string v1, "\\{"

    const-string v2, "\\\\{"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2614
    const-string v1, "\\}"

    const-string v2, "\\\\}"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2616
    const-string v1, "\\("

    const-string v2, "\\\\("

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2618
    const-string v1, "\\)"

    const-string v2, "\\\\)"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2620
    const-string v1, "\\^"

    const-string v2, "\\\\^"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2622
    const-string v1, "\\."

    const-string v2, "\\\\."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2624
    const-string v1, "\\$"

    const-string v2, "\\\\\\$"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2626
    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f020268

    const v3, 0x7f0201f6

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 847
    sget-boolean v0, Lcom/android/email/activity/MessageListItem;->sInit:Z

    if-nez v0, :cond_1

    .line 849
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 851
    const v1, 0x7f0c0067

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sCheckboxHitWidth:I

    .line 855
    const v1, 0x7f0c0068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sFavoriteHitWidth:I

    .line 859
    const v1, 0x7f0c0069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sFavoritePaddingRight:I

    .line 863
    const v1, 0x7f0c006a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sFavoritePaddingRightDark:I

    .line 867
    const v1, 0x7f0c0077

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingTopTiny:I

    .line 871
    const v1, 0x7f0c0078

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingTopSmall:I

    .line 875
    const v1, 0x7f0c0079

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingTopNormal:I

    .line 879
    const v1, 0x7f0c007a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingTopLarge:I

    .line 883
    const v1, 0x7f0c007b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingTopHuge:I

    .line 887
    const v1, 0x7f0c007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sDatePaddingTopTiny:I

    .line 891
    const v1, 0x7f0c007d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sDatePaddingTopSmall:I

    .line 895
    const v1, 0x7f0c007e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sDatePaddingTopNormal:I

    .line 899
    const v1, 0x7f0c007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sDatePaddingTopLarge:I

    .line 903
    const v1, 0x7f0c0080

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sDatePaddingTopHuge:I

    .line 907
    const v1, 0x7f0c006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingLeft:I

    .line 911
    const v1, 0x7f0c0070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingRight:I

    .line 915
    const v1, 0x7f0c006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sDatePaddingRight:I

    .line 919
    const v1, 0x7f0c006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sDatePaddingRightDark:I

    .line 923
    const v1, 0x7f0c0083

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPaddingTextTopTiny:I

    .line 927
    const v1, 0x7f0c0084

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPaddingTextTopSmall:I

    .line 931
    const v1, 0x7f0c0085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPaddingTextTopNormal:I

    .line 935
    const v1, 0x7f0c0086

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPaddingTextTopLarge:I

    .line 939
    const v1, 0x7f0c0087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPaddingTextTopHuge:I

    .line 943
    const v1, 0x7f0c0088

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPaddingTextMiddleTiny:I

    .line 947
    const v1, 0x7f0c0089

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPaddingTextMiddleSmall:I

    .line 951
    const v1, 0x7f0c008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPaddingTextMiddleNormal:I

    .line 955
    const v1, 0x7f0c008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPaddingTextMiddleLarge:I

    .line 959
    const v1, 0x7f0c008c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPaddingTextMiddleHuge:I

    .line 963
    const v1, 0x7f0c008d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPaddingTextEndTiny:I

    .line 967
    const v1, 0x7f0c008e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPaddingTextEndSmall:I

    .line 971
    const v1, 0x7f0c008f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPaddingTextEndNormal:I

    .line 975
    const v1, 0x7f0c0090

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPaddingTextEndLarge:I

    .line 979
    const v1, 0x7f0c0091

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPaddingTextEndHuge:I

    .line 983
    const v1, 0x7f0c0092

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPaddingIconMiddleTiny:I

    .line 987
    const v1, 0x7f0c0093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPaddingIconMiddleSmall:I

    .line 991
    const v1, 0x7f0c0094

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPaddingIconMiddleNormal:I

    .line 995
    const v1, 0x7f0c0095

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPaddingIconMiddleLarge:I

    .line 999
    const v1, 0x7f0c0096

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPaddingIconMiddleHuge:I

    .line 1003
    const v1, 0x7f0c005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sTextSizeTiny:I

    .line 1005
    const v1, 0x7f0c005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sTextSizeSmall:I

    .line 1007
    const v1, 0x7f0c005f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sTextSizeNormal:I

    .line 1009
    const v1, 0x7f0c0060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sTextSizeLarge:I

    .line 1011
    const v1, 0x7f0c0061

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sTextSizeHuge:I

    .line 1017
    const v1, 0x7f0b005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sBackgroundThreadItemColorLightReadWhiteTheme:I

    .line 1021
    const v1, 0x7f0b005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sBackgroundThreadItemColorLightUnreadWhiteTheme:I

    .line 1029
    const v1, 0x7f0b005f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sFocusedBackgroundColorWhiteTheme:I

    .line 1033
    const v1, 0x7f0b0060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPressedTextColorWhiteTheme:I

    .line 1041
    const v1, 0x7f0b0062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sMatchedtextColorWhiteTheme:I

    .line 1045
    const v1, 0x7f0b0063

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sSubTextReadTextColorLightWhiteTheme:I

    .line 1049
    const v1, 0x7f0b0064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sMainTextReadTextColorLightWhiteTheme:I

    .line 1053
    const v1, 0x7f0b0065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sDateReadTextColorLightWhiteTheme:I

    .line 1057
    const v1, 0x7f0b0066

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sSnippetReadTextColorLightWhiteTheme:I

    .line 1061
    const v1, 0x7f0b0067

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sSubTextUnReadTextColorLightWhiteTheme:I

    .line 1065
    const v1, 0x7f0b0068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sMainTextUnReadTextColorLightWhiteTheme:I

    .line 1069
    const v1, 0x7f0b0069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sDateUnReadTextColorLightWhiteTheme:I

    .line 1073
    const v1, 0x7f0b006a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sSnippetUnReadTextColorLightWhiteTheme:I

    .line 1077
    const v1, 0x7f0b006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sSubTextReadTextColorDarkWhiteTheme:I

    .line 1081
    const v1, 0x7f0b006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sMainTextReadTextColorDarkWhiteTheme:I

    .line 1085
    const v1, 0x7f0b006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sDateReadTextColorDarkWhiteTheme:I

    .line 1089
    const v1, 0x7f0b006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sSnippetReadTextColorDarkWhiteTheme:I

    .line 1093
    const v1, 0x7f0b006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sSubTextUnReadTextColorDarkWhiteTheme:I

    .line 1097
    const v1, 0x7f0b0070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sMainTextUnReadTextColorDarkWhiteTheme:I

    .line 1101
    const v1, 0x7f0b0071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sDateUnReadTextColorDarkWhiteTheme:I

    .line 1105
    const v1, 0x7f0b0072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sSnippetUnReadTextColorDarkWhiteTheme:I

    .line 1109
    const v1, 0x7f0b0074

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sTextReadOpacityWhiteTheme:I

    .line 1113
    const v1, 0x7f0b0073

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sTextUnreadOpacityWhiteTheme:I

    .line 1117
    const v1, 0x7f0c0062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sTextSizeMainTextTiny:I

    .line 1121
    const v1, 0x7f0c0063

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sTextSizeMainTextSmall:I

    .line 1125
    const v1, 0x7f0c0064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sTextSizeMainTextNormal:I

    .line 1129
    const v1, 0x7f0c0065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sTextSizeMainTextLarge:I

    .line 1133
    const v1, 0x7f0c0066

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sTextSizeMainTextHuge:I

    .line 1137
    const v1, 0x7f0c009a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sColorTipWidth:I

    .line 1139
    const v1, 0x7f0c009c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sAttachmentPaddingLeft:I

    .line 1147
    const v1, 0x7f0c009e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sAttachmentPaddingTopTiny:I

    .line 1151
    const v1, 0x7f0c009f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sAttachmentPaddingTopSmall:I

    .line 1155
    const v1, 0x7f0c00a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sAttachmentPaddingTopNormal:I

    .line 1159
    const v1, 0x7f0c00a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sAttachmentPaddingTopLarge:I

    .line 1163
    const v1, 0x7f0c00a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sAttachmentPaddingTopHuge:I

    .line 1167
    const v1, 0x7f0c00a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sFavoritePaddingTopTiny:I

    .line 1171
    const v1, 0x7f0c00a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sFavoritePaddingTopSmall:I

    .line 1175
    const v1, 0x7f0c00a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sFavoritePaddingTopNormal:I

    .line 1179
    const v1, 0x7f0c00a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sFavoritePaddingTopLarge:I

    .line 1183
    const v1, 0x7f0c00a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sFavoritePaddingTopHuge:I

    .line 1187
    const v1, 0x7f0c00a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sVerbPaddingTopTiny:I

    .line 1191
    const v1, 0x7f0c00a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sVerbPaddingTopSmall:I

    .line 1195
    const v1, 0x7f0c00aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sVerbPaddingTopNormal:I

    .line 1199
    const v1, 0x7f0c00ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sVerbPaddingTopLarge:I

    .line 1203
    const v1, 0x7f0c00ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sVerbPaddingTopHuge:I

    .line 1207
    const v1, 0x7f0c0049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sViewHeightTinyPreviewZero:I

    .line 1211
    const v1, 0x7f0c004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sViewHeightTinyPreviewOne:I

    .line 1215
    const v1, 0x7f0c004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sViewHeightTinyPreviewTwo:I

    .line 1219
    const v1, 0x7f0c004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sViewHeightTinyPreviewThree:I

    .line 1223
    const v1, 0x7f0c004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sViewHeightSmallPreviewZero:I

    .line 1227
    const v1, 0x7f0c004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sViewHeightSmallPreviewOne:I

    .line 1231
    const v1, 0x7f0c004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sViewHeightSmallPreviewTwo:I

    .line 1235
    const v1, 0x7f0c0050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sViewHeightSmallPreviewThree:I

    .line 1239
    const v1, 0x7f0c0051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sViewHeightNormalPreviewZero:I

    .line 1243
    const v1, 0x7f0c0052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sViewHeightNormalPreviewOne:I

    .line 1247
    const v1, 0x7f0c0053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sViewHeightNormalPreviewTwo:I

    .line 1251
    const v1, 0x7f0c0054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sViewHeightNormalPreviewThree:I

    .line 1255
    const v1, 0x7f0c0055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sViewHeightLargePreviewZero:I

    .line 1259
    const v1, 0x7f0c0056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sViewHeightLargePreviewOne:I

    .line 1263
    const v1, 0x7f0c0057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sViewHeightLargePreviewTwo:I

    .line 1267
    const v1, 0x7f0c0058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sViewHeightLargePreviewThree:I

    .line 1271
    const v1, 0x7f0c0059

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sViewHeightHugePreviewZero:I

    .line 1275
    const v1, 0x7f0c005a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sViewHeightHugePreviewOne:I

    .line 1279
    const v1, 0x7f0c005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sViewHeightHugePreviewTwo:I

    .line 1283
    const v1, 0x7f0c005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sViewHeightHugePreviewThree:I

    .line 1287
    const v1, 0x7f0c0072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sCheckboxPaddingTopTiny:I

    .line 1291
    const v1, 0x7f0c0073

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sCheckboxPaddingTopSmall:I

    .line 1295
    const v1, 0x7f0c0074

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sCheckboxPaddingTopNormal:I

    .line 1299
    const v1, 0x7f0c0075

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sCheckboxPaddingTopLarge:I

    .line 1303
    const v1, 0x7f0c0076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sCheckboxPaddingTopHuge:I

    .line 1307
    const v1, 0x7f0c0044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sMorePadding:I

    .line 1309
    const v1, 0x7f0c0047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sMorePaddingVertical:I

    .line 1313
    const v1, 0x7f0c0043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sThreadListPadding:I

    .line 1315
    sget-object v1, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v5}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 1317
    sget-object v1, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1319
    sget-object v1, Lcom/android/email/activity/MessageListItem;->sSubTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v5}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 1321
    sget-object v1, Lcom/android/email/activity/MessageListItem;->sSnippetPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v5}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 1323
    sget-object v1, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v5}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 1325
    const v1, 0x7f0201f8

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sMeetingRequestIcon:Landroid/graphics/Bitmap;

    .line 1327
    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sAttachmentIcon:Landroid/graphics/Bitmap;

    .line 1329
    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sAttachmentIconDimmed:Landroid/graphics/Bitmap;

    .line 1331
    const v1, 0x7f0200a6

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sAttachmentIconPressed:Landroid/graphics/Bitmap;

    .line 1339
    const v1, 0x7f020207

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sFavoriteIconOff:Landroid/graphics/Bitmap;

    .line 1341
    const v1, 0x7f020206

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sFavoriteIconOn:Landroid/graphics/Bitmap;

    .line 1343
    const v1, 0x7f0200ae

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sFavoriteIconPressed:Landroid/graphics/Bitmap;

    .line 1347
    const v1, 0x7f020022

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSelectedIconOffWhiteTheme:Landroid/graphics/Bitmap;

    .line 1351
    const v1, 0x7f020025

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSelectedIconOffPressedWhiteTheme:Landroid/graphics/Bitmap;

    .line 1355
    const v1, 0x7f020021

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSelectedIconOffDisabledWhiteTheme:Landroid/graphics/Bitmap;

    .line 1359
    const v1, 0x7f020027

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSelectedIconOnWhiteTheme:Landroid/graphics/Bitmap;

    .line 1363
    const v1, 0x7f02002a

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSelectedIconOnPressedWhiteTheme:Landroid/graphics/Bitmap;

    .line 1367
    const v1, 0x7f020026

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSelectedIconOnDisabledWhiteTheme:Landroid/graphics/Bitmap;

    .line 1373
    const v1, 0x7f0200af

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sFollowUpFlagIconSet:Landroid/graphics/Bitmap;

    .line 1377
    const v1, 0x7f0200b1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sFollowUpFlagIconComplete:Landroid/graphics/Bitmap;

    .line 1381
    const v1, 0x7f0200b0

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sFollowUpFlagIconClear:Landroid/graphics/Bitmap;

    .line 1385
    const v1, 0x7f0200b2

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sFollowUpFlagIconPressed:Landroid/graphics/Bitmap;

    .line 1391
    const v1, 0x7f02029f

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sDraftIconServer:Landroid/graphics/Bitmap;

    .line 1393
    const v1, 0x7f020043

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sDraftIconClient:Landroid/graphics/Bitmap;

    .line 1395
    const v1, 0x7f0200b5

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sLastVerbIconForward:Landroid/graphics/Bitmap;

    .line 1397
    const v1, 0x7f0200b6

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sLastVerbIconForwardPressed:Landroid/graphics/Bitmap;

    .line 1403
    const v1, 0x7f0201fd

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sLastVerbIconReply:Landroid/graphics/Bitmap;

    .line 1405
    const v1, 0x7f0200c0

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sLastVerbIconReplyPressed:Landroid/graphics/Bitmap;

    .line 1409
    const v1, 0x7f0200ba

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sPriorityIconHigh:Landroid/graphics/Bitmap;

    .line 1413
    const v1, 0x7f0200bb

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sPriorityIconHighPressed:Landroid/graphics/Bitmap;

    .line 1417
    const v1, 0x7f0200bc

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sPriorityIconLow:Landroid/graphics/Bitmap;

    .line 1419
    const v1, 0x7f0200bd

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sPriorityIconLowPressed:Landroid/graphics/Bitmap;

    .line 1425
    const v1, 0x7f020284

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sIrmIcon:Landroid/graphics/Bitmap;

    .line 1427
    const v1, 0x7f0200c4

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sVoiceMailIcon:Landroid/graphics/Bitmap;

    .line 1429
    const v1, 0x7f0200c2

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSMSIcon:Landroid/graphics/Bitmap;

    .line 1431
    const v1, 0x7f0200c1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSignIcon:Landroid/graphics/Bitmap;

    .line 1433
    const v1, 0x7f0200a9

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sEncryptIcon:Landroid/graphics/Bitmap;

    .line 1435
    invoke-static {v0, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSelectedMessageIcon:Landroid/graphics/Bitmap;

    .line 1439
    invoke-static {v0, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSelectedMessageIconBlack:Landroid/graphics/Bitmap;

    .line 1445
    const v1, 0x7f020314

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSelectedMessageIconBeige:Landroid/graphics/Bitmap;

    .line 1451
    const v1, 0x7f020127

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sNoneSelectedMessageIcon:Landroid/graphics/Bitmap;

    .line 1483
    const v1, 0x7f020325

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sFullViewSplitViewImage:Landroid/graphics/Bitmap;

    .line 1487
    new-instance v1, Landroid/graphics/NinePatch;

    sget-object v2, Lcom/android/email/activity/MessageListItem;->sFullViewSplitViewImage:Landroid/graphics/Bitmap;

    sget-object v3, Lcom/android/email/activity/MessageListItem;->sFullViewSplitViewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sFullViewSplitViewNinePatch:Landroid/graphics/NinePatch;

    .line 1497
    new-instance v1, Landroid/graphics/NinePatch;

    sget-object v2, Lcom/android/email/activity/MessageListItem;->sSelectedMessageIcon:Landroid/graphics/Bitmap;

    sget-object v3, Lcom/android/email/activity/MessageListItem;->sSelectedMessageIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSelectedIconNinePatch:Landroid/graphics/NinePatch;

    .line 1501
    new-instance v1, Landroid/graphics/NinePatch;

    sget-object v2, Lcom/android/email/activity/MessageListItem;->sSelectedMessageIconBlack:Landroid/graphics/Bitmap;

    sget-object v3, Lcom/android/email/activity/MessageListItem;->sSelectedMessageIconBlack:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSelectedIconNinePatchBlack:Landroid/graphics/NinePatch;

    .line 1511
    new-instance v1, Landroid/graphics/NinePatch;

    sget-object v2, Lcom/android/email/activity/MessageListItem;->sSelectedMessageIconBeige:Landroid/graphics/Bitmap;

    sget-object v3, Lcom/android/email/activity/MessageListItem;->sSelectedMessageIconBeige:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSelectedIconNinePatchBeige:Landroid/graphics/NinePatch;

    .line 1517
    new-instance v1, Landroid/graphics/NinePatch;

    sget-object v2, Lcom/android/email/activity/MessageListItem;->sNoneSelectedMessageIcon:Landroid/graphics/Bitmap;

    sget-object v3, Lcom/android/email/activity/MessageListItem;->sNoneSelectedMessageIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sNoneSelectedIconNinePatch:Landroid/graphics/NinePatch;

    .line 1521
    sget-object v1, Lcom/android/email/activity/MessageListItem;->sFavoriteIconOff:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sFavoriteIconWidth:I

    .line 1525
    const v1, 0x7f0201eb

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sListLineWhiteTheme:Landroid/graphics/Bitmap;

    .line 1529
    const v1, 0x7f0201e5

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sListLineDarkWhiteTheme:Landroid/graphics/Bitmap;

    .line 1533
    const v1, 0x7f02008f

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sListLineDarkThreadWhiteTheme:Landroid/graphics/Bitmap;

    .line 1537
    new-instance v1, Landroid/graphics/NinePatch;

    sget-object v2, Lcom/android/email/activity/MessageListItem;->sListLineWhiteTheme:Landroid/graphics/Bitmap;

    sget-object v3, Lcom/android/email/activity/MessageListItem;->sListLineWhiteTheme:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchWhiteTheme:Landroid/graphics/NinePatch;

    .line 1541
    new-instance v1, Landroid/graphics/NinePatch;

    sget-object v2, Lcom/android/email/activity/MessageListItem;->sListLineDarkWhiteTheme:Landroid/graphics/Bitmap;

    sget-object v3, Lcom/android/email/activity/MessageListItem;->sListLineDarkWhiteTheme:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchDarkWhiteTheme:Landroid/graphics/NinePatch;

    .line 1545
    new-instance v1, Landroid/graphics/NinePatch;

    sget-object v2, Lcom/android/email/activity/MessageListItem;->sListLineDarkThreadWhiteTheme:Landroid/graphics/Bitmap;

    sget-object v3, Lcom/android/email/activity/MessageListItem;->sListLineDarkThreadWhiteTheme:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchDarkThreadWhiteTheme:Landroid/graphics/NinePatch;

    .line 1549
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1555
    const v1, 0x7f0b0077

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sBackgroundThreadItemColorLightReadDarkTheme:I

    .line 1559
    const v1, 0x7f0b0076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sBackgroundThreadItemColorLightUnreadDarkTheme:I

    .line 1567
    const v1, 0x7f0b0079

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sFocusedBackgroundColorDarkTheme:I

    .line 1571
    const v1, 0x7f0b007a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPressedTextColorDarkTheme:I

    .line 1579
    const v1, 0x7f0b007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sMatchedtextColorDarkTheme:I

    .line 1583
    const v1, 0x7f0b007d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sSubTextReadTextColorLightDarkTheme:I

    .line 1587
    const v1, 0x7f0b007e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sMainTextReadTextColorLightDarkTheme:I

    .line 1591
    const v1, 0x7f0b007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sDateReadTextColorLightDarkTheme:I

    .line 1595
    const v1, 0x7f0b0080

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sSnippetReadTextColorLightDarkTheme:I

    .line 1599
    const v1, 0x7f0b0081

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sSubTextUnReadTextColorLightDarkTheme:I

    .line 1603
    const v1, 0x7f0b0082

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sMainTextUnReadTextColorLightDarkTheme:I

    .line 1607
    const v1, 0x7f0b0083

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sDateUnReadTextColorLightDarkTheme:I

    .line 1611
    const v1, 0x7f0b0084

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sSnippetUnReadTextColorLightDarkTheme:I

    .line 1615
    const v1, 0x7f0b0085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sSubTextReadTextColorDarkDarkTheme:I

    .line 1619
    const v1, 0x7f0b0086

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sMainTextReadTextColorDarkDarkTheme:I

    .line 1623
    const v1, 0x7f0b0087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sDateReadTextColorDarkDarkTheme:I

    .line 1627
    const v1, 0x7f0b0088

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sSnippetReadTextColorDarkDarkTheme:I

    .line 1631
    const v1, 0x7f0b0089

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sSubTextUnReadTextColorDarkDarkTheme:I

    .line 1635
    const v1, 0x7f0b008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sMainTextUnReadTextColorDarkDarkTheme:I

    .line 1639
    const v1, 0x7f0b008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sDateUnReadTextColorDarkDarkTheme:I

    .line 1643
    const v1, 0x7f0b008c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sSnippetUnReadTextColorDarkDarkTheme:I

    .line 1647
    const v1, 0x7f0b008e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sTextReadOpacityDarkTheme:I

    .line 1651
    const v1, 0x7f0b008d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sTextUnreadOpacityDarkTheme:I

    .line 1655
    const v1, 0x7f02004c

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSelectedIconOffDarkTheme:Landroid/graphics/Bitmap;

    .line 1657
    const v1, 0x7f02004e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSelectedIconOffPressedDarkTheme:Landroid/graphics/Bitmap;

    .line 1661
    const v1, 0x7f02004d

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSelectedIconOffDisabledDarkTheme:Landroid/graphics/Bitmap;

    .line 1665
    const v1, 0x7f02004f

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSelectedIconOnDarkTheme:Landroid/graphics/Bitmap;

    .line 1667
    const v1, 0x7f020051

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSelectedIconOnPressedDarkTheme:Landroid/graphics/Bitmap;

    .line 1671
    const v1, 0x7f020050

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSelectedIconOnDisabledDarkTheme:Landroid/graphics/Bitmap;

    .line 1675
    const v1, 0x7f0201ec

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sListLineDarkTheme:Landroid/graphics/Bitmap;

    .line 1685
    const v1, 0x7f02004a

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sListLineDarkDark:Landroid/graphics/Bitmap;

    .line 1689
    const v1, 0x7f02007c

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/MessageListItem;->sListLineDarkThreadDarkTheme:Landroid/graphics/Bitmap;

    .line 1693
    new-instance v0, Landroid/graphics/NinePatch;

    sget-object v1, Lcom/android/email/activity/MessageListItem;->sListLineDarkTheme:Landroid/graphics/Bitmap;

    sget-object v2, Lcom/android/email/activity/MessageListItem;->sListLineDarkTheme:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    invoke-direct {v0, v1, v2, v4}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    sput-object v0, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchDarkTheme:Landroid/graphics/NinePatch;

    .line 1703
    new-instance v0, Landroid/graphics/NinePatch;

    sget-object v1, Lcom/android/email/activity/MessageListItem;->sListLineDarkThreadDarkTheme:Landroid/graphics/Bitmap;

    sget-object v2, Lcom/android/email/activity/MessageListItem;->sListLineDarkThreadDarkTheme:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    invoke-direct {v0, v1, v2, v4}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    sput-object v0, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchDarkThreadDarkTheme:Landroid/graphics/NinePatch;

    .line 1709
    new-instance v0, Landroid/graphics/NinePatch;

    sget-object v1, Lcom/android/email/activity/MessageListItem;->sListLineDarkDark:Landroid/graphics/Bitmap;

    sget-object v2, Lcom/android/email/activity/MessageListItem;->sListLineDarkDark:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    invoke-direct {v0, v1, v2, v4}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    sput-object v0, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchDarkDark:Landroid/graphics/NinePatch;

    .line 1715
    :cond_0
    sput-boolean v5, Lcom/android/email/activity/MessageListItem;->sInit:Z

    .line 1719
    :cond_1
    return-void
.end method

.method private setHighlightPosition(Ljava/util/ArrayList;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/graphics/Paint;)Ljava/util/ArrayList;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MessageListItem$SearchItem;",
            ">;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "Landroid/graphics/Paint;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MessageListItem$SearchItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2634
    if-nez p1, :cond_0

    .line 2636
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2648
    :goto_0
    if-nez p2, :cond_1

    .line 2650
    const-string v0, ""

    move-object v1, v0

    .line 2662
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2666
    invoke-direct {p0, p3}, Lcom/android/email/activity/MessageListItem;->getStringWithEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2668
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 2674
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v2, v3

    .line 2680
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2682
    array-length v4, v0

    if-lez v4, :cond_6

    :goto_2
    move v2, v3

    move v4, v3

    .line 2692
    :goto_3
    array-length v5, v0

    if-ge v2, v5, :cond_2

    .line 2694
    new-instance v5, Lcom/android/email/activity/MessageListItem$SearchItem;

    invoke-direct {v5, p0}, Lcom/android/email/activity/MessageListItem$SearchItem;-><init>(Lcom/android/email/activity/MessageListItem;)V

    .line 2696
    aget-object v6, v0, v2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v4, v6

    .line 2698
    iput v4, v5, Lcom/android/email/activity/MessageListItem$SearchItem;->index:I

    .line 2700
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2702
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    .line 2692
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2640
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 2654
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_2
    move v4, v3

    move v5, v3

    .line 2720
    :goto_4
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_3

    .line 2722
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListItem$SearchItem;

    iget v0, v0, Lcom/android/email/activity/MessageListItem$SearchItem;->index:I

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v0, v2, :cond_4

    .line 2758
    :cond_3
    :goto_5
    return-object p1

    .line 2732
    :cond_4
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListItem$SearchItem;

    iget v2, v0, Lcom/android/email/activity/MessageListItem$SearchItem;->index:I

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListItem$SearchItem;

    iget v0, v0, Lcom/android/email/activity/MessageListItem$SearchItem;->index:I

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v0, v6

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 2736
    if-nez v4, :cond_5

    move v2, v3

    :goto_6
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListItem$SearchItem;

    iget v0, v0, Lcom/android/email/activity/MessageListItem$SearchItem;->index:I

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2740
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListItem$SearchItem;

    iput-object v6, v0, Lcom/android/email/activity/MessageListItem$SearchItem;->searchStr:Ljava/lang/String;

    .line 2742
    invoke-virtual {p4, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    add-int v2, v5, v0

    .line 2744
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListItem$SearchItem;

    iput v2, v0, Lcom/android/email/activity/MessageListItem$SearchItem;->position:I

    .line 2746
    invoke-virtual {p4, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    add-int/2addr v2, v0

    .line 2720
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v5, v2

    goto :goto_4

    .line 2736
    :cond_5
    add-int/lit8 v0, v4, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListItem$SearchItem;

    iget v0, v0, Lcom/android/email/activity/MessageListItem$SearchItem;->index:I

    invoke-virtual {p3}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_6

    .line 2750
    :catch_0
    move-exception v0

    .line 2754
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :cond_6
    move-object v0, v2

    goto/16 :goto_2
.end method

.method private setLocalVariable()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2895
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mfontSize:I

    packed-switch v0, :pswitch_data_0

    .line 3039
    :goto_0
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    packed-switch v0, :pswitch_data_1

    .line 3087
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSelectedIconNinePatch:Landroid/graphics/NinePatch;

    sput-object v0, Lcom/android/email/activity/MessageListItem;->mSelectedIconNinePatch:Landroid/graphics/NinePatch;

    .line 3093
    :goto_1
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    if-ne v0, v4, :cond_b

    .line 3097
    sget v0, Lcom/android/email/activity/MessageListItem;->sBackgroundThreadItemColorLightReadDarkTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mBackgroundThreadItemColorLightRead:I

    .line 3099
    sget v0, Lcom/android/email/activity/MessageListItem;->sBackgroundThreadItemColorLightUnreadDarkTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mBackgroundThreadItemColorLightUnread:I

    .line 3103
    sget v0, Lcom/android/email/activity/MessageListItem;->sFocusedBackgroundColorDarkTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mFocusedBackgroundColor:I

    .line 3105
    sget v0, Lcom/android/email/activity/MessageListItem;->sPressedTextColorDarkTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPressedTextColor:I

    .line 3109
    sget v0, Lcom/android/email/activity/MessageListItem;->sMatchedtextColorDarkTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mMatchedtextColor:I

    .line 3111
    sget v0, Lcom/android/email/activity/MessageListItem;->sSubTextReadTextColorLightDarkTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mSubTextReadTextColorLight:I

    .line 3113
    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextReadTextColorLightDarkTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mMainTextReadTextColorLight:I

    .line 3115
    sget v0, Lcom/android/email/activity/MessageListItem;->sDateReadTextColorLightDarkTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mDateReadTextColorLight:I

    .line 3117
    sget v0, Lcom/android/email/activity/MessageListItem;->sSnippetReadTextColorLightDarkTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippetReadTextColorLight:I

    .line 3119
    sget v0, Lcom/android/email/activity/MessageListItem;->sSubTextUnReadTextColorLightDarkTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mSubTextUnReadTextColorLight:I

    .line 3121
    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextUnReadTextColorLightDarkTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mMainTextUnReadTextColorLight:I

    .line 3123
    sget v0, Lcom/android/email/activity/MessageListItem;->sDateUnReadTextColorLightDarkTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mDateUnReadTextColorLight:I

    .line 3125
    sget v0, Lcom/android/email/activity/MessageListItem;->sSnippetUnReadTextColorLightDarkTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippetUnReadTextColorLight:I

    .line 3127
    sget v0, Lcom/android/email/activity/MessageListItem;->sSubTextReadTextColorDarkDarkTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mSubTextReadTextColorDark:I

    .line 3129
    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextReadTextColorDarkDarkTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mMainTextReadTextColorDark:I

    .line 3131
    sget v0, Lcom/android/email/activity/MessageListItem;->sDateReadTextColorDarkDarkTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mDateReadTextColorDark:I

    .line 3133
    sget v0, Lcom/android/email/activity/MessageListItem;->sSnippetReadTextColorDarkDarkTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippetReadTextColorDark:I

    .line 3135
    sget v0, Lcom/android/email/activity/MessageListItem;->sSubTextUnReadTextColorDarkDarkTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mSubTextUnReadTextColorDark:I

    .line 3137
    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextUnReadTextColorDarkDarkTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mMainTextUnReadTextColorDark:I

    .line 3139
    sget v0, Lcom/android/email/activity/MessageListItem;->sDateUnReadTextColorDarkDarkTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mDateUnReadTextColorDark:I

    .line 3141
    sget v0, Lcom/android/email/activity/MessageListItem;->sSnippetUnReadTextColorDarkDarkTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippetUnReadTextColorDark:I

    .line 3143
    sget v0, Lcom/android/email/activity/MessageListItem;->sTextReadOpacityDarkTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mTextReadOpacity:I

    .line 3145
    sget v0, Lcom/android/email/activity/MessageListItem;->sTextUnreadOpacityDarkTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mTextUnreadOpacity:I

    .line 3147
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mCheckboxDisabled:Z

    if-eqz v0, :cond_9

    .line 3149
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSelectedIconOnDisabledDarkTheme:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSelectedIconOn:Landroid/graphics/Bitmap;

    .line 3151
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSelectedIconOffDisabledDarkTheme:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSelectedIconOff:Landroid/graphics/Bitmap;

    .line 3243
    :goto_2
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3245
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSubTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mPressedTextColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 3247
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSnippetPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mPressedTextColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 3249
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mPressedTextColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 3251
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mPressedTextColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 3253
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mRead:Z

    if-eqz v0, :cond_e

    .line 3255
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 3265
    :goto_3
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->isMesssageListLeftside()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3267
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mRead:Z

    if-eqz v0, :cond_11

    .line 3269
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v0

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    if-ne v0, v4, :cond_10

    .line 3273
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    if-eqz v0, :cond_f

    .line 3275
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchDarkThreadDarkTheme:Landroid/graphics/NinePatch;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    .line 3519
    :goto_4
    const-string v0, "eas"

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mAccountSchema:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 3521
    iput-boolean v3, p0, Lcom/android/email/activity/MessageListItem;->mHasLastVerbIcon:Z

    .line 3523
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mMailboxType:I

    if-eq v0, v5, :cond_24

    .line 3525
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 3529
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mHasFavoriteIcon:Z

    .line 3531
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sFollowUpFlagIconPressed:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFavoriteIcon:Landroid/graphics/Bitmap;

    .line 3539
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mHasTitleIcon:Z

    .line 3541
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mLastVerb:I

    if-eqz v0, :cond_0

    .line 3543
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mHasLastVerbIcon:Z

    .line 3545
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mLastVerb:I

    packed-switch v0, :pswitch_data_2

    .line 3569
    :cond_0
    :goto_5
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasLastVerbIcon:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasPriorityIcon:Z

    if-eqz v0, :cond_1f

    .line 3571
    :cond_1
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mHasTitleIcon:Z

    .line 3613
    :goto_6
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->isSms:Z

    if-eqz v0, :cond_21

    .line 3615
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSMSIcon:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mAttachmentIcon:Landroid/graphics/Bitmap;

    .line 3617
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mHasAttachment:Z

    .line 3621
    iput-boolean v3, p0, Lcom/android/email/activity/MessageListItem;->mHasFavoriteIcon:Z

    .line 3623
    iput-boolean v3, p0, Lcom/android/email/activity/MessageListItem;->mHasInvite:Z

    .line 3649
    :cond_2
    :goto_7
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mLastVerb:I

    if-eqz v0, :cond_3

    .line 3651
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mHasLastVerbIcon:Z

    .line 3653
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mLastVerb:I

    packed-switch v0, :pswitch_data_3

    .line 3677
    :cond_3
    :goto_8
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasLastVerbIcon:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasPriorityIcon:Z

    if-eqz v0, :cond_23

    .line 3679
    :cond_4
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mHasTitleIcon:Z

    .line 3731
    :cond_5
    :goto_9
    iput-boolean v3, p0, Lcom/android/email/activity/MessageListItem;->mHasPriorityIcon:Z

    .line 3735
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mMailboxType:I

    if-eq v0, v5, :cond_8

    .line 3737
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 3741
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPriority:I

    if-ne v0, v4, :cond_27

    .line 3743
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mHasPriorityIcon:Z

    .line 3745
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sPriorityIconHighPressed:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mPriorityIcon:Landroid/graphics/Bitmap;

    .line 3755
    :cond_6
    :goto_a
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasLastVerbIcon:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasPriorityIcon:Z

    if-eqz v0, :cond_28

    .line 3757
    :cond_7
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mHasTitleIcon:Z

    .line 3801
    :cond_8
    :goto_b
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSubTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 3803
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSnippetPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 3805
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 3807
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mTextSizeMainText:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 3809
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSubTextPaint:Landroid/text/TextPaint;

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 3811
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSnippetPaint:Landroid/text/TextPaint;

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 3813
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 3815
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 3818
    return-void

    .line 2899
    :pswitch_0
    sget v0, Lcom/android/email/activity/MessageListItem;->sTextSizeTiny:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mTextSize:I

    .line 2901
    sget v0, Lcom/android/email/activity/MessageListItem;->sTextSizeMainTextTiny:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mTextSizeMainText:I

    .line 2903
    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingTopTiny:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mMainTextPaddingTop:I

    .line 2905
    sget v0, Lcom/android/email/activity/MessageListItem;->sDatePaddingTopTiny:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mDatePaddingTop:I

    .line 2907
    sget v0, Lcom/android/email/activity/MessageListItem;->sAttachmentPaddingTopTiny:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mAttachmentPaddingTop:I

    .line 2909
    sget v0, Lcom/android/email/activity/MessageListItem;->sPaddingTextTopTiny:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPaddingTextTop:I

    .line 2911
    sget v0, Lcom/android/email/activity/MessageListItem;->sPaddingTextMiddleTiny:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPaddingTextMiddle:I

    .line 2913
    sget v0, Lcom/android/email/activity/MessageListItem;->sPaddingTextEndTiny:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPaddingTextEnd:I

    .line 2915
    sget v0, Lcom/android/email/activity/MessageListItem;->sPaddingIconMiddleTiny:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPaddingIconMiddle:I

    .line 2917
    sget v0, Lcom/android/email/activity/MessageListItem;->sFavoritePaddingTopTiny:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mFavoritePaddingTop:I

    .line 2919
    sget v0, Lcom/android/email/activity/MessageListItem;->sVerbPaddingTopTiny:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mLastVerbPaddingTop:I

    .line 2921
    sget v0, Lcom/android/email/activity/MessageListItem;->sCheckboxPaddingTopTiny:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mCheckboxPaddingTop:I

    goto/16 :goto_0

    .line 2927
    :pswitch_1
    sget v0, Lcom/android/email/activity/MessageListItem;->sTextSizeSmall:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mTextSize:I

    .line 2929
    sget v0, Lcom/android/email/activity/MessageListItem;->sTextSizeMainTextSmall:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mTextSizeMainText:I

    .line 2931
    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingTopSmall:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mMainTextPaddingTop:I

    .line 2933
    sget v0, Lcom/android/email/activity/MessageListItem;->sDatePaddingTopSmall:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mDatePaddingTop:I

    .line 2935
    sget v0, Lcom/android/email/activity/MessageListItem;->sAttachmentPaddingTopSmall:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mAttachmentPaddingTop:I

    .line 2937
    sget v0, Lcom/android/email/activity/MessageListItem;->sPaddingTextTopSmall:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPaddingTextTop:I

    .line 2939
    sget v0, Lcom/android/email/activity/MessageListItem;->sPaddingTextMiddleSmall:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPaddingTextMiddle:I

    .line 2941
    sget v0, Lcom/android/email/activity/MessageListItem;->sPaddingTextEndSmall:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPaddingTextEnd:I

    .line 2943
    sget v0, Lcom/android/email/activity/MessageListItem;->sPaddingIconMiddleSmall:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPaddingIconMiddle:I

    .line 2945
    sget v0, Lcom/android/email/activity/MessageListItem;->sFavoritePaddingTopSmall:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mFavoritePaddingTop:I

    .line 2947
    sget v0, Lcom/android/email/activity/MessageListItem;->sVerbPaddingTopSmall:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mLastVerbPaddingTop:I

    .line 2949
    sget v0, Lcom/android/email/activity/MessageListItem;->sCheckboxPaddingTopSmall:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mCheckboxPaddingTop:I

    goto/16 :goto_0

    .line 2955
    :pswitch_2
    sget v0, Lcom/android/email/activity/MessageListItem;->sTextSizeNormal:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mTextSize:I

    .line 2957
    sget v0, Lcom/android/email/activity/MessageListItem;->sTextSizeMainTextNormal:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mTextSizeMainText:I

    .line 2959
    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingTopNormal:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mMainTextPaddingTop:I

    .line 2961
    sget v0, Lcom/android/email/activity/MessageListItem;->sDatePaddingTopNormal:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mDatePaddingTop:I

    .line 2963
    sget v0, Lcom/android/email/activity/MessageListItem;->sAttachmentPaddingTopNormal:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mAttachmentPaddingTop:I

    .line 2965
    sget v0, Lcom/android/email/activity/MessageListItem;->sPaddingTextTopNormal:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPaddingTextTop:I

    .line 2967
    sget v0, Lcom/android/email/activity/MessageListItem;->sPaddingTextMiddleNormal:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPaddingTextMiddle:I

    .line 2969
    sget v0, Lcom/android/email/activity/MessageListItem;->sPaddingTextEndNormal:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPaddingTextEnd:I

    .line 2971
    sget v0, Lcom/android/email/activity/MessageListItem;->sPaddingIconMiddleNormal:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPaddingIconMiddle:I

    .line 2973
    sget v0, Lcom/android/email/activity/MessageListItem;->sFavoritePaddingTopNormal:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mFavoritePaddingTop:I

    .line 2975
    sget v0, Lcom/android/email/activity/MessageListItem;->sVerbPaddingTopNormal:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mLastVerbPaddingTop:I

    .line 2977
    sget v0, Lcom/android/email/activity/MessageListItem;->sCheckboxPaddingTopNormal:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mCheckboxPaddingTop:I

    goto/16 :goto_0

    .line 2983
    :pswitch_3
    sget v0, Lcom/android/email/activity/MessageListItem;->sTextSizeLarge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mTextSize:I

    .line 2985
    sget v0, Lcom/android/email/activity/MessageListItem;->sTextSizeMainTextLarge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mTextSizeMainText:I

    .line 2987
    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingTopLarge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mMainTextPaddingTop:I

    .line 2989
    sget v0, Lcom/android/email/activity/MessageListItem;->sDatePaddingTopLarge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mDatePaddingTop:I

    .line 2991
    sget v0, Lcom/android/email/activity/MessageListItem;->sAttachmentPaddingTopLarge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mAttachmentPaddingTop:I

    .line 2993
    sget v0, Lcom/android/email/activity/MessageListItem;->sPaddingTextTopLarge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPaddingTextTop:I

    .line 2995
    sget v0, Lcom/android/email/activity/MessageListItem;->sPaddingTextMiddleLarge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPaddingTextMiddle:I

    .line 2997
    sget v0, Lcom/android/email/activity/MessageListItem;->sPaddingTextEndLarge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPaddingTextEnd:I

    .line 2999
    sget v0, Lcom/android/email/activity/MessageListItem;->sPaddingIconMiddleLarge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPaddingIconMiddle:I

    .line 3001
    sget v0, Lcom/android/email/activity/MessageListItem;->sFavoritePaddingTopLarge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mFavoritePaddingTop:I

    .line 3003
    sget v0, Lcom/android/email/activity/MessageListItem;->sVerbPaddingTopLarge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mLastVerbPaddingTop:I

    .line 3005
    sget v0, Lcom/android/email/activity/MessageListItem;->sCheckboxPaddingTopLarge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mCheckboxPaddingTop:I

    goto/16 :goto_0

    .line 3011
    :pswitch_4
    sget v0, Lcom/android/email/activity/MessageListItem;->sTextSizeHuge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mTextSize:I

    .line 3013
    sget v0, Lcom/android/email/activity/MessageListItem;->sTextSizeMainTextHuge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mTextSizeMainText:I

    .line 3015
    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingTopHuge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mMainTextPaddingTop:I

    .line 3017
    sget v0, Lcom/android/email/activity/MessageListItem;->sDatePaddingTopHuge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mDatePaddingTop:I

    .line 3019
    sget v0, Lcom/android/email/activity/MessageListItem;->sAttachmentPaddingTopHuge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mAttachmentPaddingTop:I

    .line 3021
    sget v0, Lcom/android/email/activity/MessageListItem;->sPaddingTextTopHuge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPaddingTextTop:I

    .line 3023
    sget v0, Lcom/android/email/activity/MessageListItem;->sPaddingTextMiddleHuge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPaddingTextMiddle:I

    .line 3025
    sget v0, Lcom/android/email/activity/MessageListItem;->sPaddingTextEndHuge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPaddingTextEnd:I

    .line 3027
    sget v0, Lcom/android/email/activity/MessageListItem;->sPaddingIconMiddleHuge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPaddingIconMiddle:I

    .line 3029
    sget v0, Lcom/android/email/activity/MessageListItem;->sFavoritePaddingTopHuge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mFavoritePaddingTop:I

    .line 3031
    sget v0, Lcom/android/email/activity/MessageListItem;->sVerbPaddingTopHuge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mLastVerbPaddingTop:I

    .line 3033
    sget v0, Lcom/android/email/activity/MessageListItem;->sCheckboxPaddingTopHuge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mCheckboxPaddingTop:I

    goto/16 :goto_0

    .line 3043
    :pswitch_5
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSelectedIconNinePatch:Landroid/graphics/NinePatch;

    sput-object v0, Lcom/android/email/activity/MessageListItem;->mSelectedIconNinePatch:Landroid/graphics/NinePatch;

    goto/16 :goto_1

    .line 3053
    :pswitch_6
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSelectedIconNinePatchBeige:Landroid/graphics/NinePatch;

    sput-object v0, Lcom/android/email/activity/MessageListItem;->mSelectedIconNinePatch:Landroid/graphics/NinePatch;

    goto/16 :goto_1

    .line 3067
    :pswitch_7
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSelectedIconNinePatchBlack:Landroid/graphics/NinePatch;

    sput-object v0, Lcom/android/email/activity/MessageListItem;->mSelectedIconNinePatch:Landroid/graphics/NinePatch;

    goto/16 :goto_1

    .line 3077
    :pswitch_8
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSelectedIconNinePatchBlack:Landroid/graphics/NinePatch;

    sput-object v0, Lcom/android/email/activity/MessageListItem;->mSelectedIconNinePatch:Landroid/graphics/NinePatch;

    goto/16 :goto_1

    .line 3153
    :cond_9
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mCheckboxPressed:Z

    if-eqz v0, :cond_a

    .line 3155
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSelectedIconOnPressedDarkTheme:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSelectedIconOn:Landroid/graphics/Bitmap;

    .line 3157
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSelectedIconOffPressedDarkTheme:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSelectedIconOff:Landroid/graphics/Bitmap;

    goto/16 :goto_2

    .line 3161
    :cond_a
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSelectedIconOnDarkTheme:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSelectedIconOn:Landroid/graphics/Bitmap;

    .line 3163
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSelectedIconOffDarkTheme:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSelectedIconOff:Landroid/graphics/Bitmap;

    goto/16 :goto_2

    .line 3171
    :cond_b
    sget v0, Lcom/android/email/activity/MessageListItem;->sBackgroundThreadItemColorLightReadWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mBackgroundThreadItemColorLightRead:I

    .line 3173
    sget v0, Lcom/android/email/activity/MessageListItem;->sBackgroundThreadItemColorLightUnreadWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mBackgroundThreadItemColorLightUnread:I

    .line 3177
    sget v0, Lcom/android/email/activity/MessageListItem;->sFocusedBackgroundColorWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mFocusedBackgroundColor:I

    .line 3179
    sget v0, Lcom/android/email/activity/MessageListItem;->sPressedTextColorWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPressedTextColor:I

    .line 3183
    sget v0, Lcom/android/email/activity/MessageListItem;->sMatchedtextColorWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mMatchedtextColor:I

    .line 3185
    sget v0, Lcom/android/email/activity/MessageListItem;->sSubTextReadTextColorLightWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mSubTextReadTextColorLight:I

    .line 3187
    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextReadTextColorLightWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mMainTextReadTextColorLight:I

    .line 3189
    sget v0, Lcom/android/email/activity/MessageListItem;->sDateReadTextColorLightWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mDateReadTextColorLight:I

    .line 3191
    sget v0, Lcom/android/email/activity/MessageListItem;->sSnippetReadTextColorLightWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippetReadTextColorLight:I

    .line 3193
    sget v0, Lcom/android/email/activity/MessageListItem;->sSubTextUnReadTextColorLightWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mSubTextUnReadTextColorLight:I

    .line 3195
    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextUnReadTextColorLightWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mMainTextUnReadTextColorLight:I

    .line 3197
    sget v0, Lcom/android/email/activity/MessageListItem;->sDateUnReadTextColorLightWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mDateUnReadTextColorLight:I

    .line 3199
    sget v0, Lcom/android/email/activity/MessageListItem;->sSnippetUnReadTextColorLightWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippetUnReadTextColorLight:I

    .line 3201
    sget v0, Lcom/android/email/activity/MessageListItem;->sSubTextReadTextColorDarkWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mSubTextReadTextColorDark:I

    .line 3203
    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextReadTextColorDarkWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mMainTextReadTextColorDark:I

    .line 3205
    sget v0, Lcom/android/email/activity/MessageListItem;->sDateReadTextColorDarkWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mDateReadTextColorDark:I

    .line 3207
    sget v0, Lcom/android/email/activity/MessageListItem;->sSnippetReadTextColorDarkWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippetReadTextColorDark:I

    .line 3209
    sget v0, Lcom/android/email/activity/MessageListItem;->sSubTextUnReadTextColorDarkWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mSubTextUnReadTextColorDark:I

    .line 3211
    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextUnReadTextColorDarkWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mMainTextUnReadTextColorDark:I

    .line 3213
    sget v0, Lcom/android/email/activity/MessageListItem;->sDateUnReadTextColorDarkWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mDateUnReadTextColorDark:I

    .line 3215
    sget v0, Lcom/android/email/activity/MessageListItem;->sSnippetUnReadTextColorDarkWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippetUnReadTextColorDark:I

    .line 3217
    sget v0, Lcom/android/email/activity/MessageListItem;->sTextReadOpacityWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mTextReadOpacity:I

    .line 3219
    sget v0, Lcom/android/email/activity/MessageListItem;->sTextUnreadOpacityWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mTextUnreadOpacity:I

    .line 3221
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mCheckboxDisabled:Z

    if-eqz v0, :cond_c

    .line 3223
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSelectedIconOnDisabledWhiteTheme:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSelectedIconOn:Landroid/graphics/Bitmap;

    .line 3225
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSelectedIconOffDisabledWhiteTheme:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSelectedIconOff:Landroid/graphics/Bitmap;

    goto/16 :goto_2

    .line 3227
    :cond_c
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mCheckboxPressed:Z

    if-eqz v0, :cond_d

    .line 3229
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSelectedIconOnPressedWhiteTheme:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSelectedIconOn:Landroid/graphics/Bitmap;

    .line 3231
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSelectedIconOffPressedWhiteTheme:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSelectedIconOff:Landroid/graphics/Bitmap;

    goto/16 :goto_2

    .line 3235
    :cond_d
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSelectedIconOnWhiteTheme:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSelectedIconOn:Landroid/graphics/Bitmap;

    .line 3237
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSelectedIconOffWhiteTheme:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSelectedIconOff:Landroid/graphics/Bitmap;

    goto/16 :goto_2

    .line 3259
    :cond_e
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto/16 :goto_3

    .line 3279
    :cond_f
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchDarkDark:Landroid/graphics/NinePatch;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    goto/16 :goto_4

    .line 3285
    :cond_10
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchDarkThreadWhiteTheme:Landroid/graphics/NinePatch;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    goto/16 :goto_4

    .line 3291
    :cond_11
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    if-ne v0, v4, :cond_13

    .line 3295
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    if-eqz v0, :cond_12

    .line 3297
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchDarkThreadDarkTheme:Landroid/graphics/NinePatch;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    goto/16 :goto_4

    .line 3301
    :cond_12
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchDarkDark:Landroid/graphics/NinePatch;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    goto/16 :goto_4

    .line 3307
    :cond_13
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchDarkWhiteTheme:Landroid/graphics/NinePatch;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    goto/16 :goto_4

    .line 3315
    :cond_14
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v0

    if-eqz v0, :cond_15

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    if-ne v0, v4, :cond_15

    .line 3317
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchDarkTheme:Landroid/graphics/NinePatch;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    goto/16 :goto_4

    .line 3321
    :cond_15
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchWhiteTheme:Landroid/graphics/NinePatch;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    goto/16 :goto_4

    .line 3329
    :cond_16
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->isMesssageListLeftside()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3331
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mRead:Z

    if-eqz v0, :cond_19

    .line 3353
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSubTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mSubTextReadTextColorDark:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 3355
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSnippetPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mSnippetReadTextColorDark:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 3357
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mDateReadTextColorDark:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 3359
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mMainTextReadTextColorDark:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 3363
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 3365
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v0

    if-eqz v0, :cond_18

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    if-ne v0, v4, :cond_18

    .line 3369
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    if-eqz v0, :cond_17

    .line 3371
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchDarkThreadDarkTheme:Landroid/graphics/NinePatch;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    .line 3385
    :goto_c
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sAttachmentIconDimmed:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mAttachmentIcon:Landroid/graphics/Bitmap;

    goto/16 :goto_4

    .line 3375
    :cond_17
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchDarkDark:Landroid/graphics/NinePatch;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    goto :goto_c

    .line 3381
    :cond_18
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchDarkThreadWhiteTheme:Landroid/graphics/NinePatch;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    goto :goto_c

    .line 3409
    :cond_19
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSubTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mSubTextUnReadTextColorDark:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 3411
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSnippetPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mSnippetUnReadTextColorDark:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 3413
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mDateUnReadTextColorDark:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 3415
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mMainTextUnReadTextColorDark:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 3419
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 3421
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    if-ne v0, v4, :cond_1b

    .line 3425
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    if-eqz v0, :cond_1a

    .line 3427
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchDarkThreadDarkTheme:Landroid/graphics/NinePatch;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    .line 3441
    :goto_d
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sAttachmentIcon:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mAttachmentIcon:Landroid/graphics/Bitmap;

    goto/16 :goto_4

    .line 3431
    :cond_1a
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchDarkDark:Landroid/graphics/NinePatch;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    goto :goto_d

    .line 3437
    :cond_1b
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchDarkThreadWhiteTheme:Landroid/graphics/NinePatch;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    goto :goto_d

    .line 3447
    :cond_1c
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mRead:Z

    if-eqz v0, :cond_1d

    .line 3449
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSubTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mSubTextReadTextColorLight:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 3451
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSnippetPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mSnippetReadTextColorLight:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 3453
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mDateReadTextColorLight:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 3455
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mMainTextReadTextColorLight:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 3457
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 3459
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sAttachmentIconDimmed:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mAttachmentIcon:Landroid/graphics/Bitmap;

    .line 3477
    :goto_e
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    if-ne v0, v4, :cond_1e

    .line 3479
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchDarkTheme:Landroid/graphics/NinePatch;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    goto/16 :goto_4

    .line 3463
    :cond_1d
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSubTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mSubTextUnReadTextColorLight:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 3465
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSnippetPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mSnippetUnReadTextColorLight:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 3467
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mDateUnReadTextColorLight:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 3469
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mMainTextUnReadTextColorLight:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 3471
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 3473
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sAttachmentIcon:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mAttachmentIcon:Landroid/graphics/Bitmap;

    goto :goto_e

    .line 3483
    :cond_1e
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchWhiteTheme:Landroid/graphics/NinePatch;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    goto/16 :goto_4

    .line 3549
    :pswitch_9
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sLastVerbIconReplyPressed:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mLastverbIcon:Landroid/graphics/Bitmap;

    goto/16 :goto_5

    .line 3555
    :pswitch_a
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sLastVerbIconReplyPressed:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mLastverbIcon:Landroid/graphics/Bitmap;

    goto/16 :goto_5

    .line 3561
    :pswitch_b
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sLastVerbIconForwardPressed:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mLastverbIcon:Landroid/graphics/Bitmap;

    goto/16 :goto_5

    .line 3575
    :cond_1f
    iput-boolean v3, p0, Lcom/android/email/activity/MessageListItem;->mHasTitleIcon:Z

    goto/16 :goto_6

    .line 3583
    :cond_20
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mHasFavoriteIcon:Z

    .line 3585
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mFollowUpFlagStatus:I

    packed-switch v0, :pswitch_data_4

    .line 3603
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sFollowUpFlagIconClear:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFavoriteIcon:Landroid/graphics/Bitmap;

    goto/16 :goto_6

    .line 3589
    :pswitch_c
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sFollowUpFlagIconComplete:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFavoriteIcon:Landroid/graphics/Bitmap;

    goto/16 :goto_6

    .line 3595
    :pswitch_d
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sFollowUpFlagIconSet:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFavoriteIcon:Landroid/graphics/Bitmap;

    goto/16 :goto_6

    .line 3627
    :cond_21
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->isVoiceMail:Z

    if-eqz v0, :cond_22

    .line 3629
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sVoiceMailIcon:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mAttachmentIcon:Landroid/graphics/Bitmap;

    .line 3631
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mHasAttachment:Z

    goto/16 :goto_7

    .line 3633
    :cond_22
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasInvite:Z

    if-eqz v0, :cond_2

    .line 3637
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sMeetingRequestIcon:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mAttachmentIcon:Landroid/graphics/Bitmap;

    .line 3639
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mHasAttachment:Z

    goto/16 :goto_7

    .line 3657
    :pswitch_e
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sLastVerbIconReply:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mLastverbIcon:Landroid/graphics/Bitmap;

    goto/16 :goto_8

    .line 3663
    :pswitch_f
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sLastVerbIconReply:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mLastverbIcon:Landroid/graphics/Bitmap;

    goto/16 :goto_8

    .line 3669
    :pswitch_10
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sLastVerbIconForward:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mLastverbIcon:Landroid/graphics/Bitmap;

    goto/16 :goto_8

    .line 3683
    :cond_23
    iput-boolean v3, p0, Lcom/android/email/activity/MessageListItem;->mHasTitleIcon:Z

    goto/16 :goto_9

    .line 3689
    :cond_24
    iput-boolean v3, p0, Lcom/android/email/activity/MessageListItem;->mHasFavoriteIcon:Z

    .line 3691
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sFollowUpFlagIconComplete:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFavoriteIcon:Landroid/graphics/Bitmap;

    goto/16 :goto_9

    .line 3697
    :cond_25
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mHasFavoriteIcon:Z

    .line 3699
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->isPressed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3705
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mIsFavorite:Z

    if-eqz v0, :cond_26

    .line 3707
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sFavoriteIconOn:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFavoriteIcon:Landroid/graphics/Bitmap;

    .line 3717
    :goto_f
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasReplyIcon:Z

    if-eqz v0, :cond_5

    .line 3719
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sLastVerbIconReply:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mReplyIcon:Landroid/graphics/Bitmap;

    goto/16 :goto_9

    .line 3711
    :cond_26
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sFavoriteIconOff:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFavoriteIcon:Landroid/graphics/Bitmap;

    goto :goto_f

    .line 3747
    :cond_27
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPriority:I

    if-nez v0, :cond_6

    .line 3749
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mHasPriorityIcon:Z

    .line 3751
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sPriorityIconLowPressed:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mPriorityIcon:Landroid/graphics/Bitmap;

    goto/16 :goto_a

    .line 3761
    :cond_28
    iput-boolean v3, p0, Lcom/android/email/activity/MessageListItem;->mHasTitleIcon:Z

    goto/16 :goto_b

    .line 3769
    :cond_29
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPriority:I

    if-ne v0, v4, :cond_2c

    .line 3771
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sPriorityIconHigh:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mPriorityIcon:Landroid/graphics/Bitmap;

    .line 3773
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mHasPriorityIcon:Z

    .line 3783
    :cond_2a
    :goto_10
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasLastVerbIcon:Z

    if-nez v0, :cond_2b

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasPriorityIcon:Z

    if-eqz v0, :cond_2d

    .line 3785
    :cond_2b
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mHasTitleIcon:Z

    goto/16 :goto_b

    .line 3775
    :cond_2c
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPriority:I

    if-nez v0, :cond_2a

    .line 3777
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sPriorityIconLow:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mPriorityIcon:Landroid/graphics/Bitmap;

    .line 3779
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mHasPriorityIcon:Z

    goto :goto_10

    .line 3789
    :cond_2d
    iput-boolean v3, p0, Lcom/android/email/activity/MessageListItem;->mHasTitleIcon:Z

    goto/16 :goto_b

    .line 2895
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 3039
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 3545
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 3653
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch

    .line 3585
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method DrawIconStack(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;II)V
    .locals 7
    .parameter "canvas"
    .parameter "icon"
    .parameter "width"
    .parameter "top"

    .prologue
    .line 3832
    if-eqz p2, :cond_0

    .line 3834
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 3836
    .local v0, icon_w:I
    if-gtz p3, :cond_1

    move v3, v0

    .line 3838
    .local v3, w:I
    :goto_0
    sub-int v4, v3, v0

    div-int/lit8 v2, v4, 0x2

    .line 3840
    .local v2, margine:I
    sget v4, Lcom/android/email/activity/MessageListItem;->iconStackRightBound:I

    add-int v5, v0, v2

    sub-int v1, v4, v5

    .line 3842
    .local v1, left:I
    int-to-float v4, v1

    int-to-float v5, p4

    const/4 v6, 0x0

    invoke-virtual {p1, p2, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 3844
    sub-int v4, v1, v2

    sput v4, Lcom/android/email/activity/MessageListItem;->iconStackRightBound:I

    .line 3848
    .end local v0           #icon_w:I
    .end local v1           #left:I
    .end local v2           #margine:I
    .end local v3           #w:I
    :cond_0
    return-void

    .restart local v0       #icon_w:I
    :cond_1
    move v3, p3

    .line 3836
    goto :goto_0
.end method

.method ResetIconStack()V
    .locals 2

    .prologue
    .line 3822
    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->isMesssageListLeftside()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/email/activity/MessageListItem;->sFavoritePaddingRightDark:I

    :goto_0
    sub-int v0, v1, v0

    sput v0, Lcom/android/email/activity/MessageListItem;->iconStackRightBound:I

    .line 3828
    return-void

    .line 3822
    :cond_0
    sget v0, Lcom/android/email/activity/MessageListItem;->sFavoritePaddingRight:I

    goto :goto_0
.end method

.method public bindViewInit(Lcom/android/email/activity/MessagesAdapter;Lcom/android/email/activity/MessagesAdapter$Callback;)V
    .locals 1
    .parameter "adapter"
    .parameter "callback"

    .prologue
    .line 4637
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    if-nez v0, :cond_0

    .line 4639
    iput-object p2, p0, Lcom/android/email/activity/MessageListItem;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    .line 4641
    :cond_0
    iput-object p1, p0, Lcom/android/email/activity/MessageListItem;->mAdapter:Lcom/android/email/activity/MessagesAdapter;

    .line 4643
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 3855
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->updateBackground()V

    .line 3857
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 3859
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 4653
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 4667
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 4657
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->getResult()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4659
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessagesAdapter$Callback;->dropItemsFinish()V

    goto :goto_0

    .line 4653
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter

    .prologue
    .line 3864
    const/4 v0, 0x0

    .line 3866
    invoke-direct {p0}, Lcom/android/email/activity/MessageListItem;->setLocalVariable()V

    .line 3870
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->ResetIconStack()V

    .line 3874
    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->isPhoneMode()Z

    move-result v11

    .line 3876
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSortType()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_38

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mParentIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_38

    .line 3878
    sget v0, Lcom/android/email/activity/MessageListItem;->sThreadListPadding:I

    move v7, v0

    .line 3880
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mColorChipBitmap:Landroid/graphics/NinePatch;

    if-nez v0, :cond_17

    const/4 v0, 0x0

    move v8, v0

    .line 3884
    :goto_1
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mColorChipBitmap:Landroid/graphics/NinePatch;

    if-eqz v0, :cond_0

    .line 3886
    new-instance v0, Landroid/graphics/Rect;

    sget v1, Lcom/android/email/activity/MessageListItem;->sMorePaddingVertical:I

    sget v2, Lcom/android/email/activity/MessageListItem;->sColorTipWidth:I

    add-int/2addr v2, v7

    iget v3, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    sget v4, Lcom/android/email/activity/MessageListItem;->sMorePaddingVertical:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v7, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 3890
    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mColorChipBitmap:Landroid/graphics/NinePatch;

    invoke-virtual {v1, p1, v0}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 3898
    :cond_0
    sget v0, Lcom/android/email/activity/MessageListItem;->sCheckboxHitWidth:I

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mSelectedIconOff:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v2, v0, 0x2

    .line 3900
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mSelectedIconOff:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mCheckboxPaddingTop:I

    add-int v3, v0, v1

    .line 3902
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0, p0}, Lcom/android/email/activity/MessagesAdapter;->isSelected(Lcom/android/email/activity/MessageListItem;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSelectedIconOn:Landroid/graphics/Bitmap;

    move-object v1, v0

    :goto_2
    if-eqz v8, :cond_19

    sget v0, Lcom/android/email/activity/MessageListItem;->sMorePadding:I

    add-int/2addr v0, v2

    add-int/2addr v0, v7

    int-to-float v0, v0

    :goto_3
    int-to-float v2, v3

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 3910
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 3912
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 3914
    neg-int v0, v0

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mMainTextPaddingTop:I

    add-int v12, v0, v1

    .line 3916
    if-eqz v8, :cond_1a

    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingLeft:I

    sget v1, Lcom/android/email/activity/MessageListItem;->sMorePadding:I

    add-int/2addr v0, v1

    add-int/2addr v0, v7

    move v9, v0

    .line 3922
    :goto_4
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasFavoriteIcon:Z

    if-eqz v0, :cond_1

    .line 3924
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFavoriteIcon:Landroid/graphics/Bitmap;

    sget v1, Lcom/android/email/activity/MessageListItem;->sFavoriteIconWidth:I

    iget v2, p0, Lcom/android/email/activity/MessageListItem;->mFavoritePaddingTop:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/email/activity/MessageListItem;->DrawIconStack(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;II)V

    .line 3930
    :cond_1
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasAttachment:Z

    if-eqz v0, :cond_2

    .line 3932
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mAttachmentIcon:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/email/activity/MessageListItem;->mAttachmentPaddingTop:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/email/activity/MessageListItem;->DrawIconStack(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;II)V

    .line 3938
    :cond_2
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasPriorityIcon:Z

    if-eqz v0, :cond_3

    .line 3940
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mPriorityIcon:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/email/activity/MessageListItem;->mAttachmentPaddingTop:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/email/activity/MessageListItem;->DrawIconStack(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;II)V

    .line 3944
    :cond_3
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->isEncrypted:Z

    if-eqz v0, :cond_4

    .line 3946
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sEncryptIcon:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/email/activity/MessageListItem;->mFavoritePaddingTop:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/email/activity/MessageListItem;->DrawIconStack(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;II)V

    .line 3950
    :cond_4
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->isSigned:Z

    if-eqz v0, :cond_5

    .line 3952
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSignIcon:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/email/activity/MessageListItem;->mFavoritePaddingTop:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/email/activity/MessageListItem;->DrawIconStack(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;II)V

    .line 3956
    :cond_5
    const-string v0, "eas"

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mAccountSchema:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mMailboxType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 3960
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mServerId:Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 3962
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sDraftIconServer:Landroid/graphics/Bitmap;

    .line 3970
    :goto_5
    const/4 v1, 0x0

    iget v2, p0, Lcom/android/email/activity/MessageListItem;->mAttachmentPaddingTop:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/email/activity/MessageListItem;->DrawIconStack(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;II)V

    .line 3974
    :cond_6
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasIrm:Z

    if-eqz v0, :cond_7

    .line 3976
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sIrmIcon:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/email/activity/MessageListItem;->mFavoritePaddingTop:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/email/activity/MessageListItem;->DrawIconStack(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;II)V

    .line 3980
    :cond_7
    invoke-direct {p0}, Lcom/android/email/activity/MessageListItem;->calculateMainTextText()V

    .line 3982
    invoke-direct {p0}, Lcom/android/email/activity/MessageListItem;->calculateDrawingData()V

    .line 3984
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFormattedMainText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    .line 3986
    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mFormattedMainText:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFormattedMainText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    int-to-float v4, v9

    int-to-float v5, v12

    sget-object v6, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 3995
    :cond_8
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isInSearchMode()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSearchString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 3997
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightMainText:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 3999
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mMatchedtextColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 4001
    const/4 v0, 0x0

    move v10, v0

    :goto_6
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightMainText:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_9

    .line 4003
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightMainText:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListItem$SearchItem;

    iget-object v0, v0, Lcom/android/email/activity/MessageListItem$SearchItem;->searchStr:Ljava/lang/String;

    if-nez v0, :cond_1c

    .line 4021
    :cond_9
    if-nez v11, :cond_21

    .line 4023
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mAttachmentPaddingTop:I

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mAttachmentIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mPaddingIconMiddle:I

    add-int/2addr v1, v0

    .line 4027
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mAttachmentPaddingTop:I

    iget-object v2, p0, Lcom/android/email/activity/MessageListItem;->mAttachmentIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/android/email/activity/MessageListItem;->mPaddingIconMiddle:I

    add-int/2addr v2, v0

    .line 4031
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasTitleIcon:Z

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasPriorityIcon:Z

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasLastVerbIcon:Z

    if-eqz v0, :cond_1e

    .line 4033
    iget-object v2, p0, Lcom/android/email/activity/MessageListItem;->mLastverbIcon:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_1d

    sget v0, Lcom/android/email/activity/MessageListItem;->sAttachmentPaddingLeft:I

    sget v3, Lcom/android/email/activity/MessageListItem;->sMorePadding:I

    add-int/2addr v0, v3

    add-int/2addr v0, v7

    int-to-float v0, v0

    :goto_7
    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 4085
    :cond_a
    :goto_8
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSubTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 4087
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 4089
    neg-int v0, v0

    add-int/2addr v0, v12

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mPaddingTextTop:I

    add-int v11, v0, v1

    .line 4109
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasLastVerbIcon:Z

    if-eqz v0, :cond_24

    .line 4111
    if-eqz v8, :cond_23

    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingLeft:I

    sget v1, Lcom/android/email/activity/MessageListItem;->sMorePadding:I

    add-int/2addr v0, v1

    add-int/2addr v0, v7

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mLastverbIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    move v9, v0

    .line 4117
    :goto_9
    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mFormattedSubText:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFormattedSubText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    int-to-float v4, v9

    int-to-float v5, v11

    sget-object v6, Lcom/android/email/activity/MessageListItem;->sSubTextPaint:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 4147
    :goto_a
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isInSearchMode()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSearchString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 4149
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSubText:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 4151
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSubTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mMatchedtextColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 4153
    const/4 v0, 0x0

    move v10, v0

    :goto_b
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSubText:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_b

    .line 4155
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSubText:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListItem$SearchItem;

    iget-object v0, v0, Lcom/android/email/activity/MessageListItem$SearchItem;->searchStr:Ljava/lang/String;

    if-nez v0, :cond_28

    .line 4173
    :cond_b
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSubTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontSpacing()F

    move-result v0

    float-to-int v1, v0

    .line 4175
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSnippetPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontSpacing()F

    move-result v0

    float-to-int v12, v0

    .line 4179
    if-eqz v8, :cond_29

    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingLeft:I

    sget v2, Lcom/android/email/activity/MessageListItem;->sMorePadding:I

    add-int/2addr v0, v2

    .line 4181
    :goto_c
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSortType()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_2a

    add-int/2addr v0, v7

    move v8, v0

    .line 4185
    :goto_d
    add-int v0, v11, v1

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mPaddingTextMiddle:I

    add-int/2addr v1, v0

    .line 4187
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSnippetPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getColor()I

    move-result v13

    .line 4189
    const/4 v0, 0x0

    move v9, v0

    move v10, v1

    :goto_e
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-ge v9, v0, :cond_c

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippetLineCount:I

    if-ge v9, v0, :cond_c

    .line 4191
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippetLines:[Ljava/lang/CharSequence;

    if-nez v0, :cond_2b

    .line 4287
    :cond_c
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 4289
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 4293
    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    sget v2, Lcom/android/email/activity/MessageListItem;->sDatePaddingRight:I

    sub-int v4, v1, v2

    .line 4295
    neg-int v0, v0

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mDatePaddingTop:I

    add-int/2addr v0, v1

    .line 4297
    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mFormattedDate:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/email/activity/MessageListItem;->mFormattedDate:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    int-to-float v4, v4

    int-to-float v5, v0

    sget-object v6, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 4353
    new-instance v6, Landroid/graphics/Rect;

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    iget v3, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 4355
    sget-boolean v0, Lcom/android/email/activity/MessageListXL;->isRightSplitPressed:Z

    if-eqz v0, :cond_d

    .line 4359
    iget v0, v6, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x7

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 4361
    :cond_d
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 4365
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->isMesssageListLeftside()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 4421
    :goto_f
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mNeedMorePadding:Z

    if-eqz v0, :cond_e

    .line 4423
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    add-int/lit8 v2, v2, -0xa

    iget v3, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 4425
    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 4431
    :cond_e
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    if-eqz v0, :cond_f

    .line 4433
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    add-int/lit8 v0, v0, -0x2

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 4437
    :cond_f
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasDivider:Z

    if-nez v0, :cond_10

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSortType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_12

    .line 4440
    :cond_10
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    if-nez v0, :cond_11

    .line 4441
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 4442
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    if-eqz v0, :cond_30

    .line 4443
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchDarkThreadDarkTheme:Landroid/graphics/NinePatch;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    .line 4455
    :cond_11
    :goto_10
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    invoke-virtual {v0, p1, v6}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 4461
    :cond_12
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 4463
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 4465
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mFocusedBackgroundColor:I

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 4467
    const/4 v1, 0x0

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    add-int/lit8 v0, v0, -0x3

    int-to-float v2, v0

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    int-to-float v3, v0

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 4469
    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    const/high16 v3, 0x4000

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 4471
    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    int-to-float v3, v0

    const/high16 v4, 0x4040

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 4473
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    add-int/lit8 v0, v0, -0x2

    int-to-float v1, v0

    const/high16 v2, 0x3f80

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    int-to-float v3, v0

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 4479
    :cond_13
    new-instance v1, Landroid/graphics/Rect;

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    iget v4, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 4481
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->isMesssageListLeftside()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 4485
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v0

    .line 4487
    const/4 v2, 0x3

    if-eq v0, v2, :cond_33

    const/4 v2, 0x4

    if-eq v0, v2, :cond_33

    const/4 v0, 0x1

    .line 4491
    :goto_11
    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageId()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_34

    if-eqz v0, :cond_34

    .line 4529
    new-instance v0, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    iget v5, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 4531
    iget v2, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    sget-object v3, Lcom/android/email/activity/MessageListItem;->sSelectedMessageIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    sget-object v3, Lcom/android/email/activity/MessageListItem;->sNoneSelectedMessageIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 4535
    iget v2, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    sget-object v3, Lcom/android/email/activity/MessageListItem;->sSelectedMessageIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 4537
    iget v2, v0, Landroid/graphics/Rect;->top:I

    sget-object v3, Lcom/android/email/activity/MessageListItem;->sSelectedMessageIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 4541
    sget-object v2, Lcom/android/email/activity/MessageListItem;->mSelectedIconNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v2, p1, v0}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 4543
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    sget-object v2, Lcom/android/email/activity/MessageListItem;->sNoneSelectedMessageIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 4545
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sNoneSelectedIconNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 4577
    :cond_14
    :goto_12
    sget v0, Lcom/android/email/activity/MessageListXL;->sRightSplitType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_15

    .line 4579
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    sget-object v2, Lcom/android/email/activity/MessageListItem;->sFullViewSplitViewNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v2}, Landroid/graphics/NinePatch;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 4581
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sFullViewSplitViewNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 4591
    :cond_15
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPosition:I

    if-nez v0, :cond_16

    .line 4593
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->isMesssageListLeftside()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 4595
    sget-boolean v0, Lcom/android/email/activity/MessageListXL;->isRightSplitPressed:Z

    if-eqz v0, :cond_35

    .line 4597
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    add-int/lit8 v3, v3, -0x8

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 4599
    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    invoke-virtual {v1, p1, v0}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 4627
    :cond_16
    :goto_13
    return-void

    .line 3880
    :cond_17
    const/4 v0, 0x1

    move v8, v0

    goto/16 :goto_1

    .line 3902
    :cond_18
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSelectedIconOff:Landroid/graphics/Bitmap;

    move-object v1, v0

    goto/16 :goto_2

    :cond_19
    add-int v0, v2, v7

    int-to-float v0, v0

    goto/16 :goto_3

    .line 3916
    :cond_1a
    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingLeft:I

    add-int/2addr v0, v7

    move v9, v0

    goto/16 :goto_4

    .line 3966
    :cond_1b
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sDraftIconClient:Landroid/graphics/Bitmap;

    goto/16 :goto_5

    .line 4007
    :cond_1c
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightMainText:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListItem$SearchItem;

    iget-object v1, v0, Lcom/android/email/activity/MessageListItem$SearchItem;->searchStr:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightMainText:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListItem$SearchItem;

    iget-object v0, v0, Lcom/android/email/activity/MessageListItem$SearchItem;->searchStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightMainText:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListItem$SearchItem;

    iget v0, v0, Lcom/android/email/activity/MessageListItem$SearchItem;->position:I

    add-int/2addr v0, v9

    int-to-float v4, v0

    int-to-float v5, v12

    sget-object v6, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 4001
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto/16 :goto_6

    .line 4033
    :cond_1d
    sget v0, Lcom/android/email/activity/MessageListItem;->sAttachmentPaddingLeft:I

    add-int/2addr v0, v7

    int-to-float v0, v0

    goto/16 :goto_7

    .line 4039
    :cond_1e
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasTitleIcon:Z

    if-eqz v0, :cond_1f

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasPriorityIcon:Z

    if-nez v0, :cond_a

    .line 4051
    :cond_1f
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasTitleIcon:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasLastVerbIcon:Z

    if-eqz v0, :cond_a

    .line 4053
    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mLastverbIcon:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_20

    sget v0, Lcom/android/email/activity/MessageListItem;->sAttachmentPaddingLeft:I

    sget v3, Lcom/android/email/activity/MessageListItem;->sMorePadding:I

    add-int/2addr v0, v3

    add-int/2addr v0, v7

    int-to-float v0, v0

    :goto_14
    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_8

    :cond_20
    sget v0, Lcom/android/email/activity/MessageListItem;->sAttachmentPaddingLeft:I

    add-int/2addr v0, v7

    int-to-float v0, v0

    goto :goto_14

    .line 4065
    :cond_21
    if-eqz v11, :cond_a

    .line 4067
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasLastVerbIcon:Z

    if-eqz v0, :cond_22

    .line 4069
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mLastverbIcon:Landroid/graphics/Bitmap;

    int-to-float v1, v9

    iget v2, p0, Lcom/android/email/activity/MessageListItem;->mLastVerbPaddingTop:I

    add-int/2addr v2, v12

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_8

    .line 4073
    :cond_22
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasReplyIcon:Z

    if-eqz v0, :cond_a

    .line 4075
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mReplyIcon:Landroid/graphics/Bitmap;

    int-to-float v1, v9

    iget v2, p0, Lcom/android/email/activity/MessageListItem;->mFavoritePaddingTop:I

    add-int/2addr v2, v12

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_8

    .line 4111
    :cond_23
    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingLeft:I

    add-int/2addr v0, v7

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mLastverbIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    move v9, v0

    goto/16 :goto_9

    .line 4121
    :cond_24
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasReplyIcon:Z

    if-eqz v0, :cond_26

    .line 4123
    if-eqz v8, :cond_25

    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingLeft:I

    sget v1, Lcom/android/email/activity/MessageListItem;->sMorePadding:I

    add-int/2addr v0, v1

    add-int/2addr v0, v7

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mReplyIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    move v9, v0

    .line 4129
    :goto_15
    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mFormattedSubText:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFormattedSubText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    int-to-float v4, v9

    int-to-float v5, v11

    sget-object v6, Lcom/android/email/activity/MessageListItem;->sSubTextPaint:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    goto/16 :goto_a

    .line 4123
    :cond_25
    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingLeft:I

    add-int/2addr v0, v7

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mReplyIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    move v9, v0

    goto :goto_15

    .line 4135
    :cond_26
    if-eqz v8, :cond_27

    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingLeft:I

    sget v1, Lcom/android/email/activity/MessageListItem;->sMorePadding:I

    add-int/2addr v0, v1

    add-int/2addr v0, v7

    move v9, v0

    .line 4139
    :goto_16
    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mFormattedSubText:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFormattedSubText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    int-to-float v4, v9

    int-to-float v5, v11

    sget-object v6, Lcom/android/email/activity/MessageListItem;->sSubTextPaint:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    goto/16 :goto_a

    .line 4135
    :cond_27
    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingLeft:I

    add-int/2addr v0, v7

    move v9, v0

    goto :goto_16

    .line 4159
    :cond_28
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSubText:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListItem$SearchItem;

    iget-object v1, v0, Lcom/android/email/activity/MessageListItem$SearchItem;->searchStr:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSubText:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListItem$SearchItem;

    iget-object v0, v0, Lcom/android/email/activity/MessageListItem$SearchItem;->searchStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSubText:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListItem$SearchItem;

    iget v0, v0, Lcom/android/email/activity/MessageListItem$SearchItem;->position:I

    add-int/2addr v0, v9

    int-to-float v4, v0

    int-to-float v5, v11

    sget-object v6, Lcom/android/email/activity/MessageListItem;->sSubTextPaint:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 4153
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto/16 :goto_b

    .line 4179
    :cond_29
    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingLeft:I

    goto/16 :goto_c

    :cond_2a
    move v8, v0

    .line 4181
    goto/16 :goto_d

    .line 4197
    :cond_2b
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippetLines:[Ljava/lang/CharSequence;

    aget-object v1, v0, v9

    .line 4201
    if-eqz v1, :cond_37

    .line 4203
    const/4 v2, 0x0

    .line 4205
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSnippetPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v13}, Landroid/text/TextPaint;->setColor(I)V

    .line 4207
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    int-to-float v4, v8

    int-to-float v5, v10

    sget-object v6, Lcom/android/email/activity/MessageListItem;->sSnippetPaint:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 4213
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isInSearchMode()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSearchString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 4215
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSnippet:[Ljava/util/ArrayList;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSnippet:[Ljava/util/ArrayList;

    aget-object v0, v0, v9

    if-eqz v0, :cond_2c

    .line 4217
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSnippetPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mMatchedtextColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 4219
    const/4 v0, 0x0

    move v11, v0

    :goto_17
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSnippet:[Ljava/util/ArrayList;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v11, v0, :cond_2c

    .line 4221
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSnippet:[Ljava/util/ArrayList;

    aget-object v0, v0, v9

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListItem$SearchItem;

    iget-object v0, v0, Lcom/android/email/activity/MessageListItem$SearchItem;->searchStr:Ljava/lang/String;

    if-nez v0, :cond_2d

    .line 4239
    :cond_2c
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPaddingTextEnd:I

    add-int/2addr v0, v12

    add-int v1, v10, v0

    .line 4189
    :goto_18
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    move v10, v1

    goto/16 :goto_e

    .line 4225
    :cond_2d
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSnippet:[Ljava/util/ArrayList;

    aget-object v0, v0, v9

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListItem$SearchItem;

    iget-object v1, v0, Lcom/android/email/activity/MessageListItem$SearchItem;->searchStr:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSnippet:[Ljava/util/ArrayList;

    aget-object v0, v0, v9

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListItem$SearchItem;

    iget-object v0, v0, Lcom/android/email/activity/MessageListItem$SearchItem;->searchStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSnippet:[Ljava/util/ArrayList;

    aget-object v0, v0, v9

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListItem$SearchItem;

    iget v0, v0, Lcom/android/email/activity/MessageListItem$SearchItem;->position:I

    add-int/2addr v0, v8

    int-to-float v4, v0

    int-to-float v5, v10

    sget-object v6, Lcom/android/email/activity/MessageListItem;->sSnippetPaint:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 4219
    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto :goto_17

    .line 4375
    :cond_2e
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mRead:Z

    if-eqz v0, :cond_2f

    .line 4377
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mBackgroundThreadItemColorLightRead:I

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 4385
    :goto_19
    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v6, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0xa

    int-to-float v3, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_f

    .line 4381
    :cond_2f
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mBackgroundThreadItemColorLightUnread:I

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_19

    .line 4445
    :cond_30
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchDarkDark:Landroid/graphics/NinePatch;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    goto/16 :goto_10

    .line 4448
    :cond_31
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    if-eqz v0, :cond_32

    .line 4449
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchDarkThreadWhiteTheme:Landroid/graphics/NinePatch;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    goto/16 :goto_10

    .line 4451
    :cond_32
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchWhiteTheme:Landroid/graphics/NinePatch;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    goto/16 :goto_10

    .line 4487
    :cond_33
    const/4 v0, 0x0

    goto/16 :goto_11

    .line 4563
    :cond_34
    if-eqz v0, :cond_14

    .line 4567
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    sget-object v2, Lcom/android/email/activity/MessageListItem;->sNoneSelectedMessageIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 4569
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sNoneSelectedIconNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    goto/16 :goto_12

    .line 4603
    :cond_35
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    add-int/lit8 v3, v3, -0x3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 4605
    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    invoke-virtual {v1, p1, v0}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    goto/16 :goto_13

    .line 4611
    :cond_36
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 4613
    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    invoke-virtual {v1, p1, v0}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    goto/16 :goto_13

    :cond_37
    move v1, v10

    goto/16 :goto_18

    :cond_38
    move v7, v0

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 2765
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mfontSize:I

    packed-switch v0, :pswitch_data_0

    .line 2869
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 2871
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    .line 2875
    :cond_1
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageListItem;->setMeasuredDimension(II)V

    .line 2883
    return-void

    .line 2769
    :pswitch_0
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-nez v0, :cond_2

    .line 2771
    sget v0, Lcom/android/email/activity/MessageListItem;->sViewHeightTinyPreviewZero:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    .line 2773
    :cond_2
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-ne v0, v1, :cond_3

    .line 2775
    sget v0, Lcom/android/email/activity/MessageListItem;->sViewHeightTinyPreviewOne:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    .line 2777
    :cond_3
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-ne v0, v2, :cond_4

    .line 2779
    sget v0, Lcom/android/email/activity/MessageListItem;->sViewHeightTinyPreviewTwo:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    .line 2781
    :cond_4
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-ne v0, v3, :cond_0

    .line 2783
    sget v0, Lcom/android/email/activity/MessageListItem;->sViewHeightTinyPreviewThree:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    goto :goto_0

    .line 2789
    :pswitch_1
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-nez v0, :cond_5

    .line 2791
    sget v0, Lcom/android/email/activity/MessageListItem;->sViewHeightSmallPreviewZero:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    .line 2793
    :cond_5
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-ne v0, v1, :cond_6

    .line 2795
    sget v0, Lcom/android/email/activity/MessageListItem;->sViewHeightSmallPreviewOne:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    .line 2797
    :cond_6
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-ne v0, v2, :cond_7

    .line 2799
    sget v0, Lcom/android/email/activity/MessageListItem;->sViewHeightSmallPreviewTwo:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    .line 2801
    :cond_7
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-ne v0, v3, :cond_0

    .line 2803
    sget v0, Lcom/android/email/activity/MessageListItem;->sViewHeightSmallPreviewThree:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    goto :goto_0

    .line 2809
    :pswitch_2
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-nez v0, :cond_8

    .line 2811
    sget v0, Lcom/android/email/activity/MessageListItem;->sViewHeightNormalPreviewZero:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    .line 2813
    :cond_8
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-ne v0, v1, :cond_9

    .line 2815
    sget v0, Lcom/android/email/activity/MessageListItem;->sViewHeightNormalPreviewOne:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    .line 2817
    :cond_9
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-ne v0, v2, :cond_a

    .line 2819
    sget v0, Lcom/android/email/activity/MessageListItem;->sViewHeightNormalPreviewTwo:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    .line 2821
    :cond_a
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-ne v0, v3, :cond_0

    .line 2823
    sget v0, Lcom/android/email/activity/MessageListItem;->sViewHeightNormalPreviewThree:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    goto :goto_0

    .line 2829
    :pswitch_3
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-nez v0, :cond_b

    .line 2831
    sget v0, Lcom/android/email/activity/MessageListItem;->sViewHeightLargePreviewZero:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    .line 2833
    :cond_b
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-ne v0, v1, :cond_c

    .line 2835
    sget v0, Lcom/android/email/activity/MessageListItem;->sViewHeightLargePreviewOne:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    .line 2837
    :cond_c
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-ne v0, v2, :cond_d

    .line 2839
    sget v0, Lcom/android/email/activity/MessageListItem;->sViewHeightLargePreviewTwo:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    .line 2841
    :cond_d
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-ne v0, v3, :cond_0

    .line 2843
    sget v0, Lcom/android/email/activity/MessageListItem;->sViewHeightLargePreviewThree:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    goto/16 :goto_0

    .line 2849
    :pswitch_4
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-nez v0, :cond_e

    .line 2851
    sget v0, Lcom/android/email/activity/MessageListItem;->sViewHeightHugePreviewZero:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    .line 2853
    :cond_e
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-ne v0, v1, :cond_f

    .line 2855
    sget v0, Lcom/android/email/activity/MessageListItem;->sViewHeightHugePreviewOne:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    .line 2857
    :cond_f
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-ne v0, v2, :cond_10

    .line 2859
    sget v0, Lcom/android/email/activity/MessageListItem;->sViewHeightHugePreviewTwo:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    .line 2861
    :cond_10
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-ne v0, v3, :cond_0

    .line 2863
    sget v0, Lcom/android/email/activity/MessageListItem;->sViewHeightHugePreviewThree:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    goto/16 :goto_0

    .line 2765
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 4674
    .line 4676
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v4, v0

    .line 4678
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v5, v0

    .line 4684
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSortType()I

    move-result v0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mParentIndex:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 4686
    sget v0, Lcom/android/email/activity/MessageListItem;->sCheckboxHitWidth:I

    sget v2, Lcom/android/email/activity/MessageListItem;->sThreadListPadding:I

    add-int/2addr v2, v0

    .line 4688
    sget v0, Lcom/android/email/activity/MessageListItem;->sThreadListPadding:I

    .line 4696
    :goto_0
    iget v6, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    sget v7, Lcom/android/email/activity/MessageListItem;->sFavoriteHitWidth:I

    sub-int/2addr v6, v7

    .line 4698
    iget v7, p0, Lcom/android/email/activity/MessageListItem;->mFavoritePaddingTop:I

    add-int/lit8 v7, v7, -0xa

    .line 4700
    iget v8, p0, Lcom/android/email/activity/MessageListItem;->mFavoritePaddingTop:I

    iget-object v9, p0, Lcom/android/email/activity/MessageListItem;->mFavoriteIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0xa

    .line 4702
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    :cond_0
    :pswitch_0
    move v0, v1

    .line 4793
    :goto_1
    if-eqz v0, :cond_7

    .line 4795
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->invalidate()V

    .line 4803
    :goto_2
    return v0

    .line 4692
    :cond_1
    sget v0, Lcom/android/email/activity/MessageListItem;->sCheckboxHitWidth:I

    move v2, v0

    move v0, v1

    goto :goto_0

    .line 4706
    :pswitch_1
    if-ge v4, v2, :cond_2

    if-gt v4, v0, :cond_3

    :cond_2
    if-le v4, v6, :cond_0

    if-ge v5, v8, :cond_0

    if-le v5, v7, :cond_0

    .line 4709
    :cond_3
    iput-boolean v3, p0, Lcom/android/email/activity/MessageListItem;->mDownEvent:Z

    .line 4713
    if-ge v4, v2, :cond_8

    if-le v4, v0, :cond_8

    .line 4715
    iput-boolean v3, p0, Lcom/android/email/activity/MessageListItem;->mCheckboxPressed:Z

    .line 4717
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    invoke-interface {v0, v3, p0}, Lcom/android/email/activity/MessagesAdapter$Callback;->setItemCheckboxPressed(ZLcom/android/email/activity/MessageListItem;)V

    move v0, v3

    goto :goto_1

    .line 4727
    :pswitch_2
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListItem;->mDownEvent:Z

    move v0, v1

    .line 4729
    goto :goto_1

    .line 4733
    :pswitch_3
    iget-boolean v9, p0, Lcom/android/email/activity/MessageListItem;->mDownEvent:Z

    if-eqz v9, :cond_0

    iget-boolean v9, p0, Lcom/android/email/activity/MessageListItem;->mCheckboxDisabled:Z

    if-nez v9, :cond_0

    .line 4735
    if-ge v4, v2, :cond_4

    if-le v4, v0, :cond_4

    .line 4737
    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageListItem;->playSoundEffect(I)V

    .line 4739
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mAdapter:Lcom/android/email/activity/MessagesAdapter;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mParentIndex:I

    invoke-virtual {v0, p0, v1}, Lcom/android/email/activity/MessagesAdapter;->toggleSelected(Lcom/android/email/activity/MessageListItem;I)V

    move v0, v3

    .line 4741
    goto :goto_1

    .line 4743
    :cond_4
    if-le v4, v6, :cond_0

    if-ge v5, v8, :cond_0

    if-le v5, v7, :cond_0

    .line 4745
    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageListItem;->playSoundEffect(I)V

    .line 4747
    const-string v0, "eas"

    iget-object v2, p0, Lcom/android/email/activity/MessageListItem;->mAccountSchema:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4749
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mFollowUpFlagStatus:I

    .line 4751
    iget v2, p0, Lcom/android/email/activity/MessageListItem;->mFollowUpFlagStatus:I

    packed-switch v2, :pswitch_data_1

    .line 4773
    :goto_3
    iget-object v2, p0, Lcom/android/email/activity/MessageListItem;->mAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v2, p0, v0}, Lcom/android/email/activity/MessagesAdapter;->updateFollowUpFlag(Lcom/android/email/activity/MessageListItem;I)V

    move v0, v1

    .line 4775
    goto :goto_1

    .line 4755
    :pswitch_4
    const/4 v0, 0x2

    .line 4757
    goto :goto_3

    :pswitch_5
    move v0, v1

    .line 4763
    goto :goto_3

    :pswitch_6
    move v0, v3

    .line 4767
    goto :goto_3

    .line 4777
    :cond_5
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mAdapter:Lcom/android/email/activity/MessagesAdapter;

    iget-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mIsFavorite:Z

    if-nez v2, :cond_6

    move v1, v3

    :cond_6
    invoke-virtual {v0, p0, v1}, Lcom/android/email/activity/MessagesAdapter;->updateFavorite(Lcom/android/email/activity/MessageListItem;Z)V

    move v0, v3

    .line 4781
    goto :goto_1

    .line 4799
    :cond_7
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_2

    :cond_8
    move v0, v3

    goto :goto_1

    .line 4702
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 4751
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method updateBackground()V
    .locals 7

    .prologue
    const v6, 0x7f020236

    const/4 v0, 0x7

    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x2

    .line 1742
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSortType()I

    move-result v3

    if-ne v3, v0, :cond_d

    iget v3, p0, Lcom/android/email/activity/MessageListItem;->mParentIndex:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_d

    .line 1744
    iget v3, p0, Lcom/android/email/activity/MessageListItem;->mChildCount:I

    if-ge v3, v2, :cond_4

    .line 1746
    iget-boolean v3, p0, Lcom/android/email/activity/MessageListItem;->mRead:Z

    if-eqz v3, :cond_0

    .line 1748
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->isMesssageListLeftside()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1750
    const/4 v0, 0x5

    .line 1860
    :cond_0
    :goto_0
    iget v3, p0, Lcom/android/email/activity/MessageListItem;->mCurrentSelectIdx:I

    if-ne v0, v3, :cond_1

    iget-boolean v3, p0, Lcom/android/email/activity/MessageListItem;->mIsBgColorChanged:Z

    if-eqz v3, :cond_2

    .line 1862
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 2246
    iput-boolean v5, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    .line 2248
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v1

    if-eqz v1, :cond_21

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    if-ne v1, v2, :cond_21

    .line 2250
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2266
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageListItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2268
    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mCurrentSelectIdx:I

    .line 2270
    iput-boolean v5, p0, Lcom/android/email/activity/MessageListItem;->mIsBgColorChanged:Z

    .line 2274
    :cond_2
    return-void

    .line 1754
    :cond_3
    const/4 v0, 0x6

    goto :goto_0

    .line 1766
    :cond_4
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mChildIndex:I

    if-nez v0, :cond_7

    .line 1768
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mRead:Z

    if-eqz v0, :cond_6

    .line 1770
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->isMesssageListLeftside()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1772
    const/16 v0, 0x8

    goto :goto_0

    .line 1776
    :cond_5
    const/16 v0, 0x9

    goto :goto_0

    .line 1782
    :cond_6
    const/16 v0, 0xa

    goto :goto_0

    .line 1786
    :cond_7
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mChildIndex:I

    iget v3, p0, Lcom/android/email/activity/MessageListItem;->mChildCount:I

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_a

    .line 1788
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mRead:Z

    if-eqz v0, :cond_9

    .line 1790
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->isMesssageListLeftside()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1792
    const/16 v0, 0xb

    goto :goto_0

    .line 1796
    :cond_8
    const/16 v0, 0xc

    goto :goto_0

    .line 1802
    :cond_9
    const/16 v0, 0xd

    goto :goto_0

    .line 1808
    :cond_a
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mRead:Z

    if-eqz v0, :cond_c

    .line 1810
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->isMesssageListLeftside()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1812
    const/16 v0, 0xe

    goto :goto_0

    .line 1816
    :cond_b
    const/16 v0, 0xf

    goto :goto_0

    .line 1822
    :cond_c
    const/16 v0, 0x10

    goto :goto_0

    .line 1832
    :cond_d
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->isMesssageListLeftside()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1834
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mRead:Z

    if-eqz v0, :cond_e

    move v0, v1

    .line 1836
    goto :goto_0

    :cond_e
    move v0, v2

    .line 1840
    goto :goto_0

    .line 1846
    :cond_f
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mRead:Z

    if-eqz v0, :cond_10

    .line 1848
    const/4 v0, 0x3

    goto/16 :goto_0

    .line 1852
    :cond_10
    const/4 v0, 0x4

    goto/16 :goto_0

    .line 1866
    :pswitch_0
    iput-boolean v5, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    .line 1868
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v1

    if-eqz v1, :cond_11

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    if-ne v1, v2, :cond_11

    .line 1870
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02023b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    .line 1876
    :cond_11
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02023c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    .line 1886
    :pswitch_1
    iput-boolean v5, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    .line 1888
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v1

    if-eqz v1, :cond_12

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    if-ne v1, v2, :cond_12

    .line 1890
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02023a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    .line 1896
    :cond_12
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02023d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    .line 1906
    :pswitch_2
    iput-boolean v5, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    .line 1908
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v1

    if-eqz v1, :cond_13

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    if-ne v1, v2, :cond_13

    .line 1910
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02023e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    .line 1916
    :cond_13
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02023f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    .line 1926
    :pswitch_3
    iput-boolean v5, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    .line 1928
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v1

    if-eqz v1, :cond_14

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    if-ne v1, v2, :cond_14

    .line 1930
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    .line 1936
    :cond_14
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020258

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    .line 1946
    :pswitch_4
    iput-boolean v5, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    .line 1948
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v1

    if-eqz v1, :cond_15

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    if-ne v1, v2, :cond_15

    .line 1950
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02024c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    .line 1956
    :cond_15
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02024d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    .line 1966
    :pswitch_5
    iput-boolean v5, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    .line 1968
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v1

    if-eqz v1, :cond_16

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    if-ne v1, v2, :cond_16

    .line 1970
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020254

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    .line 1976
    :cond_16
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020255

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    .line 1986
    :pswitch_6
    iput-boolean v5, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    .line 1988
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v1

    if-eqz v1, :cond_17

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    if-ne v1, v2, :cond_17

    .line 1990
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020242

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    .line 1996
    :cond_17
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020247

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    .line 2006
    :pswitch_7
    iput-boolean v5, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    .line 2008
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v1

    if-eqz v1, :cond_18

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    if-ne v1, v2, :cond_18

    .line 2010
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02024e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    .line 2016
    :cond_18
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02024f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    .line 2026
    :pswitch_8
    iput-boolean v5, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    .line 2028
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v1

    if-eqz v1, :cond_19

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    if-ne v1, v2, :cond_19

    .line 2030
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020256

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    .line 2036
    :cond_19
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020257

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    .line 2046
    :pswitch_9
    iput-boolean v5, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    .line 2048
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v1

    if-eqz v1, :cond_1a

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    if-ne v1, v2, :cond_1a

    .line 2050
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020245

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    .line 2056
    :cond_1a
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020246

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    .line 2072
    :pswitch_a
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    .line 2074
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v1

    if-eqz v1, :cond_1b

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    if-ne v1, v2, :cond_1b

    .line 2076
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020248

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    .line 2086
    :cond_1b
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020249

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    .line 2100
    :pswitch_b
    iput-boolean v5, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    .line 2102
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v1

    if-eqz v1, :cond_1c

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    if-ne v1, v2, :cond_1c

    .line 2104
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020250

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    .line 2114
    :cond_1c
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020251

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    .line 2130
    :pswitch_c
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    .line 2132
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v1

    if-eqz v1, :cond_1d

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    if-ne v1, v2, :cond_1d

    .line 2134
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020240

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    .line 2144
    :cond_1d
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020241

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    .line 2160
    :pswitch_d
    iput-boolean v5, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    .line 2162
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v1

    if-eqz v1, :cond_1e

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    if-ne v1, v2, :cond_1e

    .line 2164
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02024a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    .line 2174
    :cond_1e
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02024b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    .line 2188
    :pswitch_e
    iput-boolean v5, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    .line 2190
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v1

    if-eqz v1, :cond_1f

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    if-ne v1, v2, :cond_1f

    .line 2192
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020252

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    .line 2202
    :cond_1f
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020253

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    .line 2218
    :pswitch_f
    iput-boolean v5, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    .line 2220
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v1

    if-eqz v1, :cond_20

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    if-ne v1, v2, :cond_20

    .line 2222
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020243

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    .line 2232
    :cond_20
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020244

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    .line 2256
    :cond_21
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020258

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_1

    .line 1862
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
