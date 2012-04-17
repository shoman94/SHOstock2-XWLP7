.class Lcom/android/email/activity/MessagesAdapter;
.super Landroid/widget/CursorAdapter;
.source "MessagesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessagesAdapter$1;,
        Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;,
        Lcom/android/email/activity/MessagesAdapter$Callback;,
        Lcom/android/email/activity/MessagesAdapter$Position;,
        Lcom/android/email/activity/MessagesAdapter$SubTitle;
    }
.end annotation


# static fields
.field static final MESSAGE_PROJECTION:[Ljava/lang/String;

.field public static final SORT_QUERY:[Ljava/lang/String;

.field static final THREAD_PROJECTION:[Ljava/lang/String;

.field private static bFontChanged:Z

.field private static mIsPhoneDevice:Z

.field private static sCursor:Landroid/database/Cursor;

.field private static sHideViewPosition:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static sHideViewPositionNew:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static sListForSubTitle:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MessagesAdapter$SubTitle;",
            ">;"
        }
    .end annotation
.end field

.field private static sListForSubTitleNew:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MessagesAdapter$SubTitle;",
            ">;"
        }
    .end annotation
.end field

.field private static sListItemCount:I

.field private static sListItemCountNew:I

.field private static sListPositionForAdapter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MessagesAdapter$Position;",
            ">;"
        }
    .end annotation
.end field

.field private static sListPositionForAdapterNew:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MessagesAdapter$Position;",
            ">;"
        }
    .end annotation
.end field

.field public static sSortType:I

.field private static sSubtitleCount:I

.field private static sSubtitleCountNew:I

.field private static sUnreadListItemCount:I

.field private static sUnreadListItemCountNew:I


# instance fields
.field private mAdapterPosition:I

.field private final mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

.field private mCheckboxDisabled:Z

.field private mColor:I

.field private mEnforcer:Lcom/android/email/irm/IRMEnforcer;

.field private mFirstListItem:Landroid/view/View;

.field private mForwardBlockSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mParentIndex:I

.field private mPosition:I

.field private mPreviewLineSize:I

.field private mReplyAllBlockSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mReplyBlockSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mResourceHelper:Lcom/android/email/ResourceHelper;

.field private final mSelectedSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectedTitleSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mShowColorChips:Z

.field private mfontSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 76
    sput-boolean v4, Lcom/android/email/activity/MessagesAdapter;->mIsPhoneDevice:Z

    .line 79
    sput-boolean v3, Lcom/android/email/activity/MessagesAdapter;->bFontChanged:Z

    .line 81
    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "mailboxKey"

    aput-object v1, v0, v4

    const-string v1, "accountKey"

    aput-object v1, v0, v5

    const-string v1, "displayName"

    aput-object v1, v0, v6

    const-string v1, "subject"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "timeStamp"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "flagRead"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "flagFavorite"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "flagAttachment"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "threadId"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "typeMsg"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "importance"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "flagStatus"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "smimeFlags"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "messageType"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "lastVerb"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "conversationId"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "flagRead"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "flagRead"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "flagRead"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "accountSchema"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "mailboxType"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, " substr(snippet,0,200)"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "flagReply"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "IRMTemplateId"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "syncServerId"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "EasLocalReadFlag"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/MessagesAdapter;->MESSAGE_PROJECTION:[Ljava/lang/String;

    .line 116
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "mailboxKey"

    aput-object v1, v0, v4

    const-string v1, "accountKey"

    aput-object v1, v0, v5

    const-string v1, "displayName"

    aput-object v1, v0, v6

    const-string v1, "subject"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "timeStamp"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "flagRead"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "flagFavorite"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "flagAttachment"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "threadId"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "typeMsg"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "importance"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "flagStatus"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "smimeFlags"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "messageType"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "lastVerb"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "conversationId"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "flagRead"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "flagRead"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "flagRead"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "accountSchema"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "mailboxType"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "snippet"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "flagReply"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "IRMTemplateId"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "syncServerId"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "EasLocalReadFlag"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "childCount"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "childIndex"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/MessagesAdapter;->THREAD_PROJECTION:[Ljava/lang/String;

    .line 235
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "timeStamp COLLATE NOCASE DESC"

    aput-object v1, v0, v3

    const-string v1, "timeStamp COLLATE NOCASE ASC"

    aput-object v1, v0, v4

    const-string v1, "displayName COLLATE NOCASE ASC, timeStamp DESC"

    aput-object v1, v0, v5

    const-string v1, "displayName COLLATE NOCASE DESC, timeStamp DESC"

    aput-object v1, v0, v6

    const-string v1, "flagRead COLLATE NOCASE ASC, timeStamp DESC"

    aput-object v1, v0, v7

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

    const/16 v1, 0xa

    const-string v2, "flags COLLATE NOCASE DESC,timeStamp DESC"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "flagAttachment COLLATE NOCASE DESC, timeStamp DESC"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/MessagesAdapter;->SORT_QUERY:[Ljava/lang/String;

    .line 294
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapter:Ljava/util/ArrayList;

    .line 296
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    .line 298
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessagesAdapter;->sHideViewPosition:Ljava/util/HashSet;

    .line 300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapterNew:Ljava/util/ArrayList;

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitleNew:Ljava/util/ArrayList;

    .line 304
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessagesAdapter;->sHideViewPositionNew:Ljava/util/HashSet;

    .line 306
    sput v3, Lcom/android/email/activity/MessagesAdapter;->sSubtitleCount:I

    .line 308
    sput v3, Lcom/android/email/activity/MessagesAdapter;->sListItemCount:I

    .line 310
    sput v3, Lcom/android/email/activity/MessagesAdapter;->sUnreadListItemCount:I

    .line 312
    sput v3, Lcom/android/email/activity/MessagesAdapter;->sSubtitleCountNew:I

    .line 314
    sput v3, Lcom/android/email/activity/MessagesAdapter;->sListItemCountNew:I

    .line 316
    sput v3, Lcom/android/email/activity/MessagesAdapter;->sUnreadListItemCountNew:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/email/activity/MessagesAdapter$Callback;)V
    .locals 4
    .parameter "context"
    .parameter "callback"

    .prologue
    const/4 v3, 0x0

    .line 390
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 320
    iput v3, p0, Lcom/android/email/activity/MessagesAdapter;->mAdapterPosition:I

    .line 322
    iput v3, p0, Lcom/android/email/activity/MessagesAdapter;->mPosition:I

    .line 324
    iput v3, p0, Lcom/android/email/activity/MessagesAdapter;->mParentIndex:I

    .line 332
    iput-boolean v3, p0, Lcom/android/email/activity/MessagesAdapter;->mCheckboxDisabled:Z

    .line 347
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedSet:Ljava/util/HashSet;

    .line 351
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/email/activity/MessagesAdapter;->mReplyBlockSet:Ljava/util/HashSet;

    .line 352
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/email/activity/MessagesAdapter;->mReplyAllBlockSet:Ljava/util/HashSet;

    .line 353
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/email/activity/MessagesAdapter;->mForwardBlockSet:Ljava/util/HashSet;

    .line 355
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedTitleSet:Ljava/util/HashSet;

    .line 391
    invoke-static {p1}, Lcom/android/email/ResourceHelper;->getInstance(Landroid/content/Context;)Lcom/android/email/ResourceHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessagesAdapter;->mResourceHelper:Lcom/android/email/ResourceHelper;

    .line 392
    iput-object p2, p0, Lcom/android/email/activity/MessagesAdapter;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    .line 393
    iget-object v1, p0, Lcom/android/email/activity/MessagesAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v0

    .line 394
    .local v0, settingValue:Lcom/android/email/Preferences;
    invoke-virtual {v0}, Lcom/android/email/Preferences;->getTextZoom()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/MessagesAdapter;->mfontSize:I

    .line 395
    iget v1, p0, Lcom/android/email/activity/MessagesAdapter;->mfontSize:I

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessagesAdapter;->setListItemSize(I)V

    .line 396
    invoke-virtual {v0}, Lcom/android/email/Preferences;->getPreViewLine()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/MessagesAdapter;->mPreviewLineSize:I

    .line 397
    iget v1, p0, Lcom/android/email/activity/MessagesAdapter;->mPreviewLineSize:I

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessagesAdapter;->setPreviewLineSize(I)V

    .line 398
    invoke-virtual {v0}, Lcom/android/email/Preferences;->getBGColor()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/MessagesAdapter;->mColor:I

    .line 399
    iget v1, p0, Lcom/android/email/activity/MessagesAdapter;->mColor:I

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessagesAdapter;->setBackgroundColor(I)V

    .line 400
    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->isPhoneMode()Z

    move-result v1

    sput-boolean v1, Lcom/android/email/activity/MessagesAdapter;->mIsPhoneDevice:Z

    .line 401
    invoke-static {p1}, Lcom/android/email/irm/IRMEnforcer;->getInstance(Landroid/content/Context;)Lcom/android/email/irm/IRMEnforcer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessagesAdapter;->mEnforcer:Lcom/android/email/irm/IRMEnforcer;

    .line 402
    return-void
.end method

.method static synthetic access$000()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$002(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    sput-object p0, Lcom/android/email/activity/MessagesAdapter;->sCursor:Landroid/database/Cursor;

    return-object p0
.end method

.method static synthetic access$102(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    sput p0, Lcom/android/email/activity/MessagesAdapter;->sListItemCountNew:I

    return p0
.end method

.method static synthetic access$202(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    sput p0, Lcom/android/email/activity/MessagesAdapter;->sUnreadListItemCountNew:I

    return p0
.end method

.method static synthetic access$302(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    sput p0, Lcom/android/email/activity/MessagesAdapter;->sSubtitleCountNew:I

    return p0
.end method

.method static synthetic access$400()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitleNew:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$402(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    sput-object p0, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitleNew:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$500()Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sHideViewPositionNew:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$502(Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    sput-object p0, Lcom/android/email/activity/MessagesAdapter;->sHideViewPositionNew:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$600()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapterNew:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$602(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    sput-object p0, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapterNew:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$800()Z
    .locals 1

    .prologue
    .line 61
    sget-boolean v0, Lcom/android/email/activity/MessagesAdapter;->mIsPhoneDevice:Z

    return v0
.end method

.method static synthetic access$900()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    return-object v0
.end method

.method private changeFavoriteIcon(Lcom/android/email/activity/MessageListItem;Z)V
    .locals 0
    .parameter "view"
    .parameter "isFavorite"

    .prologue
    .line 1144
    invoke-virtual {p1}, Lcom/android/email/activity/MessageListItem;->invalidate()V

    .line 1145
    return-void
.end method

.method private changeFollowUpFlagIcon(Lcom/android/email/activity/MessageListItem;I)V
    .locals 0
    .parameter "view"
    .parameter "newFollowUpFlag"

    .prologue
    .line 1163
    invoke-virtual {p1}, Lcom/android/email/activity/MessageListItem;->invalidate()V

    .line 1164
    return-void
.end method

.method private changeSubtitleState(I)V
    .locals 2
    .parameter "subTitleIndex"

    .prologue
    .line 1050
    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-boolean v0, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsExpand:Z

    if-eqz v0, :cond_1

    .line 1051
    sget-object v1, Lcom/android/email/activity/MessagesAdapter;->sHideViewPosition:Ljava/util/HashSet;

    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v0, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1052
    sget-object v1, Lcom/android/email/activity/MessagesAdapter;->sHideViewPositionNew:Ljava/util/HashSet;

    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v0, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1053
    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsExpand:Z

    .line 1061
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    if-eqz v0, :cond_0

    .line 1062
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessagesAdapter$Callback;->onReDrawList()V

    .line 1064
    :cond_0
    return-void

    .line 1056
    :cond_1
    sget-object v1, Lcom/android/email/activity/MessagesAdapter;->sHideViewPosition:Ljava/util/HashSet;

    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v0, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 1057
    sget-object v1, Lcom/android/email/activity/MessagesAdapter;->sHideViewPositionNew:Ljava/util/HashSet;

    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v0, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 1058
    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsExpand:Z

    goto :goto_0
.end method

.method private changeSubtitleStateAll(III)V
    .locals 4
    .parameter "expandFactor"
    .parameter "shrinkFactor"
    .parameter "factor"

    .prologue
    .line 951
    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 982
    :cond_0
    :goto_0
    return-void

    .line 954
    :cond_1
    if-lt p1, p3, :cond_4

    .line 955
    :try_start_0
    const-string v2, "MessagesAdapter"

    const-string v3, "expand messagelist all!!"

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    sget v2, Lcom/android/email/activity/MessagesAdapter;->sSubtitleCount:I

    if-ge v1, v2, :cond_2

    .line 957
    sget-object v2, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsExpand:Z

    .line 956
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 959
    :cond_2
    sget-object v2, Lcom/android/email/activity/MessagesAdapter;->sHideViewPosition:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 960
    sget-object v2, Lcom/android/email/activity/MessagesAdapter;->sHideViewPositionNew:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 979
    .end local v1           #i:I
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/android/email/activity/MessagesAdapter;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    if-eqz v2, :cond_0

    .line 980
    iget-object v2, p0, Lcom/android/email/activity/MessagesAdapter;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    invoke-interface {v2}, Lcom/android/email/activity/MessagesAdapter$Callback;->onReDrawList()V

    goto :goto_0

    .line 961
    :cond_4
    if-lt p2, p3, :cond_5

    .line 962
    :try_start_1
    const-string v2, "MessagesAdapter"

    const-string v3, "shrink messagelist all!!"

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    sget v2, Lcom/android/email/activity/MessagesAdapter;->sSubtitleCount:I

    if-ge v1, v2, :cond_3

    .line 964
    sget-object v2, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsExpand:Z

    .line 965
    sget-object v3, Lcom/android/email/activity/MessagesAdapter;->sHideViewPosition:Ljava/util/HashSet;

    sget-object v2, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v2, v2, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 966
    sget-object v3, Lcom/android/email/activity/MessagesAdapter;->sHideViewPositionNew:Ljava/util/HashSet;

    sget-object v2, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v2, v2, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 963
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 969
    .end local v1           #i:I
    :cond_5
    const-string v2, "MessagesAdapter"

    const-string v3, "expand messagelist all!!"

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_4
    sget v2, Lcom/android/email/activity/MessagesAdapter;->sSubtitleCount:I

    if-ge v1, v2, :cond_6

    .line 971
    sget-object v2, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsExpand:Z

    .line 970
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 973
    :cond_6
    sget-object v2, Lcom/android/email/activity/MessagesAdapter;->sHideViewPosition:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 974
    sget-object v2, Lcom/android/email/activity/MessagesAdapter;->sHideViewPositionNew:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V
    :try_end_1
    .catch Ljava/util/ConcurrentModificationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 976
    .end local v1           #i:I
    :catch_0
    move-exception v0

    .line 977
    .local v0, e:Ljava/util/ConcurrentModificationException;
    invoke-virtual {v0}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    goto :goto_2
.end method

.method public static createLoader(Landroid/content/Context;JI)Landroid/content/Loader;
    .locals 6
    .parameter "context"
    .parameter "mailboxId"
    .parameter "sortType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JI)",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1172
    new-instance v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;

    sget-object v1, Lcom/android/email/activity/MessagesAdapter;->SORT_QUERY:[Ljava/lang/String;

    aget-object v4, v1, p3

    move-object v1, p0

    move-wide v2, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;-><init>(Landroid/content/Context;JLjava/lang/String;I)V

    return-object v0
.end method

.method public static getHideViewPosition()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 469
    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sHideViewPosition:Ljava/util/HashSet;

    return-object v0
.end method

.method private updateMultiSelected(IZ)V
    .locals 6
    .parameter "subTitleIndex"
    .parameter "isChecked"

    .prologue
    .line 997
    if-nez p2, :cond_3

    .line 998
    iget-object v5, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedSet:Ljava/util/HashSet;

    sget-object v4, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v4, v4, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 999
    sget-object v4, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsChecked:Z

    .line 1000
    iget-object v5, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedTitleSet:Ljava/util/HashSet;

    sget-object v4, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v4, v4, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1007
    :goto_0
    sget-object v4, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v4, v4, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1008
    .local v1, id:J
    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter;->mEnforcer:Lcom/android/email/irm/IRMEnforcer;

    invoke-virtual {v4, v1, v2}, Lcom/android/email/irm/IRMEnforcer;->getIRMLicenseFlag(J)I

    move-result v3

    .line 1009
    .local v3, irmFlag:I
    invoke-static {v3}, Lcom/android/email/irm/IRMEnforcer;->isReplyAllowed(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1010
    if-nez p2, :cond_4

    .line 1011
    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter;->mReplyBlockSet:Ljava/util/HashSet;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1016
    :cond_1
    :goto_2
    invoke-static {v3}, Lcom/android/email/irm/IRMEnforcer;->isReplyAllAllowed(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1017
    if-nez p2, :cond_5

    .line 1018
    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter;->mReplyAllBlockSet:Ljava/util/HashSet;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1023
    :cond_2
    :goto_3
    invoke-static {v3}, Lcom/android/email/irm/IRMEnforcer;->isForwardAllowed(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1024
    if-nez p2, :cond_6

    .line 1025
    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter;->mForwardBlockSet:Ljava/util/HashSet;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1002
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #id:J
    .end local v3           #irmFlag:I
    :cond_3
    iget-object v5, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedSet:Ljava/util/HashSet;

    sget-object v4, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v4, v4, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 1003
    sget-object v4, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsChecked:Z

    .line 1004
    iget-object v5, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedTitleSet:Ljava/util/HashSet;

    sget-object v4, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v4, v4, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1013
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #id:J
    .restart local v3       #irmFlag:I
    :cond_4
    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter;->mReplyBlockSet:Ljava/util/HashSet;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1020
    :cond_5
    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter;->mReplyAllBlockSet:Ljava/util/HashSet;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1027
    :cond_6
    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter;->mForwardBlockSet:Ljava/util/HashSet;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1031
    .end local v1           #id:J
    .end local v3           #irmFlag:I
    :cond_7
    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    if-eqz v4, :cond_8

    .line 1032
    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    invoke-interface {v4}, Lcom/android/email/activity/MessagesAdapter$Callback;->onAdapterSelectedAllChanged()V

    .line 1034
    :cond_8
    return-void
.end method

.method private updateSelected(Lcom/android/email/activity/MessageListItem;ZI)V
    .locals 4
    .parameter "itemView"
    .parameter "newSelected"
    .parameter "parentIndex"

    .prologue
    .line 1079
    if-eqz p2, :cond_5

    .line 1080
    iget-object v1, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedSet:Ljava/util/HashSet;

    iget-wide v2, p1, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1086
    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/MessagesAdapter;->mEnforcer:Lcom/android/email/irm/IRMEnforcer;

    iget-wide v2, p1, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-virtual {v1, v2, v3}, Lcom/android/email/irm/IRMEnforcer;->getIRMLicenseFlag(J)I

    move-result v0

    .line 1087
    .local v0, irmFlag:I
    invoke-static {v0}, Lcom/android/email/irm/IRMEnforcer;->isReplyAllowed(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1088
    if-eqz p2, :cond_6

    .line 1089
    iget-object v1, p0, Lcom/android/email/activity/MessagesAdapter;->mReplyBlockSet:Ljava/util/HashSet;

    iget-wide v2, p1, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1094
    :cond_0
    :goto_1
    invoke-static {v0}, Lcom/android/email/irm/IRMEnforcer;->isReplyAllAllowed(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1095
    if-eqz p2, :cond_7

    .line 1096
    iget-object v1, p0, Lcom/android/email/activity/MessagesAdapter;->mReplyAllBlockSet:Ljava/util/HashSet;

    iget-wide v2, p1, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1101
    :cond_1
    :goto_2
    invoke-static {v0}, Lcom/android/email/irm/IRMEnforcer;->isForwardAllowed(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1102
    if-eqz p2, :cond_8

    .line 1103
    iget-object v1, p0, Lcom/android/email/activity/MessagesAdapter;->mForwardBlockSet:Ljava/util/HashSet;

    iget-wide v2, p1, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1109
    :cond_2
    :goto_3
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSortType()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_3

    const/4 v1, -0x1

    if-eq p3, v1, :cond_3

    .line 1110
    iget-object v2, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedSet:Ljava/util/HashSet;

    sget-object v1, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v1, v1, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1111
    sget-object v1, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsChecked:Z

    .line 1112
    iget-object v2, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedTitleSet:Ljava/util/HashSet;

    sget-object v1, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v1, v1, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1119
    :cond_3
    :goto_4
    iget-object v1, p0, Lcom/android/email/activity/MessagesAdapter;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    if-eqz v1, :cond_4

    .line 1120
    iget-object v1, p0, Lcom/android/email/activity/MessagesAdapter;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    iget-object v2, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/email/activity/MessagesAdapter$Callback;->onAdapterSelectedChanged(Lcom/android/email/activity/MessageListItem;ZI)V

    .line 1122
    :cond_4
    return-void

    .line 1082
    .end local v0           #irmFlag:I
    :cond_5
    iget-object v1, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedSet:Ljava/util/HashSet;

    iget-wide v2, p1, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1091
    .restart local v0       #irmFlag:I
    :cond_6
    iget-object v1, p0, Lcom/android/email/activity/MessagesAdapter;->mReplyBlockSet:Ljava/util/HashSet;

    iget-wide v2, p1, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1098
    :cond_7
    iget-object v1, p0, Lcom/android/email/activity/MessagesAdapter;->mReplyAllBlockSet:Ljava/util/HashSet;

    iget-wide v2, p1, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1105
    :cond_8
    iget-object v1, p0, Lcom/android/email/activity/MessagesAdapter;->mForwardBlockSet:Ljava/util/HashSet;

    iget-wide v2, p1, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1114
    :cond_9
    sget-object v1, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsChecked:Z

    .line 1115
    iget-object v2, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedTitleSet:Ljava/util/HashSet;

    sget-object v1, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v1, v1, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_4
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 10
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 723
    :try_start_0
    iget v8, p0, Lcom/android/email/activity/MessagesAdapter;->mAdapterPosition:I

    if-gez v8, :cond_6

    .line 724
    move-object v0, p1

    check-cast v0, Lcom/android/email/activity/MessageListSubTitleItem;

    move-object v5, v0

    .line 725
    .local v5, itemView:Lcom/android/email/activity/MessageListSubTitleItem;
    iget-object v8, p0, Lcom/android/email/activity/MessagesAdapter;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    invoke-virtual {v5, p0, v8}, Lcom/android/email/activity/MessageListSubTitleItem;->bindViewInit(Lcom/android/email/activity/MessagesAdapter;Lcom/android/email/activity/MessagesAdapter$Callback;)V

    .line 726
    sget-object v8, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    iget v9, p0, Lcom/android/email/activity/MessagesAdapter;->mAdapterPosition:I

    neg-int v9, v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v8, v8, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    iput-object v8, v5, Lcom/android/email/activity/MessageListSubTitleItem;->mTextMain:Ljava/lang/String;

    .line 728
    sget-object v8, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    iget v9, p0, Lcom/android/email/activity/MessagesAdapter;->mAdapterPosition:I

    neg-int v9, v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v8, v8, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemListSub:Ljava/lang/String;

    iput-object v8, v5, Lcom/android/email/activity/MessageListSubTitleItem;->mTextSub:Ljava/lang/String;

    .line 730
    sget-object v8, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    iget v9, p0, Lcom/android/email/activity/MessagesAdapter;->mAdapterPosition:I

    neg-int v9, v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v8, v8, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemListDate:Ljava/lang/String;

    iput-object v8, v5, Lcom/android/email/activity/MessageListSubTitleItem;->mTextDate:Ljava/lang/String;

    .line 731
    sget-object v8, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    iget v9, p0, Lcom/android/email/activity/MessagesAdapter;->mAdapterPosition:I

    neg-int v9, v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v8, v8, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    iput-object v8, v5, Lcom/android/email/activity/MessageListSubTitleItem;->mTextCount:Ljava/lang/String;

    .line 733
    sget-object v8, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    iget v9, p0, Lcom/android/email/activity/MessagesAdapter;->mAdapterPosition:I

    neg-int v9, v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-boolean v8, v8, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsExpand:Z

    iput-boolean v8, v5, Lcom/android/email/activity/MessageListSubTitleItem;->mIsExpanded:Z

    .line 734
    sget-object v8, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    iget v9, p0, Lcom/android/email/activity/MessagesAdapter;->mAdapterPosition:I

    neg-int v9, v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v8, v8, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    iput-object v8, v5, Lcom/android/email/activity/MessageListSubTitleItem;->mSubtitleId:Ljava/lang/String;

    .line 735
    iget-object v8, v5, Lcom/android/email/activity/MessageListSubTitleItem;->mSubtitleId:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/android/email/activity/MessagesAdapter;->isSelected(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v5, Lcom/android/email/activity/MessageListSubTitleItem;->mIsChecked:Z

    .line 736
    iget v8, p0, Lcom/android/email/activity/MessagesAdapter;->mAdapterPosition:I

    neg-int v8, v8

    add-int/lit8 v8, v8, -0x1

    iput v8, v5, Lcom/android/email/activity/MessageListSubTitleItem;->mSubTitleIndex:I

    .line 737
    iget-boolean v8, p0, Lcom/android/email/activity/MessagesAdapter;->mShowColorChips:Z

    iput-boolean v8, v5, Lcom/android/email/activity/MessageListSubTitleItem;->mNeedMorePadding:Z

    .line 738
    iget v8, p0, Lcom/android/email/activity/MessagesAdapter;->mfontSize:I

    iput v8, v5, Lcom/android/email/activity/MessageListSubTitleItem;->mfontSize:I

    .line 739
    const/4 v8, 0x0

    iput v8, v5, Lcom/android/email/activity/MessageListSubTitleItem;->mPreviewLineSize:I

    .line 745
    iget-boolean v8, p0, Lcom/android/email/activity/MessagesAdapter;->mCheckboxDisabled:Z

    iput-boolean v8, v5, Lcom/android/email/activity/MessageListSubTitleItem;->mCheckboxDisabled:Z

    .line 746
    iget v8, p0, Lcom/android/email/activity/MessagesAdapter;->mPosition:I

    iput v8, v5, Lcom/android/email/activity/MessageListSubTitleItem;->mPosition:I

    .line 747
    iget v8, v5, Lcom/android/email/activity/MessageListSubTitleItem;->mBgColor:I

    iget v9, p0, Lcom/android/email/activity/MessagesAdapter;->mColor:I

    if-ne v8, v9, :cond_2

    const/4 v8, 0x0

    :goto_0
    iput-boolean v8, v5, Lcom/android/email/activity/MessageListSubTitleItem;->mIsBgColorChanged:Z

    .line 748
    iget v8, p0, Lcom/android/email/activity/MessagesAdapter;->mColor:I

    iput v8, v5, Lcom/android/email/activity/MessageListSubTitleItem;->mBgColor:I

    .line 749
    iget v8, p0, Lcom/android/email/activity/MessagesAdapter;->mAdapterPosition:I

    neg-int v8, v8

    sget-object v9, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v8, v9, :cond_3

    const/4 v8, 0x1

    :goto_1
    iput-boolean v8, v5, Lcom/android/email/activity/MessageListSubTitleItem;->mIsLastSubtitle:Z

    .line 751
    sget-object v8, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    iget v9, p0, Lcom/android/email/activity/MessagesAdapter;->mAdapterPosition:I

    neg-int v9, v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget v8, v8, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsRead:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    const/4 v8, 0x1

    :goto_2
    iput-boolean v8, v5, Lcom/android/email/activity/MessageListSubTitleItem;->mIsRead:Z

    .line 752
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSortType()I

    move-result v8

    const/4 v9, 0x7

    if-ne v8, v9, :cond_0

    iget v8, p0, Lcom/android/email/activity/MessagesAdapter;->mPosition:I

    sget-object v9, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapter:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ge v8, v9, :cond_0

    .line 754
    sget-object v8, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapter:Ljava/util/ArrayList;

    iget v9, p0, Lcom/android/email/activity/MessagesAdapter;->mPosition:I

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/email/activity/MessagesAdapter$Position;

    iget v8, v8, Lcom/android/email/activity/MessagesAdapter$Position;->listPosition:I

    iput v8, p0, Lcom/android/email/activity/MessagesAdapter;->mAdapterPosition:I

    .line 755
    iget v8, p0, Lcom/android/email/activity/MessagesAdapter;->mAdapterPosition:I

    invoke-interface {p3, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 756
    const/16 v8, 0x19

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/email/activity/MessageListSubTitleItem;->mSnippet:Ljava/lang/String;

    .line 758
    :cond_0
    const/4 v8, 0x2

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 759
    .local v1, accountId:J
    iget-boolean v8, p0, Lcom/android/email/activity/MessagesAdapter;->mShowColorChips:Z

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/email/activity/MessagesAdapter;->mResourceHelper:Lcom/android/email/ResourceHelper;

    invoke-virtual {v8, v1, v2}, Lcom/android/email/ResourceHelper;->getAccountColorNinePatch(J)Landroid/graphics/NinePatch;

    move-result-object v8

    :goto_3
    iput-object v8, v5, Lcom/android/email/activity/MessageListSubTitleItem;->mColorChipBitmap:Landroid/graphics/NinePatch;

    .line 881
    .end local v1           #accountId:J
    .end local v5           #itemView:Lcom/android/email/activity/MessageListSubTitleItem;
    :cond_1
    :goto_4
    return-void

    .line 747
    .restart local v5       #itemView:Lcom/android/email/activity/MessageListSubTitleItem;
    :cond_2
    const/4 v8, 0x1

    goto :goto_0

    .line 749
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 751
    :cond_4
    const/4 v8, 0x0

    goto :goto_2

    .line 759
    .restart local v1       #accountId:J
    :cond_5
    const/4 v8, 0x0

    goto :goto_3

    .line 762
    .end local v1           #accountId:J
    .end local v5           #itemView:Lcom/android/email/activity/MessageListSubTitleItem;
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/email/activity/MessageListItem;

    move-object v5, v0

    .line 765
    .local v5, itemView:Lcom/android/email/activity/MessageListItem;
    iget-object v8, p0, Lcom/android/email/activity/MessagesAdapter;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    invoke-virtual {v5, p0, v8}, Lcom/android/email/activity/MessageListItem;->bindViewInit(Lcom/android/email/activity/MessagesAdapter;Lcom/android/email/activity/MessagesAdapter$Callback;)V

    .line 766
    iget v8, p0, Lcom/android/email/activity/MessagesAdapter;->mPosition:I

    sget-object v9, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapter:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ge v8, v9, :cond_b

    .line 768
    sget-object v8, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapter:Ljava/util/ArrayList;

    iget v9, p0, Lcom/android/email/activity/MessagesAdapter;->mPosition:I

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/email/activity/MessagesAdapter$Position;

    iget v7, v8, Lcom/android/email/activity/MessagesAdapter$Position;->listPosition:I

    .line 769
    .local v7, nextAdapterPosition:I
    if-gez v7, :cond_9

    .line 770
    const/4 v8, 0x0

    iput-boolean v8, v5, Lcom/android/email/activity/MessageListItem;->mHasDivider:Z

    .line 776
    :goto_5
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSortType()I

    move-result v8

    const/4 v9, 0x7

    if-ne v8, v9, :cond_8

    .line 777
    sget-object v8, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapter:Ljava/util/ArrayList;

    iget v9, p0, Lcom/android/email/activity/MessagesAdapter;->mPosition:I

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/email/activity/MessagesAdapter$Position;

    iget v8, v8, Lcom/android/email/activity/MessagesAdapter$Position;->parentIndex:I

    if-ltz v8, :cond_7

    sget-object v8, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapter:Ljava/util/ArrayList;

    iget v9, p0, Lcom/android/email/activity/MessagesAdapter;->mPosition:I

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/email/activity/MessagesAdapter$Position;

    iget v8, v8, Lcom/android/email/activity/MessagesAdapter$Position;->listPosition:I

    if-gez v8, :cond_a

    .line 779
    :cond_7
    const/4 v8, 0x0

    iput-boolean v8, v5, Lcom/android/email/activity/MessageListItem;->mNeedMorePadding:Z

    .line 790
    .end local v7           #nextAdapterPosition:I
    :cond_8
    :goto_6
    iget v8, p0, Lcom/android/email/activity/MessagesAdapter;->mParentIndex:I

    iput v8, v5, Lcom/android/email/activity/MessageListItem;->mParentIndex:I

    .line 792
    const/4 v8, 0x0

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v5, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    .line 793
    const/4 v8, 0x1

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v5, Lcom/android/email/activity/MessageListItem;->mMailboxId:J

    .line 794
    const/4 v8, 0x2

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 795
    .restart local v1       #accountId:J
    iput-wide v1, v5, Lcom/android/email/activity/MessageListItem;->mAccountId:J

    .line 798
    sget-boolean v8, Lcom/android/emailcommon/EasRefs;->EAS_LOCAL_DB_OPERATION:Z

    if-eqz v8, :cond_f

    .line 799
    const/16 v8, 0x1d

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 800
    .local v6, localRead:I
    if-eqz v6, :cond_d

    .line 801
    const/4 v8, 0x1

    if-ne v6, v8, :cond_c

    const/4 v8, 0x1

    :goto_7
    iput-boolean v8, v5, Lcom/android/email/activity/MessageListItem;->mRead:Z

    .line 808
    .end local v6           #localRead:I
    :goto_8
    const/4 v8, 0x7

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_11

    const/4 v8, 0x1

    :goto_9
    iput-boolean v8, v5, Lcom/android/email/activity/MessageListItem;->mIsFavorite:Z

    .line 810
    const/16 v8, 0xd

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v5, Lcom/android/email/activity/MessageListItem;->mFollowUpFlagStatus:I

    .line 812
    const/16 v8, 0xc

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v5, Lcom/android/email/activity/MessageListItem;->mPriority:I

    .line 813
    const/16 v8, 0x11

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v5, Lcom/android/email/activity/MessageListItem;->mLastVerb:I

    .line 816
    const/16 v8, 0x13

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v5, Lcom/android/email/activity/MessageListItem;->mConvThreadId:I

    .line 817
    const/16 v8, 0x12

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/email/activity/MessageListItem;->mConvId:Ljava/lang/String;

    .line 818
    const/16 v8, 0x14

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v5, Lcom/android/email/activity/MessageListItem;->mFlagReadConv:I

    .line 819
    const/16 v8, 0x15

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v5, Lcom/android/email/activity/MessageListItem;->mFlagSetFFConv:I

    .line 820
    const/16 v8, 0x16

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v5, Lcom/android/email/activity/MessageListItem;->mFlagComFFConv:I

    .line 822
    const/16 v8, 0xf

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    and-int/lit16 v8, v8, 0x100

    const/16 v9, 0x100

    if-ne v8, v9, :cond_12

    const/4 v8, 0x1

    :goto_a
    iput-boolean v8, v5, Lcom/android/email/activity/MessageListItem;->isSms:Z

    .line 823
    const/16 v8, 0xf

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    and-int/lit16 v8, v8, 0x200

    const/16 v9, 0x200

    if-ne v8, v9, :cond_13

    const/4 v8, 0x1

    :goto_b
    iput-boolean v8, v5, Lcom/android/email/activity/MessageListItem;->isVoiceMail:Z

    .line 824
    const/16 v8, 0xe

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_14

    const/4 v8, 0x1

    :goto_c
    iput-boolean v8, v5, Lcom/android/email/activity/MessageListItem;->isSigned:Z

    .line 825
    const/16 v8, 0xe

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_15

    const/4 v8, 0x1

    :goto_d
    iput-boolean v8, v5, Lcom/android/email/activity/MessageListItem;->isEncrypted:Z

    .line 827
    const/16 v8, 0xb

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_16

    const/4 v8, 0x1

    :goto_e
    iput-boolean v8, v5, Lcom/android/email/activity/MessageListItem;->mHasInvite:Z

    .line 828
    const/16 v8, 0x8

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_17

    const/4 v8, 0x1

    :goto_f
    iput-boolean v8, v5, Lcom/android/email/activity/MessageListItem;->mHasAttachment:Z

    .line 829
    const/4 v8, 0x5

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v5, Lcom/android/email/activity/MessageListItem;->mTimestamp:J

    .line 830
    const/16 v8, 0x19

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/email/activity/MessageListItem;->mSnippet:Ljava/lang/String;

    .line 833
    const/16 v8, 0x1a

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_18

    const/4 v8, 0x1

    :goto_10
    iput-boolean v8, v5, Lcom/android/email/activity/MessageListItem;->mHasReplyIcon:Z

    .line 836
    const/16 v8, 0x1b

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 837
    .local v4, irmTemplate:Ljava/lang/String;
    if-eqz v4, :cond_19

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_19

    .line 838
    const/4 v8, 0x1

    iput-boolean v8, v5, Lcom/android/email/activity/MessageListItem;->mHasIrm:Z

    .line 843
    :goto_11
    const/16 v8, 0x1c

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/email/activity/MessageListItem;->mServerId:Ljava/lang/String;

    .line 845
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getTopLineMode()I

    move-result v8

    if-nez v8, :cond_1b

    .line 846
    const/4 v8, 0x3

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/email/activity/MessageListItem;->mSubText:Ljava/lang/String;

    .line 848
    iget-boolean v8, v5, Lcom/android/email/activity/MessageListItem;->isSms:Z

    if-eqz v8, :cond_1a

    .line 849
    const/16 v8, 0x19

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/email/activity/MessageListItem;->mMainText:Ljava/lang/String;

    .line 861
    :goto_12
    const/16 v8, 0x17

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/email/activity/MessageListItem;->mAccountSchema:Ljava/lang/String;

    .line 862
    const/16 v8, 0x18

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v5, Lcom/android/email/activity/MessageListItem;->mMailboxType:I

    .line 863
    iget-boolean v8, p0, Lcom/android/email/activity/MessagesAdapter;->mShowColorChips:Z

    if-eqz v8, :cond_1d

    iget-object v8, p0, Lcom/android/email/activity/MessagesAdapter;->mResourceHelper:Lcom/android/email/ResourceHelper;

    invoke-virtual {v8, v1, v2}, Lcom/android/email/ResourceHelper;->getAccountColorNinePatch(J)Landroid/graphics/NinePatch;

    move-result-object v8

    :goto_13
    iput-object v8, v5, Lcom/android/email/activity/MessageListItem;->mColorChipBitmap:Landroid/graphics/NinePatch;

    .line 865
    iget v8, p0, Lcom/android/email/activity/MessagesAdapter;->mfontSize:I

    iput v8, v5, Lcom/android/email/activity/MessageListItem;->mfontSize:I

    .line 866
    iget v8, p0, Lcom/android/email/activity/MessagesAdapter;->mPreviewLineSize:I

    iput v8, v5, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    .line 867
    iget v8, v5, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    iget v9, p0, Lcom/android/email/activity/MessagesAdapter;->mColor:I

    if-ne v8, v9, :cond_1e

    const/4 v8, 0x0

    :goto_14
    iput-boolean v8, v5, Lcom/android/email/activity/MessageListItem;->mIsBgColorChanged:Z

    .line 868
    iget v8, p0, Lcom/android/email/activity/MessagesAdapter;->mColor:I

    iput v8, v5, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    .line 869
    iget-boolean v8, p0, Lcom/android/email/activity/MessagesAdapter;->mCheckboxDisabled:Z

    iput-boolean v8, v5, Lcom/android/email/activity/MessageListItem;->mCheckboxDisabled:Z

    .line 870
    iget v8, p0, Lcom/android/email/activity/MessagesAdapter;->mPosition:I

    iput v8, v5, Lcom/android/email/activity/MessageListItem;->mPosition:I

    .line 871
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSortType()I

    move-result v8

    const/4 v9, 0x7

    if-ne v8, v9, :cond_1

    .line 872
    const/16 v8, 0x1e

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v5, Lcom/android/email/activity/MessageListItem;->mChildCount:I

    .line 873
    const/16 v8, 0x1f

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v5, Lcom/android/email/activity/MessageListItem;->mChildIndex:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 876
    .end local v1           #accountId:J
    .end local v4           #irmTemplate:Ljava/lang/String;
    .end local v5           #itemView:Lcom/android/email/activity/MessageListItem;
    :catch_0
    move-exception v3

    .line 877
    .local v3, e:Ljava/lang/Exception;
    const-string v8, "MessageAdapter"

    const-string v9, "Exception: MessageListAdapter.bindView() \n"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 772
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v5       #itemView:Lcom/android/email/activity/MessageListItem;
    .restart local v7       #nextAdapterPosition:I
    :cond_9
    const/4 v8, 0x1

    :try_start_1
    iput-boolean v8, v5, Lcom/android/email/activity/MessageListItem;->mHasDivider:Z

    goto/16 :goto_5

    .line 781
    :cond_a
    const/4 v8, 0x1

    iput-boolean v8, v5, Lcom/android/email/activity/MessageListItem;->mNeedMorePadding:Z

    goto/16 :goto_6

    .line 785
    .end local v7           #nextAdapterPosition:I
    :cond_b
    const/4 v8, 0x1

    iput-boolean v8, v5, Lcom/android/email/activity/MessageListItem;->mHasDivider:Z

    .line 786
    const/4 v8, 0x0

    iput-boolean v8, v5, Lcom/android/email/activity/MessageListItem;->mNeedMorePadding:Z

    goto/16 :goto_6

    .line 801
    .restart local v1       #accountId:J
    .restart local v6       #localRead:I
    :cond_c
    const/4 v8, 0x0

    goto/16 :goto_7

    .line 803
    :cond_d
    const/4 v8, 0x6

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_e

    const/4 v8, 0x1

    :goto_15
    iput-boolean v8, v5, Lcom/android/email/activity/MessageListItem;->mRead:Z

    goto/16 :goto_8

    :cond_e
    const/4 v8, 0x0

    goto :goto_15

    .line 806
    .end local v6           #localRead:I
    :cond_f
    const/4 v8, 0x6

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_10

    const/4 v8, 0x1

    :goto_16
    iput-boolean v8, v5, Lcom/android/email/activity/MessageListItem;->mRead:Z

    goto/16 :goto_8

    :cond_10
    const/4 v8, 0x0

    goto :goto_16

    .line 808
    :cond_11
    const/4 v8, 0x0

    goto/16 :goto_9

    .line 822
    :cond_12
    const/4 v8, 0x0

    goto/16 :goto_a

    .line 823
    :cond_13
    const/4 v8, 0x0

    goto/16 :goto_b

    .line 824
    :cond_14
    const/4 v8, 0x0

    goto/16 :goto_c

    .line 825
    :cond_15
    const/4 v8, 0x0

    goto/16 :goto_d

    .line 827
    :cond_16
    const/4 v8, 0x0

    goto/16 :goto_e

    .line 828
    :cond_17
    const/4 v8, 0x0

    goto/16 :goto_f

    .line 833
    :cond_18
    const/4 v8, 0x0

    goto/16 :goto_10

    .line 840
    .restart local v4       #irmTemplate:Ljava/lang/String;
    :cond_19
    const/4 v8, 0x0

    iput-boolean v8, v5, Lcom/android/email/activity/MessageListItem;->mHasIrm:Z

    goto/16 :goto_11

    .line 851
    :cond_1a
    const/4 v8, 0x4

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/email/activity/MessageListItem;->mMainText:Ljava/lang/String;

    goto/16 :goto_12

    .line 853
    :cond_1b
    const/4 v8, 0x3

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/email/activity/MessageListItem;->mMainText:Ljava/lang/String;

    .line 855
    iget-boolean v8, v5, Lcom/android/email/activity/MessageListItem;->isSms:Z

    if-eqz v8, :cond_1c

    .line 856
    const/16 v8, 0x19

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/email/activity/MessageListItem;->mSubText:Ljava/lang/String;

    goto/16 :goto_12

    .line 858
    :cond_1c
    const/4 v8, 0x4

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/email/activity/MessageListItem;->mSubText:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_12

    .line 863
    :cond_1d
    const/4 v8, 0x0

    goto/16 :goto_13

    .line 867
    :cond_1e
    const/4 v8, 0x1

    goto/16 :goto_14
.end method

.method public clearBlockCounter()V
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mReplyBlockSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 460
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mReplyAllBlockSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 461
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mForwardBlockSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 462
    return-void
.end method

.method public compareCount(I)Z
    .locals 4
    .parameter "totalCount"

    .prologue
    const/4 v0, 0x1

    .line 485
    const-string v1, "MessagesAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sListItemCountNew : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/email/activity/MessagesAdapter;->sListItemCountNew:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " totalCount : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    sget v1, Lcom/android/email/activity/MessagesAdapter;->sListItemCountNew:I

    if-ge v1, v0, :cond_0

    if-lez p1, :cond_0

    .line 489
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public expandOrShinkListItemAll(III)V
    .locals 0
    .parameter "expandFactor"
    .parameter "shrinkFactor"
    .parameter "factor"

    .prologue
    .line 934
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MessagesAdapter;->changeSubtitleStateAll(III)V

    .line 935
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 654
    sget v0, Lcom/android/email/activity/MessagesAdapter;->sListItemCount:I

    sget v1, Lcom/android/email/activity/MessagesAdapter;->sSubtitleCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getFirstListItem()Landroid/view/View;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mFirstListItem:Landroid/view/View;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 6
    .parameter "position"

    .prologue
    .line 607
    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 608
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 609
    :cond_0
    const-string v4, "MessagesAdapter"

    const-string v5, "invalid cursor in getItemId()"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    const-wide/16 v2, 0x0

    .line 626
    :goto_0
    return-wide v2

    .line 612
    :cond_1
    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter;->mContext:Landroid/content/Context;

    if-nez v4, :cond_2

    .line 613
    const-string v4, "MessagesAdapter"

    const-string v5, "context is null in getItemId()"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :cond_2
    sget-boolean v4, Lcom/android/email/activity/MessageListFragment;->mResumed:Z

    if-nez v4, :cond_3

    .line 617
    const-string v4, "MessagesAdapter"

    const-string v5, "activity is hidden in getItemId()"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :cond_3
    const-wide/16 v2, 0x0

    .line 621
    .local v2, returnId:J
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->getItemId(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 622
    :catch_0
    move-exception v1

    .line 623
    .local v1, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/android/email/activity/MessageListFragment;->setLoadReserved()V

    .line 624
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getListItemCountNew()I
    .locals 1

    .prologue
    .line 526
    sget v0, Lcom/android/email/activity/MessagesAdapter;->sListItemCountNew:I

    return v0
.end method

.method public getRealPositionForCurrentId(J)I
    .locals 6
    .parameter "Id"

    .prologue
    const/4 v3, 0x0

    .line 639
    const/4 v0, 0x0

    .line 640
    .local v0, adapterPosition:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 641
    sget-object v2, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapter:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MessagesAdapter$Position;

    iget v0, v2, Lcom/android/email/activity/MessagesAdapter$Position;->listPosition:I

    .line 642
    if-gez v0, :cond_1

    .line 640
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 644
    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/MessagesAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 645
    iget-object v2, p0, Lcom/android/email/activity/MessagesAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    cmp-long v2, v4, p1

    if-nez v2, :cond_0

    .line 648
    .end local v1           #i:I
    :goto_1
    return v1

    .restart local v1       #i:I
    :cond_2
    move v1, v3

    goto :goto_1
.end method

.method public getSelectedSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedSet:Ljava/util/HashSet;

    return-object v0
.end method

.method public getSelectedTitleSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedTitleSet:Ljava/util/HashSet;

    return-object v0
.end method

.method public getTotalCount()I
    .locals 1

    .prologue
    .line 522
    sget v0, Lcom/android/email/activity/MessagesAdapter;->sListItemCount:I

    return v0
.end method

.method public getUnreadCount()I
    .locals 1

    .prologue
    .line 518
    sget v0, Lcom/android/email/activity/MessagesAdapter;->sUnreadListItemCount:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x8

    .line 659
    .line 661
    :try_start_0
    iput p1, p0, Lcom/android/email/activity/MessagesAdapter;->mPosition:I

    .line 662
    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapter:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessagesAdapter$Position;

    iget v0, v0, Lcom/android/email/activity/MessagesAdapter$Position;->listPosition:I

    iput v0, p0, Lcom/android/email/activity/MessagesAdapter;->mAdapterPosition:I

    .line 663
    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapter:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessagesAdapter$Position;

    iget v0, v0, Lcom/android/email/activity/MessagesAdapter$Position;->parentIndex:I

    iput v0, p0, Lcom/android/email/activity/MessagesAdapter;->mParentIndex:I

    .line 665
    iget v0, p0, Lcom/android/email/activity/MessagesAdapter;->mAdapterPosition:I

    if-gez v0, :cond_1

    .line 666
    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapter:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessagesAdapter$Position;

    iget v0, v0, Lcom/android/email/activity/MessagesAdapter$Position;->listPosition:I

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 672
    :goto_0
    iget v0, p0, Lcom/android/email/activity/MessagesAdapter;->mAdapterPosition:I

    if-ltz v0, :cond_2

    .line 673
    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sHideViewPosition:Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 675
    new-instance v0, Lcom/android/email/activity/MessageListNullItem;

    iget-object v1, p0, Lcom/android/email/activity/MessagesAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageListNullItem;-><init>(Landroid/content/Context;)V

    .line 676
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 714
    :cond_0
    :goto_1
    return-object v0

    .line 668
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iget v1, p0, Lcom/android/email/activity/MessagesAdapter;->mAdapterPosition:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 706
    :catch_0
    move-exception v0

    .line 707
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 708
    new-instance v0, Lcom/android/email/activity/MessageListItem;

    iget-object v1, p0, Lcom/android/email/activity/MessagesAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageListItem;-><init>(Landroid/content/Context;)V

    .line 709
    invoke-virtual {v0, v3}, Lcom/android/email/activity/MessageListItem;->setVisibility(I)V

    .line 710
    sget-object v1, Lcom/android/email/activity/MessagesAdapter;->sCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 711
    sget-object v1, Lcom/android/email/activity/MessagesAdapter;->sCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessagesAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_1

    .line 681
    :cond_2
    if-eqz p2, :cond_3

    :try_start_1
    sget-boolean v0, Lcom/android/email/activity/MessagesAdapter;->bFontChanged:Z

    if-eqz v0, :cond_4

    .line 683
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3}, Lcom/android/email/activity/MessagesAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 701
    :goto_2
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/email/activity/MessagesAdapter;->bFontChanged:Z

    .line 702
    iget-object v1, p0, Lcom/android/email/activity/MessagesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/email/activity/MessagesAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 703
    if-nez p1, :cond_0

    .line 704
    iput-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mFirstListItem:Landroid/view/View;

    goto :goto_1

    .line 685
    :cond_4
    iget v0, p0, Lcom/android/email/activity/MessagesAdapter;->mAdapterPosition:I

    if-gez v0, :cond_6

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/email/activity/MessageListSubTitleItem;

    if-ne v0, v1, :cond_5

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSortType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_6

    .line 691
    :cond_5
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3}, Lcom/android/email/activity/MessagesAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_2

    .line 692
    :cond_6
    iget v0, p0, Lcom/android/email/activity/MessagesAdapter;->mAdapterPosition:I

    if-ltz v0, :cond_7

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/email/activity/MessageListItem;

    if-eq v0, v1, :cond_7

    .line 696
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3}, Lcom/android/email/activity/MessagesAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_2

    :cond_7
    move-object v0, p2

    .line 698
    goto :goto_2
.end method

.method public initAdapter()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 537
    sput v0, Lcom/android/email/activity/MessagesAdapter;->sSubtitleCount:I

    .line 538
    sput v0, Lcom/android/email/activity/MessagesAdapter;->sListItemCount:I

    .line 539
    sput v0, Lcom/android/email/activity/MessagesAdapter;->sUnreadListItemCount:I

    .line 540
    sput v0, Lcom/android/email/activity/MessagesAdapter;->sSubtitleCountNew:I

    .line 541
    sput v0, Lcom/android/email/activity/MessagesAdapter;->sListItemCountNew:I

    .line 542
    sput v0, Lcom/android/email/activity/MessagesAdapter;->sUnreadListItemCountNew:I

    .line 544
    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapter:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 545
    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapter:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 546
    sput-object v1, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapter:Ljava/util/ArrayList;

    .line 548
    :cond_0
    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 549
    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 550
    sput-object v1, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    .line 552
    :cond_1
    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sHideViewPosition:Ljava/util/HashSet;

    if-eqz v0, :cond_2

    .line 553
    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sHideViewPosition:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 554
    sput-object v1, Lcom/android/email/activity/MessagesAdapter;->sHideViewPosition:Ljava/util/HashSet;

    .line 556
    :cond_2
    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapterNew:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 557
    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapterNew:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 558
    sput-object v1, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapterNew:Ljava/util/ArrayList;

    .line 560
    :cond_3
    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitleNew:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 561
    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitleNew:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 562
    sput-object v1, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitleNew:Ljava/util/ArrayList;

    .line 564
    :cond_4
    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sHideViewPositionNew:Ljava/util/HashSet;

    if-eqz v0, :cond_5

    .line 565
    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sHideViewPositionNew:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 566
    sput-object v1, Lcom/android/email/activity/MessagesAdapter;->sHideViewPositionNew:Ljava/util/HashSet;

    .line 568
    :cond_5
    return-void
.end method

.method public isForwardBlock()Z
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mForwardBlockSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReplyAllBlock()Z
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mReplyAllBlockSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReplyBlock()Z
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mReplyBlockSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelected(Lcom/android/email/activity/MessageListItem;)Z
    .locals 3
    .parameter "itemView"

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedSet:Ljava/util/HashSet;

    iget-wide v1, p1, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSelected(Ljava/lang/String;)Z
    .locals 1
    .parameter "convId"

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mSelectedTitleSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public loadState(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    .line 424
    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v2

    .line 425
    .local v2, checkedset:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedTitleSet()Ljava/util/Set;

    move-result-object v1

    .line 426
    .local v1, checkedStrSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v8, "com.android.email.activity.MessagesAdapter.checkedItems"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .local v0, arr$:[J
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v6, :cond_0

    aget-wide v4, v0, v3

    .line 427
    .local v4, l:J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 426
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 429
    .end local v4           #l:J
    :cond_0
    const-string v8, "com.android.email.activity.MessagesAdapter.subTitlecheckedItems"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v6, :cond_1

    aget-object v7, v0, v3

    .line 430
    .local v7, s:Ljava/lang/String;
    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 429
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 432
    .end local v7           #s:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 886
    :try_start_0
    iget v2, p0, Lcom/android/email/activity/MessagesAdapter;->mAdapterPosition:I

    if-gez v2, :cond_0

    .line 887
    new-instance v1, Lcom/android/email/activity/MessageListSubTitleItem;

    invoke-direct {v1, p1}, Lcom/android/email/activity/MessageListSubTitleItem;-><init>(Landroid/content/Context;)V

    .line 888
    .local v1, item:Lcom/android/email/activity/MessageListSubTitleItem;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageListSubTitleItem;->setVisibility(I)V

    .line 898
    .end local v1           #item:Lcom/android/email/activity/MessageListSubTitleItem;
    :goto_0
    return-object v1

    .line 891
    :cond_0
    new-instance v1, Lcom/android/email/activity/MessageListItem;

    invoke-direct {v1, p1}, Lcom/android/email/activity/MessageListItem;-><init>(Landroid/content/Context;)V

    .line 892
    .local v1, item:Lcom/android/email/activity/MessageListItem;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageListItem;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 895
    .end local v1           #item:Lcom/android/email/activity/MessageListItem;
    :catch_0
    move-exception v0

    .line 896
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "MessageAdapter"

    const-string v3, "Exception: MessageListAdapter.newView() \n"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 898
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 10
    .parameter "outState"

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v3

    .line 406
    .local v3, checkedset:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedTitleSet()Ljava/util/Set;

    move-result-object v1

    .line 407
    .local v1, checkedStrSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v8

    new-array v2, v8, [J

    .line 408
    .local v2, checkedarray:[J
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v8

    new-array v0, v8, [Ljava/lang/String;

    .line 409
    .local v0, checkedStrArray:[Ljava/lang/String;
    const/4 v4, 0x0

    .line 410
    .local v4, i:I
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 411
    .local v6, l:Ljava/lang/Long;
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    aput-wide v8, v2, v4

    .line 412
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 414
    .end local v6           #l:Ljava/lang/Long;
    :cond_0
    const/4 v4, 0x0

    .line 415
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 416
    .local v7, s:Ljava/lang/String;
    aput-object v7, v0, v4

    .line 417
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 419
    .end local v7           #s:Ljava/lang/String;
    :cond_1
    const-string v8, "com.android.email.activity.MessagesAdapter.checkedItems"

    invoke-virtual {p1, v8, v2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 420
    const-string v8, "com.android.email.activity.MessagesAdapter.subTitlecheckedItems"

    invoke-virtual {p1, v8, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 421
    return-void
.end method

.method public setAdapterInfo()V
    .locals 4

    .prologue
    .line 578
    sget v3, Lcom/android/email/activity/MessagesAdapter;->sListItemCountNew:I

    sput v3, Lcom/android/email/activity/MessagesAdapter;->sListItemCount:I

    .line 579
    sget v3, Lcom/android/email/activity/MessagesAdapter;->sUnreadListItemCountNew:I

    sput v3, Lcom/android/email/activity/MessagesAdapter;->sUnreadListItemCount:I

    .line 580
    sget v3, Lcom/android/email/activity/MessagesAdapter;->sSubtitleCountNew:I

    sput v3, Lcom/android/email/activity/MessagesAdapter;->sSubtitleCount:I

    .line 581
    sget-object v1, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    .line 582
    .local v1, tempListForSubTitle:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/MessagesAdapter$SubTitle;>;"
    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sHideViewPosition:Ljava/util/HashSet;

    .line 583
    .local v0, tempHideViewPosition:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    sget-object v2, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapter:Ljava/util/ArrayList;

    .line 585
    .local v2, tempListPositionForAdapter:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/MessagesAdapter$Position;>;"
    sget-object v3, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitleNew:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 586
    sget-object v3, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitleNew:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    sput-object v3, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    .line 587
    sget-object v3, Lcom/android/email/activity/MessagesAdapter;->sHideViewPositionNew:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    sput-object v3, Lcom/android/email/activity/MessagesAdapter;->sHideViewPosition:Ljava/util/HashSet;

    .line 588
    sget-object v3, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapterNew:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    sput-object v3, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapter:Ljava/util/ArrayList;

    .line 595
    :goto_0
    if-eqz v1, :cond_0

    .line 596
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 597
    const/4 v1, 0x0

    .line 598
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 599
    const/4 v0, 0x0

    .line 600
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 601
    const/4 v2, 0x0

    .line 603
    :cond_0
    return-void

    .line 590
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    .line 591
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    sput-object v3, Lcom/android/email/activity/MessagesAdapter;->sHideViewPosition:Ljava/util/HashSet;

    .line 592
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/android/email/activity/MessagesAdapter;->sListPositionForAdapter:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 924
    iput p1, p0, Lcom/android/email/activity/MessagesAdapter;->mColor:I

    .line 926
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->notifyDataSetInvalidated()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 930
    :goto_0
    return-void

    .line 927
    :catch_0
    move-exception v0

    .line 928
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setCheckboxStatus(Z)V
    .locals 0
    .parameter "bool"

    .prologue
    .line 571
    iput-boolean p1, p0, Lcom/android/email/activity/MessagesAdapter;->mCheckboxDisabled:Z

    .line 572
    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->notifyDataSetChanged()V

    .line 573
    return-void
.end method

.method public setListItemSize(I)V
    .locals 2
    .parameter "fontSize"

    .prologue
    .line 903
    iget v1, p0, Lcom/android/email/activity/MessagesAdapter;->mfontSize:I

    if-eq v1, p1, :cond_0

    .line 904
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/email/activity/MessagesAdapter;->bFontChanged:Z

    .line 906
    :cond_0
    iput p1, p0, Lcom/android/email/activity/MessagesAdapter;->mfontSize:I

    .line 908
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->notifyDataSetInvalidated()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 912
    :goto_0
    return-void

    .line 909
    :catch_0
    move-exception v0

    .line 910
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setPreviewLineSize(I)V
    .locals 1
    .parameter "previewLineSize"

    .prologue
    .line 915
    iput p1, p0, Lcom/android/email/activity/MessagesAdapter;->mPreviewLineSize:I

    .line 917
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter;->notifyDataSetInvalidated()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 921
    :goto_0
    return-void

    .line 918
    :catch_0
    move-exception v0

    .line 919
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setShowColorChips(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 438
    iput-boolean p1, p0, Lcom/android/email/activity/MessagesAdapter;->mShowColorChips:Z

    .line 439
    return-void
.end method

.method public toggleMultiSelected(IZ)V
    .locals 0
    .parameter "subTitleIndex"
    .parameter "isChecked"

    .prologue
    .line 985
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessagesAdapter;->updateMultiSelected(IZ)V

    .line 986
    return-void
.end method

.method public toggleSelected(Lcom/android/email/activity/MessageListItem;I)V
    .locals 1
    .parameter "itemView"
    .parameter "parentIndex"

    .prologue
    .line 1067
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessagesAdapter;->isSelected(Lcom/android/email/activity/MessageListItem;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v0, p2}, Lcom/android/email/activity/MessagesAdapter;->updateSelected(Lcom/android/email/activity/MessageListItem;ZI)V

    .line 1068
    return-void

    .line 1067
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unCheckAllSubTitleCheckBox()V
    .locals 4

    .prologue
    .line 494
    sget-object v2, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 495
    sget-object v2, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 496
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 497
    sget-object v2, Lcom/android/email/activity/MessagesAdapter;->sListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsChecked:Z

    .line 496
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 500
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_0
    return-void
.end method

.method public updateArrow(I)V
    .locals 0
    .parameter "subTitleIndex"

    .prologue
    .line 1037
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessagesAdapter;->changeSubtitleState(I)V

    .line 1038
    return-void
.end method

.method public updateFavorite(Lcom/android/email/activity/MessageListItem;Z)V
    .locals 4
    .parameter "itemView"
    .parameter "newFavorite"

    .prologue
    .line 1133
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessagesAdapter;->changeFavoriteIcon(Lcom/android/email/activity/MessageListItem;Z)V

    .line 1134
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    if-eqz v0, :cond_0

    .line 1135
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/email/activity/MessagesAdapter$Callback;->onAdapterFavoriteChanged(Lcom/android/email/activity/MessageListItem;Z)V

    .line 1138
    :cond_0
    if-nez p2, :cond_1

    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxId()J

    move-result-wide v0

    const-wide/16 v2, -0x4

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1139
    const/4 v0, 0x0

    iget v1, p1, Lcom/android/email/activity/MessageListItem;->mParentIndex:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/activity/MessagesAdapter;->updateSelected(Lcom/android/email/activity/MessageListItem;ZI)V

    .line 1141
    :cond_1
    return-void
.end method

.method public updateFollowUpFlag(Lcom/android/email/activity/MessageListItem;I)V
    .locals 1
    .parameter "itemView"
    .parameter "newFollowUpFlag"

    .prologue
    .line 1156
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessagesAdapter;->changeFollowUpFlagIcon(Lcom/android/email/activity/MessageListItem;I)V

    .line 1157
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    if-eqz v0, :cond_0

    .line 1158
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/email/activity/MessagesAdapter$Callback;->onAdapterFollowUpChanged(Lcom/android/email/activity/MessageListItem;I)V

    .line 1160
    :cond_0
    return-void
.end method
