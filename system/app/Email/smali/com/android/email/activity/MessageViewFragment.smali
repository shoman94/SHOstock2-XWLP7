.class public Lcom/android/email/activity/MessageViewFragment;
.super Lcom/android/email/activity/MessageViewFragmentBase;
.source "MessageViewFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;,
        Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;,
        Lcom/android/email/activity/MessageViewFragment$EmptyCallback;,
        Lcom/android/email/activity/MessageViewFragment$Callback;
    }
.end annotation


# static fields
.field static final mDateFormat:Ljava/text/SimpleDateFormat;

.field private static menu:Landroid/view/Menu;

.field public static sRemoveIrmProtectionFlag:I


# instance fields
.field private enableMoveToNewerForViewer:Z

.field private enableMoveToOlderForViewer:Z

.field private hasMailboxToMove:Z

.field private irmInfo:Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;

.field private mActionBar:Landroid/app/ActionBar;

.field private mActionBarMessageViewCustomView:Landroid/view/View;

.field private mActivity:Landroid/app/Activity;

.field private mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

.field private mCurrentMessageId:J

.field private mFavoriteIconOff:Landroid/graphics/drawable/Drawable;

.field private mFavoriteIconOn:Landroid/graphics/drawable/Drawable;

.field private mFollowUpFlagClear:Landroid/graphics/drawable/Drawable;

.field private mFollowUpFlagComplete:Landroid/graphics/drawable/Drawable;

.field private mFollowUpFlagSet:Landroid/graphics/drawable/Drawable;

.field private mFromSocialHub:Z

.field private mHandler:Landroid/os/Handler;

.field private mHeaderIconDown:Landroid/widget/ImageView;

.field private mHeaderIconUp:Landroid/widget/ImageView;

.field private mInviteSection:Landroid/view/View;

.field private mIsSending:Z

.field private mLayout:Landroid/view/View;

.field private final mLock:Ljava/lang/Object;

.field private mMailboxId:J

.field private mMailboxType:I

.field public mMessageIdToOpen:J

.field private mPreviousMeetingResponse:I

.field private mPreviousMeetingResponseMsgId:J

.field private mReplyAllAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/email/activity/setup/SpinnerOption;",
            ">;"
        }
    .end annotation
.end field

.field private mReplyAllViewSpinner:Lcom/android/email/activity/CustomSpinner;

.field private mResultCallback:Lcom/android/email/Controller$Result;

.field private mSaveEmailTask:Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 112
    const/4 v0, -0x1

    sput v0, Lcom/android/email/activity/MessageViewFragment;->sRemoveIrmProtectionFlag:I

    .line 187
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH-mm-ss Z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/email/activity/MessageViewFragment;->mDateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    const-wide/16 v1, -0x1

    .line 98
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;-><init>()V

    .line 125
    iput v4, p0, Lcom/android/email/activity/MessageViewFragment;->mPreviousMeetingResponse:I

    .line 128
    iput-object v5, p0, Lcom/android/email/activity/MessageViewFragment;->mResultCallback:Lcom/android/email/Controller$Result;

    .line 130
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mHandler:Landroid/os/Handler;

    .line 134
    iput-wide v1, p0, Lcom/android/email/activity/MessageViewFragment;->mPreviousMeetingResponseMsgId:J

    .line 149
    iput v4, p0, Lcom/android/email/activity/MessageViewFragment;->mMailboxType:I

    .line 151
    iput-wide v1, p0, Lcom/android/email/activity/MessageViewFragment;->mMailboxId:J

    .line 165
    iput-wide v1, p0, Lcom/android/email/activity/MessageViewFragment;->mMessageIdToOpen:J

    .line 168
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mLock:Ljava/lang/Object;

    .line 171
    iput-wide v1, p0, Lcom/android/email/activity/MessageViewFragment;->mCurrentMessageId:J

    .line 173
    iput-boolean v3, p0, Lcom/android/email/activity/MessageViewFragment;->mIsSending:Z

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragment;->hasMailboxToMove:Z

    .line 177
    iput-boolean v3, p0, Lcom/android/email/activity/MessageViewFragment;->enableMoveToNewerForViewer:Z

    .line 179
    iput-boolean v3, p0, Lcom/android/email/activity/MessageViewFragment;->enableMoveToOlderForViewer:Z

    .line 183
    iput-object v5, p0, Lcom/android/email/activity/MessageViewFragment;->irmInfo:Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;

    .line 303
    sget-object v0, Lcom/android/email/activity/MessageViewFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MessageViewFragment$Callback;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    .line 1614
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/MessageViewFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/android/email/activity/MessageViewFragment;->mPreviousMeetingResponseMsgId:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/android/email/activity/MessageViewFragment;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-wide p1, p0, Lcom/android/email/activity/MessageViewFragment;->mPreviousMeetingResponseMsgId:J

    return-wide p1
.end method

.method static synthetic access$102(Lcom/android/email/activity/MessageViewFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput p1, p0, Lcom/android/email/activity/MessageViewFragment;->mPreviousMeetingResponse:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/email/activity/MessageViewFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/MessageViewFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragment;->onForward()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/email/activity/MessageViewFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragment;->onDeleteSmsPopup()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/email/activity/MessageViewFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragment;->onDelete()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/email/activity/MessageViewFragment;)Lcom/android/email/activity/MessageViewFragment$Callback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/email/activity/MessageViewFragment;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/email/activity/MessageViewFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/android/email/activity/MessageViewFragment;->mCurrentMessageId:J

    return-wide v0
.end method

.method private enableReplyForwardButtons(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 830
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 834
    .local v0, visibility:I
    :goto_0
    return-void

    .line 830
    .end local v0           #visibility:I
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private onClickFavorite()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1026
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 1029
    .local v0, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    const-string v6, "eas"

    iget-object v7, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountSchema:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1030
    iget v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagStatus:I

    .line 1031
    .local v2, nFollowUpFlag:I
    packed-switch v2, :pswitch_data_0

    .line 1043
    :goto_0
    packed-switch v2, :pswitch_data_1

    .line 1056
    :goto_1
    iput v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagStatus:I

    .line 1057
    new-array v1, v4, [J

    .line 1058
    .local v1, messageIds:[J
    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    aput-wide v6, v1, v5

    .line 1059
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getController()Lcom/android/email/Controller;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getAccountId()J

    move-result-wide v5

    invoke-virtual {v4, v1, v2, v5, v6}, Lcom/android/email/Controller;->setMessageFollowUpFlag([JIJ)Landroid/os/AsyncTask;

    .line 1070
    .end local v2           #nFollowUpFlag:I
    :goto_2
    return-void

    .line 1033
    .end local v1           #messageIds:[J
    .restart local v2       #nFollowUpFlag:I
    :pswitch_0
    const/4 v2, 0x2

    .line 1034
    goto :goto_0

    .line 1036
    :pswitch_1
    const/4 v2, 0x0

    .line 1037
    goto :goto_0

    .line 1039
    :pswitch_2
    const/4 v2, 0x1

    goto :goto_0

    .line 1045
    :pswitch_3
    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragment;->mFollowUpFlagClear:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1048
    :pswitch_4
    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragment;->mFollowUpFlagComplete:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1051
    :pswitch_5
    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragment;->mFollowUpFlagSet:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1061
    .end local v2           #nFollowUpFlag:I
    :cond_0
    iget-boolean v6, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    if-nez v6, :cond_1

    move v3, v4

    .line 1062
    .local v3, newFavorite:Z
    :goto_3
    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragment;->mFavoriteIconOn:Landroid/graphics/drawable/Drawable;

    :goto_4
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1065
    iput-boolean v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    .line 1066
    new-array v1, v4, [J

    .line 1067
    .restart local v1       #messageIds:[J
    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    aput-wide v6, v1, v5

    .line 1068
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getController()Lcom/android/email/Controller;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getAccountId()J

    move-result-wide v5

    invoke-virtual {v4, v1, v3, v5, v6}, Lcom/android/email/Controller;->setMessageFavorite([JZJ)Landroid/os/AsyncTask;

    goto :goto_2

    .end local v1           #messageIds:[J
    .end local v3           #newFavorite:Z
    :cond_1
    move v3, v5

    .line 1061
    goto :goto_3

    .line 1062
    .restart local v3       #newFavorite:Z
    :cond_2
    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragment;->mFavoriteIconOff:Landroid/graphics/drawable/Drawable;

    goto :goto_4

    .line 1031
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1043
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private onCompose()V
    .locals 1

    .prologue
    .line 1551
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageViewFragment$Callback;->onCompose()V

    .line 1552
    return-void
.end method

.method private onDelete()V
    .locals 3

    .prologue
    .line 1542
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageViewFragment$Callback;->onBeforeMessageDelete()V

    .line 1543
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/activity/MessageViewFragment;->mCurrentMessageId:J

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/ActivityHelper;->deleteMessage(Landroid/app/Activity;J)V

    .line 1544
    return-void
.end method

.method private onDeleteCalEventClicked()V
    .locals 3

    .prologue
    .line 1200
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 1202
    .local v0, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    new-instance v1, Lcom/android/email/activity/MessageViewFragment$10;

    invoke-direct {v1, p0, v0}, Lcom/android/email/activity/MessageViewFragment$10;-><init>(Lcom/android/email/activity/MessageViewFragment;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageViewFragment$10;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1223
    return-void
.end method

.method private onDeleteSmsPopup()V
    .locals 4

    .prologue
    .line 949
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 950
    .local v0, backWarning:Landroid/app/AlertDialog$Builder;
    const v2, 0x1010355

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 951
    const v2, 0x7f080058

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 952
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080535

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 953
    .local v1, reportString:Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 954
    const v2, 0x7f080042

    new-instance v3, Lcom/android/email/activity/MessageViewFragment$6;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageViewFragment$6;-><init>(Lcom/android/email/activity/MessageViewFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 961
    const v2, 0x7f080043

    new-instance v3, Lcom/android/email/activity/MessageViewFragment$7;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageViewFragment$7;-><init>(Lcom/android/email/activity/MessageViewFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 967
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 968
    return-void
.end method

.method private onForward()V
    .locals 1

    .prologue
    .line 1538
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageViewFragment$Callback;->onForward()V

    .line 1539
    return-void
.end method

.method private onInviteLinkClicked()V
    .locals 3

    .prologue
    .line 1188
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 1189
    new-instance v1, Lcom/android/emailcommon/mail/PackedString;

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/PackedString;-><init>(Ljava/lang/String;)V

    const-string v2, "DTSTART"

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1190
    if-eqz v1, :cond_0

    .line 1191
    invoke-static {v1}, Lcom/android/emailcommon/utility/Utility;->parseEmailDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v0

    .line 1192
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-interface {v2, v0, v1}, Lcom/android/email/activity/MessageViewFragment$Callback;->onCalendarLinkClicked(J)V

    .line 1196
    :goto_0
    return-void

    .line 1194
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "meetingInfo without DTSTART "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Email;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onMarkAsUnread()V
    .locals 1

    .prologue
    .line 1547
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragment;->onMarkMessageAsRead(Z)V

    .line 1548
    return-void
.end method

.method private onMove()V
    .locals 1

    .prologue
    .line 1439
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageViewFragment$Callback;->onMoveMessage()V

    .line 1440
    return-void
.end method

.method private onRespondToInvite(II)V
    .locals 7
    .parameter "response"
    .parameter "toastResId"

    .prologue
    .line 1096
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    .line 1099
    .local v1, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    iget v3, p0, Lcom/android/email/activity/MessageViewFragment;->mPreviousMeetingResponse:I

    if-ne v3, p1, :cond_0

    iget-wide v3, p0, Lcom/android/email/activity/MessageViewFragment;->mPreviousMeetingResponseMsgId:J

    iget-wide v5, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 1104
    :cond_0
    const/4 v2, 0x0

    .line 1105
    .local v2, title:Ljava/lang/String;
    and-int/lit8 v3, p1, 0x3

    packed-switch v3, :pswitch_data_0

    .line 1117
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0a0060

    const v5, 0x7f040060

    invoke-static {v3, v4, v5}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 1120
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/email/activity/MessageViewFragment$9;

    invoke-direct {v4, p0, p1, p2, v1}, Lcom/android/email/activity/MessageViewFragment$9;-><init>(Lcom/android/email/activity/MessageViewFragment;IILcom/android/emailcommon/provider/EmailContent$Message;)V

    invoke-virtual {v3, v0, v4}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/email/activity/MessageViewFragment$8;

    invoke-direct {v4, p0}, Lcom/android/email/activity/MessageViewFragment$8;-><init>(Lcom/android/email/activity/MessageViewFragment;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 1185
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v2           #title:Ljava/lang/String;
    :cond_1
    return-void

    .line 1107
    .restart local v2       #title:Ljava/lang/String;
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08054c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1108
    goto :goto_0

    .line 1110
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08054d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1111
    goto :goto_0

    .line 1113
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08054e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1105
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public clearContent()V
    .locals 4

    .prologue
    .line 898
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 899
    :try_start_0
    invoke-super {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->clearContent()V

    .line 900
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/email/activity/MessageViewFragment;->mMessageIdToOpen:J

    .line 908
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragment;->setHasOptionsMenu(Z)V

    .line 909
    monitor-exit v1

    .line 910
    return-void

    .line 909
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public controlViewCustomView(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 802
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mActionBarMessageViewCustomView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 810
    :cond_0
    :goto_0
    return-void

    .line 805
    :cond_1
    if-eqz p1, :cond_2

    .line 806
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mActionBarMessageViewCustomView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 808
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mActionBarMessageViewCustomView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public enableNavigationButtonsOnView(ZZII)V
    .locals 1
    .parameter "enableMoveToNewer"
    .parameter "enableMoveToOlder"
    .parameter "currentPosition"
    .parameter "countMessages"

    .prologue
    .line 1631
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    if-nez p3, :cond_0

    const/4 v0, 0x1

    if-eq p4, v0, :cond_1

    .line 1640
    :cond_0
    :goto_0
    return-void

    .line 1635
    :cond_1
    iput-boolean p1, p0, Lcom/android/email/activity/MessageViewFragment;->enableMoveToNewerForViewer:Z

    .line 1636
    iput-boolean p2, p0, Lcom/android/email/activity/MessageViewFragment;->enableMoveToOlderForViewer:Z

    .line 1638
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mHeaderIconUp:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1639
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mHeaderIconDown:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0
.end method

.method public getFromSocialHubState()Z
    .locals 1

    .prologue
    .line 663
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragment;->mFromSocialHub:Z

    return v0
.end method

.method protected isMessageSpecified()Z
    .locals 6

    .prologue
    .line 928
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 929
    :try_start_0
    iget-wide v2, p0, Lcom/android/email/activity/MessageViewFragment;->mMessageIdToOpen:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 930
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public loadViewCustomView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 813
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mActionBarMessageViewCustomView:Landroid/view/View;

    .line 814
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04003e

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mActionBarMessageViewCustomView:Landroid/view/View;

    .line 817
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mHeaderIconUp:Landroid/widget/ImageView;

    .line 818
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mActionBarMessageViewCustomView:Landroid/view/View;

    const v1, 0x7f1000d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mHeaderIconUp:Landroid/widget/ImageView;

    .line 820
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mHeaderIconDown:Landroid/widget/ImageView;

    .line 821
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mActionBarMessageViewCustomView:Landroid/view/View;

    const v1, 0x7f1000d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mHeaderIconDown:Landroid/widget/ImageView;

    .line 824
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mHeaderIconUp:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 825
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mHeaderIconDown:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 826
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1281
    if-nez p2, :cond_0

    .line 1303
    :goto_0
    return-void

    .line 1283
    :cond_0
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1285
    :pswitch_1
    const/4 v0, 0x1

    const v1, 0x7f08015c

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageViewFragment;->onRespondToInvite(II)V

    goto :goto_0

    .line 1289
    :pswitch_2
    const/4 v0, 0x2

    const v1, 0x7f08015d

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageViewFragment;->onRespondToInvite(II)V

    goto :goto_0

    .line 1293
    :pswitch_3
    const/4 v0, 0x3

    const v1, 0x7f08015e

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageViewFragment;->onRespondToInvite(II)V

    goto :goto_0

    .line 1298
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/activity/MessageViewFragment;->mMessageIdToOpen:J

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/MessageCompose;->actionProposeNewTime(Landroid/content/Context;J)V

    .line 1299
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/android/email/activity/MessageViewFragment$Callback;->onRespondedToInvite(I)V

    goto :goto_0

    .line 1283
    nop

    :pswitch_data_0
    .packed-switch 0x7f1001d6
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1229
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->isMessageOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1277
    :goto_0
    return-void

    .line 1234
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1249
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1276
    invoke-super {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 1242
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1243
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->showPop3ImapITPolicyToast()V

    goto :goto_0

    .line 1251
    :sswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragment;->onClickFavorite()V

    goto :goto_0

    .line 1255
    :sswitch_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragment;->onInviteLinkClicked()V

    goto :goto_0

    .line 1259
    :sswitch_2
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageViewFragment$Callback;->moveToOlderView()V

    goto :goto_0

    .line 1263
    :sswitch_3
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageViewFragment$Callback;->moveToNewerView()V

    goto :goto_0

    .line 1271
    :sswitch_4
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragment;->onDeleteCalEventClicked()V

    goto :goto_0

    .line 1234
    nop

    :pswitch_data_0
    .packed-switch 0x7f1001f9
        :pswitch_0
    .end packed-switch

    .line 1249
    :sswitch_data_0
    .sparse-switch
        0x7f1000d7 -> :sswitch_3
        0x7f1000d8 -> :sswitch_2
        0x7f1001d7 -> :sswitch_4
        0x7f1001dc -> :sswitch_1
        0x7f1001f9 -> :sswitch_0
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    const/4 v3, 0x1

    .line 766
    invoke-super {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 768
    const-string v0, "MessageViewFragment >>"

    const-string v1, "[HJP] onConfigurationChanged() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    const-string v0, "MessageViewFragment >>"

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

    .line 770
    const-string v0, "MessageViewFragment >>"

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

    .line 774
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSplitMode()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/email/activity/Welcome;->needFull:Z

    if-nez v0, :cond_1

    .line 776
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 777
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 793
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 794
    return-void

    .line 779
    :cond_1
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_0

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 782
    :cond_2
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->loadViewCustomView()V

    .line 783
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->setActionBarCustomForMessageView()V

    .line 784
    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageViewFragment;->controlViewCustomView(Z)V

    .line 786
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragment;->enableMoveToNewerForViewer:Z

    iget-boolean v1, p0, Lcom/android/email/activity/MessageViewFragment;->enableMoveToOlderForViewer:Z

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageViewFragment;->updateNavigationButtonsOnView(ZZ)V

    .line 787
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 788
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 790
    :cond_3
    const-string v0, "MessageViewFragment >>"

    const-string v1, "[HJP] onConfigurationChanged setActionBarCustomForMessageView() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 307
    invoke-super {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->onCreate(Landroid/os/Bundle;)V

    .line 309
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mActivity:Landroid/app/Activity;

    .line 310
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 311
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f020206

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mFavoriteIconOn:Landroid/graphics/drawable/Drawable;

    .line 312
    const v1, 0x7f020207

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mFavoriteIconOff:Landroid/graphics/drawable/Drawable;

    .line 313
    const v1, 0x7f0200af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mFollowUpFlagSet:Landroid/graphics/drawable/Drawable;

    .line 314
    const v1, 0x7f0200b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mFollowUpFlagComplete:Landroid/graphics/drawable/Drawable;

    .line 315
    const v1, 0x7f0200b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mFollowUpFlagClear:Landroid/graphics/drawable/Drawable;

    .line 318
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mActionBar:Landroid/app/ActionBar;

    .line 319
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04003e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mActionBarMessageViewCustomView:Landroid/view/View;

    .line 322
    new-instance v1, Lcom/android/email/activity/MessageViewFragment$1;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageViewFragment$1;-><init>(Lcom/android/email/activity/MessageViewFragment;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mResultCallback:Lcom/android/email/Controller$Result;

    .line 373
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getController()Lcom/android/email/Controller;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mResultCallback:Lcom/android/email/Controller$Result;

    invoke-virtual {v1, v2}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    .line 374
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 11
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const v10, 0x7f1002f6

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 668
    const v4, 0x7f0f0024

    invoke-virtual {p2, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 669
    sput-object p1, Lcom/android/email/activity/MessageViewFragment;->menu:Landroid/view/Menu;

    .line 671
    const-string v4, "MessageViewFragment >>"

    const-string v5, "[HJP] onCreateOptionsMenu() "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const v4, 0x7f1002e0

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 674
    .local v2, replyMenu_splitview:Landroid/view/MenuItem;
    const v4, 0x7f100301

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 675
    .local v3, replyallMenu_splitview:Landroid/view/MenuItem;
    const v4, 0x7f1002c3

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 676
    .local v1, forwardMenu_splitview:Landroid/view/MenuItem;
    const v4, 0x7f1002de

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 678
    .local v0, deleteMenu_splitview:Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSplitMode()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-wide v4, p0, Lcom/android/email/activity/MessageViewFragment;->mMessageIdToOpen:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 722
    :cond_0
    :goto_0
    sget-boolean v4, Lcom/android/email/activity/MessageView;->isSms:Z

    if-eqz v4, :cond_6

    .line 723
    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 724
    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 725
    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 726
    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 741
    :goto_1
    iget-boolean v4, p0, Lcom/android/email/activity/MessageViewFragment;->mFromSocialHub:Z

    if-eqz v4, :cond_1

    .line 742
    const v4, 0x7f100302

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 743
    const v4, 0x7f100304

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 761
    :cond_1
    return-void

    .line 681
    :cond_2
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 682
    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/android/email/activity/MessageViewFragment$2;

    invoke-direct {v5, p0}, Lcom/android/email/activity/MessageViewFragment$2;-><init>(Lcom/android/email/activity/MessageViewFragment;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 689
    :cond_3
    if-eqz v3, :cond_4

    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 690
    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/android/email/activity/MessageViewFragment$3;

    invoke-direct {v5, p0}, Lcom/android/email/activity/MessageViewFragment$3;-><init>(Lcom/android/email/activity/MessageViewFragment;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 701
    :cond_4
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 702
    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/android/email/activity/MessageViewFragment$4;

    invoke-direct {v5, p0}, Lcom/android/email/activity/MessageViewFragment$4;-><init>(Lcom/android/email/activity/MessageViewFragment;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 709
    :cond_5
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 711
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/android/email/activity/MessageViewFragment$5;

    invoke-direct {v5, p0}, Lcom/android/email/activity/MessageViewFragment$5;-><init>(Lcom/android/email/activity/MessageViewFragment;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 728
    :cond_6
    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 729
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getRecipientlength()I

    move-result v4

    if-le v4, v9, :cond_7

    .line 730
    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 731
    invoke-interface {v3, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 736
    :goto_2
    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 733
    :cond_7
    invoke-interface {v2, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 734
    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 395
    invoke-super {p0, p1, p2, p3}, Lcom/android/email/activity/MessageViewFragmentBase;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 396
    .local v0, view:Landroid/view/View;
    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mLayout:Landroid/view/View;

    .line 397
    const v1, 0x7f1001d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mInviteSection:Landroid/view/View;

    .line 399
    const-string v1, "MessageViewFragment >>"

    const-string v2, "[HJP] onCreateView() "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const-string v1, "MessageViewFragment >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HJP] newConfig.orientation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const-string v1, "MessageViewFragment >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HJP] ThreePaneLayout.getCurrentPaneState() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const v1, 0x7f1001d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingDeleteEvent:Landroid/widget/Button;

    .line 419
    const v1, 0x7f1001d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingYes:Landroid/widget/CheckBox;

    .line 420
    const v1, 0x7f1001d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingMaybe:Landroid/widget/CheckBox;

    .line 421
    const v1, 0x7f1001da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingNo:Landroid/widget/CheckBox;

    .line 423
    const v1, 0x7f1001db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProposeNewTime:Landroid/widget/CheckBox;

    .line 424
    const v1, 0x7f1001d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mResponseOptionsLayout:Landroid/widget/LinearLayout;

    .line 429
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 430
    const v1, 0x7f1001f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    .line 433
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingDeleteEvent:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 440
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingYes:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 441
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingMaybe:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 442
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingNo:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 444
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProposeNewTime:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 446
    const v1, 0x7f1001dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteLink:Landroid/widget/Button;

    .line 447
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteLink:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 449
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mActionBarMessageViewCustomView:Landroid/view/View;

    const v2, 0x7f1000d7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mHeaderIconUp:Landroid/widget/ImageView;

    .line 451
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mActionBarMessageViewCustomView:Landroid/view/View;

    const v2, 0x7f1000d8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mHeaderIconDown:Landroid/widget/ImageView;

    .line 454
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mHeaderIconUp:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 455
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mHeaderIconDown:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageViewFragment;->enableReplyForwardButtons(Z)V

    .line 458
    const v1, 0x7f100212

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/CustomSpinner;

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mReplyAllViewSpinner:Lcom/android/email/activity/CustomSpinner;

    .line 459
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->setupReplyAllView()V

    .line 461
    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 471
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mSaveEmailTask:Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 472
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mSaveEmailTask:Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;

    .line 473
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mActionBarMessageViewCustomView:Landroid/view/View;

    .line 474
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mHeaderIconUp:Landroid/widget/ImageView;

    .line 475
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mHeaderIconDown:Landroid/widget/ImageView;

    .line 477
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getController()Lcom/android/email/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mResultCallback:Lcom/android/email/Controller$Result;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 479
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    .line 481
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingDeleteEvent:Landroid/widget/Button;

    .line 482
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProposeNewTime:Landroid/widget/CheckBox;

    .line 483
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mResponseOptionsLayout:Landroid/widget/LinearLayout;

    .line 485
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingYes:Landroid/widget/CheckBox;

    .line 486
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingMaybe:Landroid/widget/CheckBox;

    .line 487
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingNo:Landroid/widget/CheckBox;

    .line 488
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteLink:Landroid/widget/Button;

    .line 489
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mFavoriteIconOn:Landroid/graphics/drawable/Drawable;

    .line 490
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mFavoriteIconOff:Landroid/graphics/drawable/Drawable;

    .line 491
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mFollowUpFlagSet:Landroid/graphics/drawable/Drawable;

    .line 492
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mFollowUpFlagComplete:Landroid/graphics/drawable/Drawable;

    .line 493
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mFollowUpFlagClear:Landroid/graphics/drawable/Drawable;

    .line 494
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mReplyAllAdapter:Landroid/widget/ArrayAdapter;

    .line 495
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mReplyAllViewSpinner:Lcom/android/email/activity/CustomSpinner;

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mReplyAllViewSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/CustomSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 497
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mReplyAllViewSpinner:Lcom/android/email/activity/CustomSpinner;

    .line 499
    :cond_0
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mInviteSection:Landroid/view/View;

    .line 500
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mLayout:Landroid/view/View;

    .line 501
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mActivity:Landroid/app/Activity;

    .line 502
    invoke-super {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->onDestroy()V

    .line 503
    return-void
.end method

.method public onMarkMessageAsRead(Z)V
    .locals 5
    .parameter "isRead"

    .prologue
    .line 1076
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 1077
    .local v0, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    iget-boolean v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    if-eq v2, p1, :cond_0

    .line 1078
    iput-boolean p1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    .line 1079
    const/4 v2, 0x1

    new-array v1, v2, [J

    .line 1080
    .local v1, messageIds:[J
    const/4 v2, 0x0

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    aput-wide v3, v1, v2

    .line 1081
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getController()Lcom/android/email/Controller;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getAccountId()J

    move-result-wide v3

    invoke-virtual {v2, v1, p1, v3, v4}, Lcom/android/email/Controller;->setMessageRead([JZJ)Landroid/os/AsyncTask;

    .line 1082
    if-nez p1, :cond_0

    .line 1083
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-interface {v2}, Lcom/android/email/activity/MessageViewFragment$Callback;->onMessageSetUnread()V

    .line 1088
    .end local v1           #messageIds:[J
    :cond_0
    return-void
.end method

.method protected onMessageShown(JI)V
    .locals 7
    .parameter "messageId"
    .parameter "mailboxType"

    .prologue
    const/4 v6, 0x1

    .line 973
    invoke-super {p0, p1, p2, p3}, Lcom/android/email/activity/MessageViewFragmentBase;->onMessageShown(JI)V

    .line 976
    iput-wide p1, p0, Lcom/android/email/activity/MessageViewFragment;->mCurrentMessageId:J

    .line 979
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->IsEAS()Z

    move-result v2

    if-ne v2, v6, :cond_2

    .line 980
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->versionDouble:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide v4, 0x402c333333333333L

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_2

    .line 982
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/email/irm/IRMEnforcer;->getInstance(Landroid/content/Context;)Lcom/android/email/irm/IRMEnforcer;

    move-result-object v1

    .line 983
    .local v1, enf:Lcom/android/email/irm/IRMEnforcer;
    new-instance v2, Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;-><init>(Lcom/android/email/activity/MessageViewFragment;)V

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->irmInfo:Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;

    .line 984
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->irmInfo:Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;

    iget-wide v3, p0, Lcom/android/email/activity/MessageViewFragment;->mCurrentMessageId:J

    iput-wide v3, v2, Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;->messageId:J

    .line 985
    invoke-virtual {v1, p1, p2}, Lcom/android/email/irm/IRMEnforcer;->isReplyAllAllowed(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 986
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->irmInfo:Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;->isReplyAllRestrict:Z

    .line 988
    :cond_0
    invoke-virtual {v1, p1, p2}, Lcom/android/email/irm/IRMEnforcer;->isReplyAllowed(J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 989
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->irmInfo:Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;->isReplyRestrict:Z

    .line 991
    :cond_1
    invoke-virtual {v1, p1, p2}, Lcom/android/email/irm/IRMEnforcer;->isForwardAllowed(J)Z

    move-result v2

    if-nez v2, :cond_2

    .line 992
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->irmInfo:Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;->isForwardRestrict:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1004
    .end local v1           #enf:Lcom/android/email/irm/IRMEnforcer;
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1007
    invoke-static {p3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->isMailboxTypeReplyAndForwardable(I)Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageViewFragment;->enableReplyForwardButtons(Z)V

    .line 1010
    invoke-virtual {p0, v6}, Lcom/android/email/activity/MessageViewFragment;->setHasOptionsMenu(Z)V

    .line 1011
    return-void

    .line 994
    :catch_0
    move-exception v0

    .line 995
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "Email"

    const-string v3, "may be menuitem is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x1

    .line 1338
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1355
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1435
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_1
    return v0

    .line 1348
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1349
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->showPop3ImapITPolicyToast()V

    move v0, v1

    .line 1350
    goto :goto_1

    .line 1363
    :pswitch_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragment;->onMove()V

    move v0, v1

    .line 1364
    goto :goto_1

    .line 1366
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/email/activity/MessageViewFragment;->mCurrentMessageId:J

    invoke-static {v0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 1367
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->IsEAS()Z

    move-result v2

    if-ne v2, v1, :cond_1

    .line 1368
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f080090

    invoke-static {v0, v2, v1}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    goto :goto_0

    .line 1371
    :cond_1
    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    if-eq v0, v1, :cond_2

    .line 1372
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f080091

    invoke-static {v0, v2, v1}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    goto :goto_0

    .line 1375
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mSaveEmailTask:Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 1376
    iput-object v7, p0, Lcom/android/email/activity/MessageViewFragment;->mSaveEmailTask:Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;

    .line 1377
    new-instance v0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;

    invoke-direct {v0, p0, v7}, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;-><init>(Lcom/android/email/activity/MessageViewFragment;Lcom/android/email/activity/MessageViewFragment$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mSaveEmailTask:Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;

    .line 1379
    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mSaveEmailTask:Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1380
    :catch_0
    move-exception v0

    .line 1381
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSaveEmailTask.execute(); failed once : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f0801f3

    invoke-static {v0, v2, v1}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    goto :goto_0

    .line 1395
    :pswitch_3
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragment;->onMarkAsUnread()V

    move v0, v1

    .line 1396
    goto :goto_1

    .line 1399
    :pswitch_4
    const-string v0, "MessageViewFragment >>"

    const-string v2, "[handleMenuItem] ControlPrint Call!!"

    invoke-static {v0, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->ControlPrint()V

    move v0, v1

    .line 1401
    goto/16 :goto_1

    .line 1404
    :pswitch_5
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragment;->onCompose()V

    move v0, v1

    .line 1405
    goto/16 :goto_1

    .line 1408
    :pswitch_6
    const-string v0, "MessageViewFragment >>"

    const-string v2, "[handleMenuItem] change_bg_color Call!!"

    invoke-static {v0, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListXL;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageListXL;->showDialog2(I)V

    move v0, v1

    .line 1410
    goto/16 :goto_1

    .line 1413
    :pswitch_7
    const-string v0, "MessageViewFragment >>"

    const-string v2, "[handleMenuItem] change font size onview Call!!"

    invoke-static {v0, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListXL;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageListXL;->showDialog2(I)V

    move v0, v1

    .line 1415
    goto/16 :goto_1

    .line 1419
    :pswitch_8
    sput v1, Lcom/android/email/activity/MessageViewFragment;->sRemoveIrmProtectionFlag:I

    .line 1420
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1421
    const-string v2, "IRMRemovalFlag"

    sget v3, Lcom/android/email/activity/MessageViewFragment;->sRemoveIrmProtectionFlag:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1422
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/email/activity/MessageViewFragment;->mCurrentMessageId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1424
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    iget-wide v2, p0, Lcom/android/email/activity/MessageViewFragment;->mCurrentMessageId:J

    invoke-interface {v0, v2, v3}, Lcom/android/email/activity/MessageViewFragment$Callback;->removeIrmProtection(J)V

    move v0, v1

    .line 1425
    goto/16 :goto_1

    .line 1338
    :sswitch_data_0
    .sparse-switch
        0x7f1001f9 -> :sswitch_0
        0x7f1002de -> :sswitch_0
        0x7f1002f6 -> :sswitch_0
        0x7f100302 -> :sswitch_0
        0x7f100303 -> :sswitch_0
    .end sparse-switch

    .line 1355
    :pswitch_data_0
    .packed-switch 0x7f1002f6
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method protected onPostLoadBody()V
    .locals 1

    .prologue
    .line 1559
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragment;->onMarkMessageAsRead(Z)V

    .line 1560
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 16
    .parameter "menu"

    .prologue
    .line 507
    if-nez p1, :cond_1

    .line 649
    :cond_0
    :goto_0
    return-void

    .line 511
    :cond_1
    const-string v12, "MessageViewFragment >>"

    const-string v13, "[HJP] onPrepareOptionsMenu() "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const v12, 0x7f1002e0

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    .line 514
    .local v9, replyItem:Landroid/view/MenuItem;
    const v12, 0x7f100301

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    .line 515
    .local v10, replyPopupItem:Landroid/view/MenuItem;
    const v12, 0x7f100302

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 516
    .local v7, readUnReadItem:Landroid/view/MenuItem;
    const v12, 0x7f1002c3

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 517
    .local v4, forwardItem:Landroid/view/MenuItem;
    const v12, 0x7f1002de

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 518
    .local v1, deleteItem:Landroid/view/MenuItem;
    const v12, 0x7f1002f6

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 519
    .local v6, moveItem:Landroid/view/MenuItem;
    const v12, 0x7f100303

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    .line 520
    .local v11, saveItem:Landroid/view/MenuItem;
    const v12, 0x7f100308

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    .line 521
    .local v8, removeIrm:Landroid/view/MenuItem;
    const v12, 0x7f100305

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 525
    .local v5, mobilePrintItem:Landroid/view/MenuItem;
    const/4 v12, 0x0

    :try_start_0
    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 527
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageViewFragment;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/email/activity/MessageViewFragment;->mMailboxId:J

    invoke-static {v12, v13, v14}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->canMoveFrom(Landroid/content/Context;J)Z

    move-result v12

    if-nez v12, :cond_8

    .line 528
    const/4 v12, 0x0

    invoke-interface {v6, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/email/activity/MessageViewFragment;->mMailboxType:I

    invoke-static {v12}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->isMailboxTypeReplyAndForwardable(I)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 542
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageViewFragment;->getRecipientlength()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_a

    .line 543
    const/4 v12, 0x0

    invoke-interface {v9, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 544
    const/4 v12, 0x1

    invoke-interface {v10, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 549
    :goto_2
    const/4 v12, 0x1

    invoke-interface {v4, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 560
    :goto_3
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/email/activity/MessageViewFragment;->mIsSending:Z

    if-eqz v12, :cond_c

    .line 562
    const/4 v12, 0x0

    invoke-interface {v7, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    .line 573
    :goto_4
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageViewFragment;->IsEAS()Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_12

    .line 574
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageViewFragmentBase;->versionDouble:Ljava/lang/Double;

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    const-wide v14, 0x402c333333333333L

    cmpl-double v12, v12, v14

    if-ltz v12, :cond_11

    .line 576
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/android/email/irm/IRMEnforcer;->getInstance(Landroid/content/Context;)Lcom/android/email/irm/IRMEnforcer;

    move-result-object v3

    .line 578
    .local v3, enf:Lcom/android/email/irm/IRMEnforcer;
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/email/activity/MessageViewFragment;->mCurrentMessageId:J

    invoke-virtual {v3, v12, v13}, Lcom/android/email/irm/IRMEnforcer;->isIRMEnabled(J)Z

    move-result v12

    if-nez v12, :cond_d

    .line 579
    const/4 v12, 0x0

    invoke-interface {v8, v12}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 584
    :goto_5
    invoke-interface {v10}, Landroid/view/MenuItem;->isVisible()Z

    move-result v12

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageViewFragment;->irmInfo:Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageViewFragment;->irmInfo:Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;

    iget-boolean v12, v12, Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;->isReplyRestrict:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_2

    .line 586
    const/4 v12, 0x0

    invoke-interface {v9, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 588
    :cond_2
    invoke-interface {v10}, Landroid/view/MenuItem;->isVisible()Z

    move-result v12

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageViewFragment;->irmInfo:Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageViewFragment;->irmInfo:Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;

    iget-boolean v12, v12, Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;->isReplyAllRestrict:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    .line 590
    const/4 v12, 0x0

    invoke-interface {v10, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 592
    :cond_3
    invoke-interface {v9}, Landroid/view/MenuItem;->isVisible()Z

    move-result v12

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageViewFragment;->irmInfo:Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageViewFragment;->irmInfo:Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;

    iget-boolean v12, v12, Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;->isReplyRestrict:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_4

    .line 593
    const/4 v12, 0x0

    invoke-interface {v9, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 595
    :cond_4
    invoke-interface {v4}, Landroid/view/MenuItem;->isVisible()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 596
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageViewFragment;->irmInfo:Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;

    if-eqz v12, :cond_e

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageViewFragment;->irmInfo:Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;

    iget-boolean v12, v12, Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;->isForwardRestrict:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_e

    .line 597
    const/4 v12, 0x0

    invoke-interface {v4, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 603
    :cond_5
    :goto_6
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/email/activity/MessageViewFragment;->mCurrentMessageId:J

    invoke-virtual {v3, v12, v13}, Lcom/android/email/irm/IRMEnforcer;->isExportAllowed(J)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 604
    const/4 v12, 0x1

    invoke-interface {v8, v12}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 609
    :goto_7
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/email/activity/MessageViewFragment;->mCurrentMessageId:J

    invoke-virtual {v3, v12, v13}, Lcom/android/email/irm/IRMEnforcer;->isPrintAllowed(J)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 610
    const/4 v12, 0x1

    invoke-interface {v5, v12}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3

    .line 625
    .end local v3           #enf:Lcom/android/email/irm/IRMEnforcer;
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v12, v12, Landroid/content/res/Configuration;->orientation:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_7

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSplitMode()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 627
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/email/activity/MessageViewFragment;->mMessageIdToOpen:J

    const-wide/16 v14, -0x1

    cmp-long v12, v12, v14

    if-nez v12, :cond_6

    .line 628
    const v12, 0x7f040043

    invoke-interface {v9, v12}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 629
    const v12, 0x7f040045

    invoke-interface {v10, v12}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 630
    const v12, 0x7f040041

    invoke-interface {v4, v12}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 631
    const v12, 0x7f04003f

    invoke-interface {v1, v12}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 632
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mNoSelectedEmail:Landroid/widget/LinearLayout;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 633
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/email/activity/MessageViewFragment;->showContent(ZZ)V

    .line 634
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Lcom/android/email/winset/MessageScrollView;->setVisibility(I)V

    .line 635
    const v12, 0x7f100302

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 636
    const v12, 0x7f1002f6

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 637
    const v12, 0x7f100304

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 638
    const v12, 0x7f100305

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 639
    const v12, 0x7f100306

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 641
    :cond_6
    const v12, 0x7f100307

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 644
    :cond_7
    sget-boolean v12, Lcom/android/email/activity/Welcome;->needFull:Z

    if-eqz v12, :cond_0

    .line 646
    const v12, 0x7f100302

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 647
    const v12, 0x7f1002f6

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 530
    :cond_8
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/email/activity/MessageViewFragment;->hasMailboxToMove:Z

    if-eqz v12, :cond_9

    .line 531
    const/4 v12, 0x1

    invoke-interface {v6, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 536
    :catch_0
    move-exception v2

    .line 537
    .local v2, e:Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_1

    .line 533
    .end local v2           #e:Ljava/lang/NullPointerException;
    :cond_9
    const/4 v12, 0x0

    :try_start_5
    invoke-interface {v6, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    .line 546
    :cond_a
    const/4 v12, 0x1

    :try_start_6
    invoke-interface {v9, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 547
    const/4 v12, 0x0

    invoke-interface {v10, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_2

    .line 555
    :catch_1
    move-exception v2

    .line 556
    .restart local v2       #e:Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_3

    .line 551
    .end local v2           #e:Ljava/lang/NullPointerException;
    :cond_b
    const/4 v12, 0x0

    :try_start_7
    invoke-interface {v9, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 552
    const/4 v12, 0x0

    invoke-interface {v10, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 553
    const/4 v12, 0x0

    invoke-interface {v4, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_3

    .line 565
    :cond_c
    const/4 v12, 0x1

    :try_start_8
    invoke-interface {v7, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_4

    .line 567
    :catch_2
    move-exception v12

    goto/16 :goto_4

    .line 581
    .restart local v3       #enf:Lcom/android/email/irm/IRMEnforcer;
    :cond_d
    const/4 v12, 0x1

    :try_start_9
    invoke-interface {v8, v12}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_5

    .line 621
    .end local v3           #enf:Lcom/android/email/irm/IRMEnforcer;
    :catch_3
    move-exception v2

    .line 622
    .restart local v2       #e:Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_8

    .line 599
    .end local v2           #e:Ljava/lang/NullPointerException;
    .restart local v3       #enf:Lcom/android/email/irm/IRMEnforcer;
    :cond_e
    const/4 v12, 0x1

    :try_start_a
    invoke-interface {v4, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_6

    .line 606
    :cond_f
    const/4 v12, 0x0

    invoke-interface {v8, v12}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_7

    .line 612
    :cond_10
    const/4 v12, 0x0

    invoke-interface {v5, v12}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_8

    .line 616
    .end local v3           #enf:Lcom/android/email/irm/IRMEnforcer;
    :cond_11
    const/4 v12, 0x0

    invoke-interface {v8, v12}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_8

    .line 619
    :cond_12
    const/4 v12, 0x0

    invoke-interface {v8, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_8
.end method

.method public onReply()V
    .locals 1

    .prologue
    .line 1530
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageViewFragment$Callback;->onReply()V

    .line 1531
    return-void
.end method

.method public onReplyAll()V
    .locals 1

    .prologue
    .line 1534
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageViewFragment$Callback;->onReplyAll()V

    .line 1535
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 466
    invoke-super {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->onResume()V

    .line 467
    return-void
.end method

.method public openMessage(J)V
    .locals 8
    .parameter "messageId"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 846
    const-wide/16 v3, -0x1

    cmp-long v3, p1, v3

    if-nez v3, :cond_0

    .line 847
    new-instance v3, Ljava/security/InvalidParameterException;

    invoke-direct {v3}, Ljava/security/InvalidParameterException;-><init>()V

    throw v3

    .line 849
    :cond_0
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragment;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 850
    :try_start_0
    iput-wide p1, p0, Lcom/android/email/activity/MessageViewFragment;->mMessageIdToOpen:J

    .line 851
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 853
    const-string v3, "MessageViewFragment >>"

    const-string v4, "[HJP] openMessage() "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    const-string v3, "MessageViewFragment >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HJP] getResources().getConfiguration().orientation= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    const-string v3, "MessageViewFragment >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HJP] ThreePaneLayout.getCurrentPaneState() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mNoSelectedEmail:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 861
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    invoke-virtual {v3}, Lcom/android/email/winset/MessageScrollView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    .line 862
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    invoke-virtual {v3, v6}, Lcom/android/email/winset/MessageScrollView;->setVisibility(I)V

    .line 864
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSplitMode()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 866
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragment;->mActionBarMessageViewCustomView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 884
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 887
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    .line 888
    .local v2, view:Landroid/view/View;
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 889
    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 893
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v2           #view:Landroid/view/View;
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->loadMessageIfResumed()V

    .line 894
    return-void

    .line 851
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 869
    :cond_3
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->loadViewCustomView()V

    .line 870
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->setActionBarCustomForMessageView()V

    .line 871
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageViewFragment;->controlViewCustomView(Z)V

    goto :goto_0

    .line 890
    :catch_0
    move-exception v0

    .line 891
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected openMessageSync(Landroid/app/Activity;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 6
    .parameter "activity"

    .prologue
    .line 938
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragment;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 939
    :try_start_0
    iget-wide v0, p0, Lcom/android/email/activity/MessageViewFragment;->mMessageIdToOpen:J

    .line 940
    .local v0, messageId:J
    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-gez v2, :cond_0

    .line 941
    const/4 v2, 0x0

    monitor-exit v3

    .line 943
    :goto_0
    return-object v2

    :cond_0
    invoke-static {p1, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    monitor-exit v3

    goto :goto_0

    .line 944
    .end local v0           #messageId:J
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected resetView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 914
    invoke-super {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->resetView()V

    .line 915
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingYes:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 916
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingYes:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 918
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingNo:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    .line 919
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingNo:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 921
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingMaybe:Landroid/widget/CheckBox;

    if-eqz v0, :cond_2

    .line 922
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingMaybe:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 924
    :cond_2
    return-void
.end method

.method public selectReplyAllView()V
    .locals 1

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mReplyAllViewSpinner:Lcom/android/email/activity/CustomSpinner;

    if-eqz v0, :cond_0

    .line 1331
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mReplyAllViewSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v0}, Lcom/android/email/activity/CustomSpinner;->performClick()Z

    .line 1333
    :cond_0
    return-void
.end method

.method public setActionBarCustomForMessageView()V
    .locals 2

    .prologue
    .line 797
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 798
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mActionBarMessageViewCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 799
    return-void
.end method

.method public setCallback(Lcom/android/email/activity/MessageViewFragment$Callback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 837
    if-nez p1, :cond_0

    sget-object p1, Lcom/android/email/activity/MessageViewFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MessageViewFragment$Callback;

    .end local p1
    :cond_0
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    .line 838
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-super {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->setCallback(Lcom/android/email/activity/MessageViewFragmentBase$Callback;)V

    .line 839
    return-void
.end method

.method public setMailboxId(J)V
    .locals 2
    .parameter "mailboxId"

    .prologue
    .line 1014
    iput-wide p1, p0, Lcom/android/email/activity/MessageViewFragment;->mMailboxId:J

    .line 1015
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 1016
    long-to-int v0, p1

    iput v0, p0, Lcom/android/email/activity/MessageViewFragment;->mMailboxType:I

    .line 1020
    :goto_0
    return-void

    .line 1018
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MessageViewFragment;->mMailboxType:I

    goto :goto_0
.end method

.method public setMoveToMailboxFlag(Z)V
    .locals 0
    .parameter "bool"

    .prologue
    .line 1610
    iput-boolean p1, p0, Lcom/android/email/activity/MessageViewFragment;->hasMailboxToMove:Z

    .line 1611
    return-void
.end method

.method public setSendingProgressFlag(Z)V
    .locals 1
    .parameter "bool"

    .prologue
    .line 1605
    iput-boolean p1, p0, Lcom/android/email/activity/MessageViewFragment;->mIsSending:Z

    .line 1606
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1607
    return-void
.end method

.method public setupReplyAllView()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1309
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/email/activity/setup/SpinnerOption;

    new-instance v1, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragment;->mActivity:Landroid/app/Activity;

    const v4, 0x7f080055

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragment;->mActivity:Landroid/app/Activity;

    const v4, 0x7f080056

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v1, v0, v6

    .line 1313
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f04009b

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mReplyAllAdapter:Landroid/widget/ArrayAdapter;

    .line 1315
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mReplyAllAdapter:Landroid/widget/ArrayAdapter;

    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1316
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mReplyAllViewSpinner:Lcom/android/email/activity/CustomSpinner;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mReplyAllAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/CustomSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1317
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mReplyAllViewSpinner:Lcom/android/email/activity/CustomSpinner;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/CustomSpinner;->setSelection(I)V

    .line 1318
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mReplyAllViewSpinner:Lcom/android/email/activity/CustomSpinner;

    new-instance v1, Lcom/android/email/activity/MessageViewFragment$11;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageViewFragment$11;-><init>(Lcom/android/email/activity/MessageViewFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/email/activity/CustomSpinner;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1327
    return-void
.end method

.method protected updateHeaderView(Lcom/android/emailcommon/provider/EmailContent$Message;Z)V
    .locals 3
    .parameter "message"
    .parameter "bOpenMail"

    .prologue
    .line 1566
    invoke-super {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->updateHeaderView(Lcom/android/emailcommon/provider/EmailContent$Message;Z)V

    .line 1568
    const-string v1, "eas"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountSchema:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1569
    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagStatus:I

    .line 1570
    .local v0, nFollowUpFlag:I
    packed-switch v0, :pswitch_data_0

    .line 1586
    .end local v0           #nFollowUpFlag:I
    :goto_0
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSplitMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1587
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 1588
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1595
    :cond_0
    :goto_1
    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_1

    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_2

    .line 1597
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageViewFragment;->addTabFlags(I)V

    .line 1599
    :cond_2
    return-void

    .line 1572
    .restart local v0       #nFollowUpFlag:I
    :pswitch_0
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mFollowUpFlagClear:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1575
    :pswitch_1
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mFollowUpFlagComplete:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1578
    :pswitch_2
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mFollowUpFlagSet:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1582
    .end local v0           #nFollowUpFlag:I
    :cond_3
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    iget-boolean v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mFavoriteIconOn:Landroid/graphics/drawable/Drawable;

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mFavoriteIconOff:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 1590
    :cond_5
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 1570
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public updateNavigationButtonsOnView(ZZ)V
    .locals 1
    .parameter "enableMoveToNewer"
    .parameter "enableMoveToOlder"

    .prologue
    .line 1643
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mHeaderIconUp:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1644
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mHeaderIconDown:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1645
    return-void
.end method

.method protected updateTabFlags(I)V
    .locals 7
    .parameter "tabFlags"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 378
    invoke-super {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->updateTabFlags(I)V

    .line 379
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_0

    .line 380
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 381
    .local v0, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v0, :cond_1

    iget-wide v1, p0, Lcom/android/email/activity/MessageViewFragment;->mPreviousMeetingResponseMsgId:J

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 382
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 383
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 389
    .end local v0           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_0
    :goto_0
    return-void

    .line 385
    .restart local v0       #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 386
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setFocusable(Z)V

    goto :goto_0
.end method
