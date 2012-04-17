.class Lcom/android/email/activity/MailboxesAdapter;
.super Landroid/widget/CursorAdapter;
.source "MailboxesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MailboxesAdapter$1;,
        Lcom/android/email/activity/MailboxesAdapter$CombinedMailboxesLoader;,
        Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader;,
        Lcom/android/email/activity/MailboxesAdapter$EmptyCallback;,
        Lcom/android/email/activity/MailboxesAdapter$Callback;,
        Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;
    }
.end annotation


# static fields
.field static final HIERARCHY_PROJECTION:[Ljava/lang/String;

.field static final PROJECTION:[Ljava/lang/String;

.field private static mParentSelectedSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static mSelectedSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static needToChangeMailbox:Z

.field private static sAllMailboxCursor:Landroid/database/Cursor;

.field private static sEnableUpdate:Z

.field private static sExpandItemMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;",
            ">;"
        }
    .end annotation
.end field

.field private static sExpandItemMapNew:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;",
            ">;"
        }
    .end annotation
.end field

.field private static sExpandItemMapPrev:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;",
            ">;"
        }
    .end annotation
.end field

.field private static sExpandItemMapPrevNew:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;",
            ">;"
        }
    .end annotation
.end field

.field private static sInit:Z

.field private static sLeftPane:Landroid/view/View;

.field private static sListItemAllMargin:I

.field private static sListItemCountAllMargin:I

.field private static sListItemHierarchyLeftMarginFactor:I

.field private static sListItemSelectionMargin:I

.field private static sMailboxCursor:Landroid/database/Cursor;

.field private static sMailboxDisableNameColorDarkTheme:I

.field private static sMailboxDisableNameColorWhiteTheme:I

.field private static sMailboxListNameLand:I

.field private static sMailboxListNamePort:I

.field private static sMailboxNameColorDarkTheme:I

.field private static sMailboxNameColorWhiteTheme:I

.field private static sMailboxNameSelectedColorDarkTheme:Landroid/content/res/ColorStateList;

.field private static sMailboxNameSelectedColorWhiteTheme:Landroid/content/res/ColorStateList;

.field private static sSelectedMailboxId:J


# instance fields
.field private isFolderOperation:Z

.field private mBackgroundColor:I

.field private mCallback:Lcom/android/email/activity/MailboxesAdapter$Callback;

.field private final mContext:Landroid/content/Context;

.field private mCurrentOrientation:I

.field private mDeleteMode:Z

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mListViewSize:I

.field private mMailboxDisableNameColor:I

.field private mMailboxNameColor:I

.field private mMailboxNameSelectedColor:Landroid/content/res/ColorStateList;

.field private final mMode:I

.field private final mResourceHelper:Lcom/android/email/ResourceHelper;

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

    .line 115
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_id AS org_mailbox_id"

    aput-object v1, v0, v4

    const-string v1, "displayName"

    aput-object v1, v0, v5

    const-string v1, "type"

    aput-object v1, v0, v6

    const-string v1, "unreadCount"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "messageCount"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "0 AS row_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "accountKey"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "flagNoSelect"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "parentKey"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "serverId"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "delimiter"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/MailboxesAdapter;->PROJECTION:[Ljava/lang/String;

    .line 123
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_id AS org_mailbox_id"

    aput-object v1, v0, v4

    const-string v1, "displayName"

    aput-object v1, v0, v5

    const-string v1, "type"

    aput-object v1, v0, v6

    const-string v1, "unreadCount"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "messageCount"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "0 AS row_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "accountKey"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "flagNoSelect"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "parentKey"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "hierarchyLevel"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "hasChild"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/MailboxesAdapter;->HIERARCHY_PROJECTION:[Ljava/lang/String;

    .line 188
    sput-boolean v4, Lcom/android/email/activity/MailboxesAdapter;->sEnableUpdate:Z

    .line 190
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/email/activity/MailboxesAdapter;->mSelectedSet:Ljava/util/HashSet;

    .line 192
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/email/activity/MailboxesAdapter;->mParentSelectedSet:Ljava/util/HashSet;

    .line 198
    sput-boolean v3, Lcom/android/email/activity/MailboxesAdapter;->needToChangeMailbox:Z

    .line 204
    sput v3, Lcom/android/email/activity/MailboxesAdapter;->sMailboxListNamePort:I

    .line 206
    sput v3, Lcom/android/email/activity/MailboxesAdapter;->sMailboxListNameLand:I

    .line 208
    sput v3, Lcom/android/email/activity/MailboxesAdapter;->sListItemSelectionMargin:I

    .line 210
    sput v3, Lcom/android/email/activity/MailboxesAdapter;->sListItemAllMargin:I

    .line 212
    sput v3, Lcom/android/email/activity/MailboxesAdapter;->sListItemCountAllMargin:I

    .line 214
    sput v3, Lcom/android/email/activity/MailboxesAdapter;->sListItemHierarchyLeftMarginFactor:I

    .line 216
    sput-boolean v3, Lcom/android/email/activity/MailboxesAdapter;->sInit:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/email/activity/MailboxesAdapter$Callback;)V
    .locals 4
    .parameter "context"
    .parameter "mode"
    .parameter "callback"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 296
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 202
    iput v2, p0, Lcom/android/email/activity/MailboxesAdapter;->mListViewSize:I

    .line 228
    iput v3, p0, Lcom/android/email/activity/MailboxesAdapter;->mfontSize:I

    .line 234
    iput-boolean v2, p0, Lcom/android/email/activity/MailboxesAdapter;->mDeleteMode:Z

    .line 273
    iput-boolean v2, p0, Lcom/android/email/activity/MailboxesAdapter;->isFolderOperation:Z

    .line 297
    iput-object p1, p0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    .line 298
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/email/activity/MailboxesAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 299
    iput p2, p0, Lcom/android/email/activity/MailboxesAdapter;->mMode:I

    .line 300
    iput-object p3, p0, Lcom/android/email/activity/MailboxesAdapter;->mCallback:Lcom/android/email/activity/MailboxesAdapter$Callback;

    .line 301
    iput-boolean v2, p0, Lcom/android/email/activity/MailboxesAdapter;->mDeleteMode:Z

    .line 302
    sget-object v1, Lcom/android/email/activity/MailboxesAdapter;->mSelectedSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 303
    sget-object v1, Lcom/android/email/activity/MailboxesAdapter;->mParentSelectedSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 304
    iget-object v1, p0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/ResourceHelper;->getInstance(Landroid/content/Context;)Lcom/android/email/ResourceHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MailboxesAdapter;->mResourceHelper:Lcom/android/email/ResourceHelper;

    .line 305
    sget-boolean v1, Lcom/android/email/activity/MailboxesAdapter;->sInit:Z

    if-nez v1, :cond_1

    .line 306
    iget-object v1, p0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MailboxesAdapter;->sMailboxListNamePort:I

    .line 308
    iget-object v1, p0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MailboxesAdapter;->sMailboxListNameLand:I

    .line 310
    iget-object v1, p0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MailboxesAdapter;->sListItemSelectionMargin:I

    .line 312
    iget-object v1, p0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MailboxesAdapter;->sListItemAllMargin:I

    .line 314
    iget-object v1, p0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MailboxesAdapter;->sListItemCountAllMargin:I

    .line 316
    iget-object v1, p0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MailboxesAdapter;->sListItemHierarchyLeftMarginFactor:I

    .line 320
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    .line 321
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapPrev:Ljava/util/HashMap;

    .line 322
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapNew:Ljava/util/HashMap;

    .line 323
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapPrevNew:Ljava/util/HashMap;

    .line 325
    iget-object v1, p0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MailboxesAdapter;->sMailboxNameColorWhiteTheme:I

    .line 329
    iget-object v1, p0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020227

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MailboxesAdapter;->sMailboxNameSelectedColorWhiteTheme:Landroid/content/res/ColorStateList;

    .line 334
    iget-object v1, p0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0053

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MailboxesAdapter;->sMailboxDisableNameColorWhiteTheme:I

    .line 336
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    iget-object v1, p0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0055

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MailboxesAdapter;->sMailboxNameColorDarkTheme:I

    .line 342
    iget-object v1, p0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020226

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MailboxesAdapter;->sMailboxNameSelectedColorDarkTheme:Landroid/content/res/ColorStateList;

    .line 347
    iget-object v1, p0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b005a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MailboxesAdapter;->sMailboxDisableNameColorDarkTheme:I

    .line 350
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/email/activity/MailboxesAdapter;->sInit:Z

    .line 352
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v0

    .line 353
    .local v0, settingValue:Lcom/android/email/Preferences;
    iput v3, p0, Lcom/android/email/activity/MailboxesAdapter;->mfontSize:I

    .line 354
    iget v1, p0, Lcom/android/email/activity/MailboxesAdapter;->mfontSize:I

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MailboxesAdapter;->setListItemSize(I)V

    .line 355
    invoke-virtual {v0}, Lcom/android/email/Preferences;->getBGColor()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/MailboxesAdapter;->mBackgroundColor:I

    .line 356
    iget v1, p0, Lcom/android/email/activity/MailboxesAdapter;->mBackgroundColor:I

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MailboxesAdapter;->setBackgroundColor(I)V

    .line 357
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 66
    sget-boolean v0, Lcom/android/email/activity/MailboxesAdapter;->sEnableUpdate:Z

    return v0
.end method

.method static synthetic access$100()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapNew:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$102(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    sput-object p0, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapNew:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$200()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapPrevNew:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$202(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    sput-object p0, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapPrevNew:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$400()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$402(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    sput-object p0, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$500()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapPrev:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$502(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    sput-object p0, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapPrev:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$600()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->sMailboxCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$602(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    sput-object p0, Lcom/android/email/activity/MailboxesAdapter;->sMailboxCursor:Landroid/database/Cursor;

    return-object p0
.end method

.method static synthetic access$702(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    sput-object p0, Lcom/android/email/activity/MailboxesAdapter;->sAllMailboxCursor:Landroid/database/Cursor;

    return-object p0
.end method

.method private static addSummaryMailboxRow(Landroid/content/Context;Landroid/database/MatrixCursor;JIIZ)V
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "id"
    .parameter "type"
    .parameter "count"
    .parameter "showAlways"

    .prologue
    .line 1624
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-ltz v1, :cond_0

    .line 1625
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 1628
    :cond_0
    if-nez p6, :cond_1

    if-lez p5, :cond_5

    .line 1629
    :cond_1
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    .line 1630
    .local v0, row:Landroid/database/MatrixCursor$RowBuilder;
    const-wide v1, 0x7fffffffffffffffL

    add-long/2addr v1, p2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1632
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1633
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1634
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1635
    const-wide/16 v1, -0x4

    cmp-long v1, p2, v1

    if-eqz v1, :cond_2

    const-wide/16 v1, -0x2

    cmp-long v1, p2, v1

    if-nez v1, :cond_4

    .line 1636
    :cond_2
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1641
    :goto_0
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1642
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1648
    .end local v0           #row:Landroid/database/MatrixCursor$RowBuilder;
    :cond_3
    :goto_1
    return-void

    .line 1639
    .restart local v0       #row:Landroid/database/MatrixCursor$RowBuilder;
    :cond_4
    invoke-static {p0, p4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getUnreadCountByMailboxType(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_0

    .line 1644
    .end local v0           #row:Landroid/database/MatrixCursor$RowBuilder;
    :cond_5
    sget-wide v1, Lcom/android/email/activity/MailboxesAdapter;->sSelectedMailboxId:J

    cmp-long v1, p2, v1

    if-nez v1, :cond_3

    .line 1645
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/email/activity/MailboxesAdapter;->needToChangeMailbox:Z

    goto :goto_1
.end method

.method private bindViewMoveToTargetMode(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 1096
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 1097
    .local v0, t:Landroid/widget/TextView;
    invoke-static {p2, p3}, Lcom/android/email/activity/MailboxesAdapter;->getDisplayName(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1098
    return-void
.end method

.method private bindViewNormalMode(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 42
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 815
    invoke-static/range {p3 .. p3}, Lcom/android/email/activity/MailboxesAdapter;->isAccountRow(Landroid/database/Cursor;)Z

    move-result v22

    .line 817
    .local v22, isAccount:Z
    const/16 v38, 0x3

    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    .line 818
    .local v36, type:I
    const/16 v38, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 820
    .local v20, id:J
    const/16 v38, 0xb

    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 821
    .local v18, hasChild:I
    const/16 v38, 0xa

    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 822
    .local v19, hierarchyLevel:I
    const/16 v38, 0x9

    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    .line 823
    .local v30, parentKey:J
    const/16 v38, 0x8

    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 824
    .local v15, flagNoSelected:I
    const/16 v23, 0x0

    .local v23, isMailboxItemChecked:Z
    move-object/from16 v25, p1

    .line 825
    check-cast v25, Lcom/android/email/activity/MailboxListItem;

    .line 826
    .local v25, listItem:Lcom/android/email/activity/MailboxListItem;
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxListItem;->bindViewInit(Lcom/android/email/activity/MailboxesAdapter;)V

    .line 827
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/email/activity/MailboxListItem;->mMailboxType:Ljava/lang/Integer;

    .line 828
    move-wide/from16 v0, v20

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/android/email/activity/MailboxListItem;->mMailboxId:J

    .line 829
    move/from16 v0, v18

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/email/activity/MailboxListItem;->mHasChild:I

    .line 830
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/email/activity/MailboxListItem;->mAdapter:Lcom/android/email/activity/MailboxesAdapter;

    .line 831
    move-object/from16 v0, v25

    iput v15, v0, Lcom/android/email/activity/MailboxListItem;->mFlagNoSelected:I

    .line 832
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MailboxesAdapter;->mBackgroundColor:I

    move/from16 v38, v0

    move/from16 v0, v38

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/email/activity/MailboxListItem;->mBackgroundColor:I

    .line 838
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MailboxesAdapter;->mCurrentOrientation:I

    move/from16 v38, v0

    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_3

    .line 839
    sget v38, Lcom/android/email/activity/MailboxesAdapter;->sMailboxListNamePort:I

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/activity/MailboxesAdapter;->mListViewSize:I

    .line 843
    :goto_0
    sget-object v38, Lcom/android/email/activity/MailboxesAdapter;->sLeftPane:Landroid/view/View;

    if-eqz v38, :cond_0

    .line 844
    sget-object v38, Lcom/android/email/activity/MailboxesAdapter;->sLeftPane:Landroid/view/View;

    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getMeasuredWidth()I

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/activity/MailboxesAdapter;->mListViewSize:I

    .line 846
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MailboxesAdapter;->mListViewSize:I

    move/from16 v28, v0

    .line 857
    .local v28, mailboxNameWidth:I
    const/16 v38, 0x4

    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    .line 858
    .local v37, unReadCount:I
    const/16 v38, 0x5

    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    .line 872
    .local v35, totalCount:I
    const v38, 0x7f10015c

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 873
    .local v9, countView:Landroid/widget/TextView;
    const v38, 0x7f10015a

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    .line 876
    .local v7, countFrameLayout:Landroid/widget/FrameLayout;
    if-lez v37, :cond_5

    .line 877
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 879
    sget-wide v38, Lcom/android/email/activity/MailboxesAdapter;->sSelectedMailboxId:J

    cmp-long v38, v38, v20

    if-nez v38, :cond_4

    .line 880
    invoke-virtual {v9}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v38

    const/16 v39, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v9, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MailboxesAdapter;->mMailboxNameSelectedColor:Landroid/content/res/ColorStateList;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 886
    :goto_1
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    check-cast v26, Landroid/widget/LinearLayout$LayoutParams;

    .line 888
    .local v26, lp:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "("

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, ")"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 889
    .local v8, countStr:Ljava/lang/String;
    invoke-virtual {v9}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v8}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v38

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v34, v0

    .line 890
    .local v34, textSize:I
    sget v38, Lcom/android/email/activity/MailboxesAdapter;->sListItemCountAllMargin:I

    add-int v38, v38, v34

    move/from16 v0, v38

    move-object/from16 v1, v26

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 891
    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 892
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 893
    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v38, v0

    sub-int v28, v28, v38

    .line 900
    .end local v8           #countStr:Ljava/lang/String;
    .end local v26           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v34           #textSize:I
    :goto_2
    const v38, 0x7f100007

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 901
    .local v16, folderIcon:Landroid/widget/ImageView;
    const v38, 0x7f10015e

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/CheckBox;

    .line 902
    .local v24, itemCheckBox:Landroid/widget/CheckBox;
    const/16 v38, 0x1

    move/from16 v0, v18

    move/from16 v1, v38

    if-ne v0, v1, :cond_6

    sget-object v38, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_6

    sget-object v38, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;

    move-object/from16 v0, v38

    iget-boolean v0, v0, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    move/from16 v38, v0

    if-nez v38, :cond_6

    const/16 v33, 0x1

    .line 904
    .local v33, showPlusImage:Z
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/activity/MailboxesAdapter;->mDeleteMode:Z

    move/from16 v38, v0

    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_b

    if-eqz v24, :cond_b

    .line 905
    const/16 v38, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 906
    sget-object v38, Lcom/android/email/activity/MailboxesAdapter;->mSelectedSet:Ljava/util/HashSet;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v23

    .line 908
    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 910
    sget-object v38, Lcom/android/email/activity/MailboxesAdapter;->mSelectedSet:Ljava/util/HashSet;

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v38

    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_1

    sget-object v38, Lcom/android/email/activity/MailboxesAdapter;->mParentSelectedSet:Ljava/util/HashSet;

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v38

    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_7

    .line 912
    :cond_1
    sget-object v38, Lcom/android/email/activity/MailboxesAdapter;->mParentSelectedSet:Ljava/util/HashSet;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 913
    const/16 v38, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 914
    const/16 v38, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 933
    :cond_2
    :goto_4
    invoke-static/range {p2 .. p2}, Lcom/android/email/FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/FolderProperties;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v36

    move-wide/from16 v2, v20

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/FolderProperties;->getIcon(IJZ)Landroid/graphics/drawable/Drawable;

    move-result-object v38

    move-object/from16 v0, v16

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 936
    sget-object v38, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    if-eqz v38, :cond_c

    sget-object v38, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;

    move-object/from16 v0, v38

    iget-boolean v0, v0, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    move/from16 v38, v0

    if-eqz v38, :cond_c

    .line 937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f020095

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v38

    move-object/from16 v0, v16

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 943
    :goto_5
    move-object/from16 v0, v16

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/email/activity/MailboxListItem;->mFolderIcon:Landroid/widget/ImageView;

    .line 946
    sget v38, Lcom/android/email/activity/MailboxesAdapter;->sListItemHierarchyLeftMarginFactor:I

    mul-int v38, v38, v19

    add-int/lit8 v14, v38, 0xa

    .line 947
    .local v14, factor:I
    const v38, 0x7f100157

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 948
    .local v5, anymationView:Landroid/view/View;
    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v5, v14, v0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 949
    sub-int v28, v28, v14

    .line 950
    move-object/from16 v0, v25

    iput v14, v0, Lcom/android/email/activity/MailboxListItem;->mFactor:I

    .line 953
    const v38, 0x7f10015f

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 955
    .local v13, dragImpossibleIcon:Landroid/widget/ImageView;
    move-object/from16 v0, v25

    iput-object v13, v0, Lcom/android/email/activity/MailboxListItem;->mDragImpossibleIcon:Landroid/widget/ImageView;

    .line 958
    const v38, 0x7f100160

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/ImageView;

    .line 959
    .local v32, selectedIcon:Landroid/widget/ImageView;
    sget-wide v38, Lcom/android/email/activity/MailboxesAdapter;->sSelectedMailboxId:J

    cmp-long v38, v38, v20

    if-nez v38, :cond_10

    sget v38, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    const/16 v39, 0x8

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_10

    .line 962
    sget v38, Lcom/android/email/activity/MailboxesAdapter;->sListItemSelectionMargin:I

    sub-int v28, v28, v38

    .line 964
    const/16 v38, 0x8

    move-object/from16 v0, v32

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 965
    sget-boolean v38, Lcom/android/email/activity/MessageListXL;->isLeftSplitPressed:Z

    if-eqz v38, :cond_e

    .line 966
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v38

    if-eqz v38, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MailboxesAdapter;->mBackgroundColor:I

    move/from16 v38, v0

    const/16 v39, 0x2

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_d

    .line 967
    const v38, 0x7f02032a

    move-object/from16 v0, v32

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 983
    :goto_6
    invoke-virtual/range {v32 .. v32}, Landroid/widget/ImageView;->getVisibility()I

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/email/activity/MailboxListItem;->mSelectedIconVisibility:I

    .line 986
    const v38, 0x7f100159

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    .line 988
    .local v29, nameView:Landroid/widget/TextView;
    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/email/activity/MailboxListItem;->mFlagNoSelected:I

    move/from16 v38, v0

    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_11

    .line 989
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/android/email/activity/MailboxListItem;->mIsSelected:Z

    .line 990
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MailboxesAdapter;->mMailboxDisableNameColor:I

    move/from16 v38, v0

    move-object/from16 v0, v29

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 991
    invoke-virtual/range {v29 .. v29}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v38

    const/16 v39, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1003
    :goto_7
    invoke-static/range {p2 .. p3}, Lcom/android/email/activity/MailboxesAdapter;->getDisplayName(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v29 .. v29}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v39

    sget v40, Lcom/android/email/activity/MailboxesAdapter;->sListItemAllMargin:I

    sub-int v40, v28, v40

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    sget-object v41, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static/range {v38 .. v41}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v27

    .line 1005
    .local v27, mFormattedName:Ljava/lang/CharSequence;
    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1006
    move-object/from16 v0, v29

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/email/activity/MailboxListItem;->mNameView:Landroid/widget/TextView;

    .line 1007
    invoke-static/range {p2 .. p3}, Lcom/android/email/activity/MailboxesAdapter;->getDisplayName(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/email/activity/MailboxListItem;->mNameText:Ljava/lang/String;

    .line 1008
    sget v38, Lcom/android/email/activity/MailboxesAdapter;->sListItemAllMargin:I

    sub-int v38, v28, v38

    move/from16 v0, v38

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/email/activity/MailboxListItem;->mNameViewWidth:I

    .line 1010
    const v38, 0x7f100158

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1011
    .local v6, chipView:Landroid/view/View;
    if-eqz v22, :cond_13

    .line 1012
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1013
    const/16 v38, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1032
    :goto_8
    const v38, 0x7f100156

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 1033
    .local v10, dividerLine:Landroid/widget/ImageView;
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v38

    if-eqz v38, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MailboxesAdapter;->mBackgroundColor:I

    move/from16 v38, v0

    const/16 v39, 0x2

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_14

    .line 1034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f02004a

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1041
    :goto_9
    invoke-virtual {v10}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/widget/FrameLayout$LayoutParams;

    .line 1042
    .local v17, frameLp:Landroid/widget/FrameLayout$LayoutParams;
    sget v38, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    const/16 v39, 0x8

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_15

    .line 1043
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1050
    :goto_a
    const v38, 0x7f100155

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 1051
    .local v11, dividerLineTop:Landroid/widget/ImageView;
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v38

    if-eqz v38, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MailboxesAdapter;->mBackgroundColor:I

    move/from16 v38, v0

    const/16 v39, 0x2

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_17

    .line 1052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f02004a

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1058
    :goto_b
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v38

    if-nez v38, :cond_18

    .line 1059
    invoke-virtual {v11}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 1061
    .local v12, dividerLineTopframeLp:Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MailboxesAdapter;->mListViewSize:I

    move/from16 v38, v0

    add-int/lit8 v38, v38, -0x2

    move/from16 v0, v38

    iput v0, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1062
    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1066
    .end local v12           #dividerLineTopframeLp:Landroid/widget/FrameLayout$LayoutParams;
    :goto_c
    return-void

    .line 841
    .end local v5           #anymationView:Landroid/view/View;
    .end local v6           #chipView:Landroid/view/View;
    .end local v7           #countFrameLayout:Landroid/widget/FrameLayout;
    .end local v9           #countView:Landroid/widget/TextView;
    .end local v10           #dividerLine:Landroid/widget/ImageView;
    .end local v11           #dividerLineTop:Landroid/widget/ImageView;
    .end local v13           #dragImpossibleIcon:Landroid/widget/ImageView;
    .end local v14           #factor:I
    .end local v16           #folderIcon:Landroid/widget/ImageView;
    .end local v17           #frameLp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v24           #itemCheckBox:Landroid/widget/CheckBox;
    .end local v27           #mFormattedName:Ljava/lang/CharSequence;
    .end local v28           #mailboxNameWidth:I
    .end local v29           #nameView:Landroid/widget/TextView;
    .end local v32           #selectedIcon:Landroid/widget/ImageView;
    .end local v33           #showPlusImage:Z
    .end local v35           #totalCount:I
    .end local v37           #unReadCount:I
    :cond_3
    sget v38, Lcom/android/email/activity/MailboxesAdapter;->sMailboxListNameLand:I

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/activity/MailboxesAdapter;->mListViewSize:I

    goto/16 :goto_0

    .line 883
    .restart local v7       #countFrameLayout:Landroid/widget/FrameLayout;
    .restart local v9       #countView:Landroid/widget/TextView;
    .restart local v28       #mailboxNameWidth:I
    .restart local v35       #totalCount:I
    .restart local v37       #unReadCount:I
    :cond_4
    invoke-virtual {v9}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v38

    const/16 v39, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v9, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 884
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MailboxesAdapter;->mMailboxNameColor:I

    move/from16 v38, v0

    move/from16 v0, v38

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 895
    :cond_5
    const/16 v38, 0x8

    move/from16 v0, v38

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 902
    .restart local v16       #folderIcon:Landroid/widget/ImageView;
    .restart local v24       #itemCheckBox:Landroid/widget/CheckBox;
    :cond_6
    const/16 v33, 0x0

    goto/16 :goto_3

    .line 915
    .restart local v33       #showPlusImage:Z
    :cond_7
    sget-object v38, Lcom/android/email/activity/MailboxesAdapter;->mParentSelectedSet:Ljava/util/HashSet;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_8

    .line 916
    sget-object v38, Lcom/android/email/activity/MailboxesAdapter;->mParentSelectedSet:Ljava/util/HashSet;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 917
    const/16 v38, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 918
    const/16 v38, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_4

    .line 919
    :cond_8
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/email/activity/MailboxListItem;->mMailboxType:Ljava/lang/Integer;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Integer;->intValue()I

    move-result v38

    if-eqz v38, :cond_9

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/email/activity/MailboxListItem;->mMailboxType:Ljava/lang/Integer;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Integer;->intValue()I

    move-result v38

    const/16 v39, 0x3

    move/from16 v0, v38

    move/from16 v1, v39

    if-lt v0, v1, :cond_a

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/email/activity/MailboxListItem;->mMailboxType:Ljava/lang/Integer;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Integer;->intValue()I

    move-result v38

    const/16 v39, 0x6

    move/from16 v0, v38

    move/from16 v1, v39

    if-gt v0, v1, :cond_a

    .line 921
    :cond_9
    const/16 v38, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 922
    const/16 v38, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_4

    .line 924
    :cond_a
    const/16 v38, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 925
    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_4

    .line 929
    :cond_b
    if-eqz v24, :cond_2

    .line 930
    const/16 v38, 0x8

    move-object/from16 v0, v24

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_4

    .line 940
    :cond_c
    invoke-static/range {p2 .. p2}, Lcom/android/email/FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/FolderProperties;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v36

    move-wide/from16 v2, v20

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/FolderProperties;->getIcon(IJZ)Landroid/graphics/drawable/Drawable;

    move-result-object v38

    move-object/from16 v0, v16

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    .line 970
    .restart local v5       #anymationView:Landroid/view/View;
    .restart local v13       #dragImpossibleIcon:Landroid/widget/ImageView;
    .restart local v14       #factor:I
    .restart local v32       #selectedIcon:Landroid/widget/ImageView;
    :cond_d
    const v38, 0x7f020327

    move-object/from16 v0, v32

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_6

    .line 973
    :cond_e
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v38

    if-eqz v38, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MailboxesAdapter;->mBackgroundColor:I

    move/from16 v38, v0

    const/16 v39, 0x2

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_f

    .line 974
    const v38, 0x7f020315

    move-object/from16 v0, v32

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_6

    .line 977
    :cond_f
    const v38, 0x7f020313

    move-object/from16 v0, v32

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_6

    .line 981
    :cond_10
    const/16 v38, 0x8

    move-object/from16 v0, v32

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    .line 993
    .restart local v29       #nameView:Landroid/widget/TextView;
    :cond_11
    sget-wide v38, Lcom/android/email/activity/MailboxesAdapter;->sSelectedMailboxId:J

    cmp-long v38, v38, v20

    if-nez v38, :cond_12

    .line 994
    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/android/email/activity/MailboxListItem;->mIsSelected:Z

    .line 995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MailboxesAdapter;->mMailboxNameSelectedColor:Landroid/content/res/ColorStateList;

    move-object/from16 v38, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 996
    invoke-virtual/range {v29 .. v29}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v38

    const/16 v39, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto/16 :goto_7

    .line 998
    :cond_12
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/android/email/activity/MailboxListItem;->mIsSelected:Z

    .line 999
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MailboxesAdapter;->mMailboxNameColor:I

    move/from16 v38, v0

    move-object/from16 v0, v29

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1000
    invoke-virtual/range {v29 .. v29}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v38

    const/16 v39, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto/16 :goto_7

    .line 1028
    .restart local v6       #chipView:Landroid/view/View;
    .restart local v27       #mFormattedName:Ljava/lang/CharSequence;
    :cond_13
    const/16 v38, 0x8

    move/from16 v0, v38

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1029
    const/16 v38, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_8

    .line 1037
    .restart local v10       #dividerLine:Landroid/widget/ImageView;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f02004a

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_9

    .line 1044
    .restart local v17       #frameLp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_15
    sget-boolean v38, Lcom/android/email/activity/MessageListXL;->isLeftSplitPressed:Z

    if-eqz v38, :cond_16

    .line 1045
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MailboxesAdapter;->mListViewSize:I

    move/from16 v38, v0

    add-int/lit8 v38, v38, -0x16

    move/from16 v0, v38

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_a

    .line 1047
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MailboxesAdapter;->mListViewSize:I

    move/from16 v38, v0

    add-int/lit8 v38, v38, -0x11

    move/from16 v0, v38

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_a

    .line 1055
    .restart local v11       #dividerLineTop:Landroid/widget/ImageView;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f02004a

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_b

    .line 1064
    :cond_18
    const/16 v38, 0x8

    move/from16 v0, v38

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_c
.end method

.method public static createLoader(Landroid/content/Context;JI)Landroid/content/Loader;
    .locals 2
    .parameter "context"
    .parameter "accountId"
    .parameter "mode"
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
    .line 1120
    const-wide/high16 v0, 0x1000

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    .line 1121
    :cond_0
    new-instance v0, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader;-><init>(Landroid/content/Context;JI)V

    .line 1123
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/android/email/activity/MailboxesAdapter$CombinedMailboxesLoader;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MailboxesAdapter$CombinedMailboxesLoader;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private getCountType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 438
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxesAdapter;->isAccountRow(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    const/4 v0, 0x0

    .line 441
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    invoke-static {v0}, Lcom/android/email/activity/MailboxesAdapter;->getCountTypeForMailboxType(Landroid/database/Cursor;)I

    move-result v0

    goto :goto_0
.end method

.method private static getCountTypeForMailboxType(Landroid/database/Cursor;)I
    .locals 2
    .parameter "c"

    .prologue
    const/4 v0, 0x0

    .line 422
    invoke-static {p0}, Lcom/android/email/activity/MailboxesAdapter;->isAccountRow(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 430
    :goto_0
    return v0

    .line 425
    :cond_0
    const/4 v1, 0x3

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 428
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 425
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static getDisplayName(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 799
    const/4 v2, 0x0

    .line 800
    .local v2, name:Ljava/lang/String;
    const/4 v4, 0x6

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-nez v4, :cond_0

    .line 804
    const/4 v4, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 805
    .local v3, type:I
    const/4 v4, 0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 806
    .local v0, mailboxId:J
    invoke-static {p0}, Lcom/android/email/FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/FolderProperties;

    move-result-object v4

    invoke-virtual {v4, v3, v0, v1}, Lcom/android/email/FolderProperties;->getDisplayName(IJ)Ljava/lang/String;

    move-result-object v2

    .line 808
    .end local v0           #mailboxId:J
    .end local v3           #type:I
    :cond_0
    if-nez v2, :cond_1

    .line 809
    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 811
    :cond_1
    return-object v2
.end method

.method static getIdForTest(Landroid/database/Cursor;)J
    .locals 2
    .parameter "cursor"

    .prologue
    .line 1651
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static getMessageCountForTest(Landroid/database/Cursor;)I
    .locals 1
    .parameter "cursor"

    .prologue
    .line 1659
    const/4 v0, 0x5

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method static getSpecialMailboxesCursor(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/MatrixCursor;
    .locals 7
    .parameter "context"
    .parameter "innerCursor"

    .prologue
    .line 1595
    new-instance v1, Lcom/android/email/data/ClosingMatrixCursor;

    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->HIERARCHY_PROJECTION:[Ljava/lang/String;

    invoke-direct {v1, v0, p1}, Lcom/android/email/data/ClosingMatrixCursor;-><init>([Ljava/lang/String;Landroid/database/Cursor;)V

    .line 1597
    .local v1, cursor:Landroid/database/MatrixCursor;
    const-wide/16 v2, -0x2

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getUnreadCountByMailboxType(Landroid/content/Context;I)I

    move-result v5

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/email/activity/MailboxesAdapter;->addSummaryMailboxRow(Landroid/content/Context;Landroid/database/MatrixCursor;JIIZ)V

    .line 1601
    const-wide/16 v2, -0x4

    const/4 v4, 0x1

    invoke-static {p0}, Lcom/android/emailcommon/provider/EmailContent$Message;->getFavoriteMessageCount(Landroid/content/Context;)I

    move-result v5

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/email/activity/MailboxesAdapter;->addSummaryMailboxRow(Landroid/content/Context;Landroid/database/MatrixCursor;JIIZ)V

    .line 1605
    const-wide/16 v2, -0x5

    const/4 v4, 0x3

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMessageCountByMailboxType(Landroid/content/Context;I)I

    move-result v5

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/email/activity/MailboxesAdapter;->addSummaryMailboxRow(Landroid/content/Context;Landroid/database/MatrixCursor;JIIZ)V

    .line 1609
    const-wide/16 v2, -0x6

    const/4 v4, 0x4

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMessageCountByMailboxType(Landroid/content/Context;I)I

    move-result v5

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/email/activity/MailboxesAdapter;->addSummaryMailboxRow(Landroid/content/Context;Landroid/database/MatrixCursor;JIIZ)V

    .line 1613
    const-wide/16 v2, -0x8

    const/4 v4, 0x5

    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMessageCountByMailboxType(Landroid/content/Context;I)I

    move-result v5

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/email/activity/MailboxesAdapter;->addSummaryMailboxRow(Landroid/content/Context;Landroid/database/MatrixCursor;JIIZ)V

    .line 1617
    const-wide/16 v2, -0x7

    const/4 v4, 0x6

    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMessageCountByMailboxType(Landroid/content/Context;I)I

    move-result v5

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/email/activity/MailboxesAdapter;->addSummaryMailboxRow(Landroid/content/Context;Landroid/database/MatrixCursor;JIIZ)V

    .line 1619
    return-object v1
.end method

.method static getTypeForTest(Landroid/database/Cursor;)I
    .locals 1
    .parameter "cursor"

    .prologue
    .line 1655
    const/4 v0, 0x3

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method static getUnreadCountForTest(Landroid/database/Cursor;)I
    .locals 1
    .parameter "cursor"

    .prologue
    .line 1663
    const/4 v0, 0x4

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method private static isAccountRow(Landroid/database/Cursor;)Z
    .locals 2
    .parameter "c"

    .prologue
    const/4 v0, 0x1

    .line 407
    const/4 v1, 0x6

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private newViewMoveToTargetMode(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/android/email/activity/MailboxesAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x1090003

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private newViewNormalMode(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const v1, 0x7f040068

    const/4 v2, 0x0

    .line 1080
    iget v0, p0, Lcom/android/email/activity/MailboxesAdapter;->mfontSize:I

    packed-switch v0, :pswitch_data_0

    .line 1092
    iget-object v0, p0, Lcom/android/email/activity/MailboxesAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1082
    :pswitch_0
    iget-object v0, p0, Lcom/android/email/activity/MailboxesAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04006c

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1084
    :pswitch_1
    iget-object v0, p0, Lcom/android/email/activity/MailboxesAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04006b

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1086
    :pswitch_2
    iget-object v0, p0, Lcom/android/email/activity/MailboxesAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1088
    :pswitch_3
    iget-object v0, p0, Lcom/android/email/activity/MailboxesAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04006a

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1090
    :pswitch_4
    iget-object v0, p0, Lcom/android/email/activity/MailboxesAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040069

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1080
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

.method public static setLeftPane(Landroid/view/View;)V
    .locals 0
    .parameter "leftPane"

    .prologue
    .line 513
    sput-object p0, Lcom/android/email/activity/MailboxesAdapter;->sLeftPane:Landroid/view/View;

    .line 514
    return-void
.end method

.method private updateSelected(Lcom/android/email/activity/MailboxListItem;Z)V
    .locals 3
    .parameter "itemView"
    .parameter "newSelected"

    .prologue
    .line 625
    if-eqz p2, :cond_0

    .line 626
    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->mSelectedSet:Ljava/util/HashSet;

    iget-wide v1, p1, Lcom/android/email/activity/MailboxListItem;->mMailboxId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 635
    :goto_0
    return-void

    .line 628
    :cond_0
    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->mSelectedSet:Ljava/util/HashSet;

    iget-wide v1, p1, Lcom/android/email/activity/MailboxListItem;->mMailboxId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 568
    iget v0, p0, Lcom/android/email/activity/MailboxesAdapter;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 576
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 570
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MailboxesAdapter;->bindViewNormalMode(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 574
    :goto_0
    return-void

    .line 573
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MailboxesAdapter;->bindViewMoveToTargetMode(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    goto :goto_0

    .line 568
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public enableUpdates(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 489
    sput-boolean p1, Lcom/android/email/activity/MailboxesAdapter;->sEnableUpdate:Z

    .line 490
    return-void
.end method

.method public getAllMailboxCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 1109
    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->sAllMailboxCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getChangeMailboxFlag()Z
    .locals 1

    .prologue
    .line 497
    sget-boolean v0, Lcom/android/email/activity/MailboxesAdapter;->needToChangeMailbox:Z

    return v0
.end method

.method public getDeleteMode()Z
    .locals 1

    .prologue
    .line 613
    iget-boolean v0, p0, Lcom/android/email/activity/MailboxesAdapter;->mDeleteMode:Z

    return v0
.end method

.method public getDisplayName(I)Ljava/lang/String;
    .locals 2
    .parameter "position"

    .prologue
    .line 464
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 465
    .local v0, c:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/email/activity/MailboxesAdapter;->getDisplayName(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getId(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 473
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 474
    .local v0, c:Landroid/database/Cursor;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    return-wide v1
.end method

.method public getMailboxCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 1105
    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->sMailboxCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getMailboxType(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 478
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 479
    .local v0, c:Landroid/database/Cursor;
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    return-wide v1
.end method

.method public getSelectedSet()Ljava/util/HashSet;
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
    .line 505
    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->mSelectedSet:Ljava/util/HashSet;

    return-object v0
.end method

.method public getTotalCount(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 456
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 457
    .local v0, c:Landroid/database/Cursor;
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    return v1
.end method

.method public getUnreadCount(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 448
    invoke-direct {p0, p1}, Lcom/android/email/activity/MailboxesAdapter;->getCountType(I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 449
    const/4 v1, 0x0

    .line 452
    :goto_0
    return v1

    .line 451
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 452
    .local v0, c:Landroid/database/Cursor;
    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "view"
    .parameter "parent"

    .prologue
    .line 520
    :try_start_0
    iget-object v6, p0, Lcom/android/email/activity/MailboxesAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v6, :cond_0

    .line 521
    iget-object v6, p0, Lcom/android/email/activity/MailboxesAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 523
    :cond_0
    iget-object v6, p0, Lcom/android/email/activity/MailboxesAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v7, 0x9

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 524
    .local v1, parentKey:J
    sget-object v6, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/email/activity/MailboxesAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v6, :cond_1

    sget-object v6, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;

    iget-boolean v6, v6, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    if-nez v6, :cond_1

    const/4 v3, 0x1

    .line 527
    .local v3, shouldGone:Z
    :goto_0
    if-eqz v3, :cond_2

    .line 528
    const/4 p2, 0x0

    .line 529
    new-instance v4, Lcom/android/email/activity/MailboxListNullItem;

    iget-object v6, p0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Lcom/android/email/activity/MailboxListNullItem;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    .end local p2
    .local v4, view:Landroid/view/View;
    const/16 v6, 0x8

    :try_start_1
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object p2, v4

    .line 563
    .end local v1           #parentKey:J
    .end local v3           #shouldGone:Z
    .end local v4           #view:Landroid/view/View;
    :goto_1
    return-object v4

    .line 524
    .restart local v1       #parentKey:J
    .restart local p2
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 533
    .restart local v3       #shouldGone:Z
    :cond_2
    const/4 v5, -0x1

    .line 534
    .local v5, viewId:I
    :try_start_2
    iget v6, p0, Lcom/android/email/activity/MailboxesAdapter;->mfontSize:I

    packed-switch v6, :pswitch_data_0

    .line 552
    :goto_2
    iget-object v6, p0, Lcom/android/email/activity/MailboxesAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v6, :cond_5

    .line 553
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v6

    if-eq v5, v6, :cond_4

    .line 554
    :cond_3
    const/4 p2, 0x0

    .line 555
    iget-object v6, p0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/email/activity/MailboxesAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v6, v7, p3}, Lcom/android/email/activity/MailboxesAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 557
    :cond_4
    iget-object v6, p0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/email/activity/MailboxesAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, p2, v6, v7}, Lcom/android/email/activity/MailboxesAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .end local v1           #parentKey:J
    .end local v3           #shouldGone:Z
    .end local v5           #viewId:I
    :cond_5
    :goto_3
    move-object v4, p2

    .line 563
    .local v4, view:Ljava/lang/Object;
    goto :goto_1

    .line 536
    .end local v4           #view:Ljava/lang/Object;
    .restart local v1       #parentKey:J
    .restart local v3       #shouldGone:Z
    .restart local v5       #viewId:I
    :pswitch_0
    const v5, 0x7f100164

    .line 537
    goto :goto_2

    .line 539
    :pswitch_1
    const v5, 0x7f100163

    .line 540
    goto :goto_2

    .line 542
    :pswitch_2
    const v5, 0x7f100154

    .line 543
    goto :goto_2

    .line 545
    :pswitch_3
    const v5, 0x7f100162

    .line 546
    goto :goto_2

    .line 548
    :pswitch_4
    const v5, 0x7f100161

    goto :goto_2

    .line 559
    .end local v1           #parentKey:J
    .end local v3           #shouldGone:Z
    .end local v5           #viewId:I
    :catch_0
    move-exception v0

    .line 560
    .local v0, e:Ljava/lang/Exception;
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 561
    iget-object v6, p0, Lcom/android/email/activity/MailboxesAdapter;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/email/activity/MailboxesAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v6, v7, p3}, Lcom/android/email/activity/MailboxesAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_3

    .line 559
    .end local v0           #e:Ljava/lang/Exception;
    .end local p2
    .restart local v1       #parentKey:J
    .restart local v3       #shouldGone:Z
    .local v4, view:Landroid/view/View;
    :catch_1
    move-exception v0

    move-object p2, v4

    .end local v4           #view:Landroid/view/View;
    .restart local p2
    goto :goto_4

    .line 534
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

.method public initAdapter()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 658
    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 659
    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 660
    sput-object v1, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    .line 662
    :cond_0
    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapNew:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 663
    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapNew:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 664
    sput-object v1, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapNew:Ljava/util/HashMap;

    .line 666
    :cond_1
    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapPrev:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 667
    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapPrev:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 668
    sput-object v1, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapPrev:Ljava/util/HashMap;

    .line 670
    :cond_2
    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapPrevNew:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    .line 671
    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapPrevNew:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 672
    sput-object v1, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapPrevNew:Ljava/util/HashMap;

    .line 674
    :cond_3
    return-void
.end method

.method public isAccountRow(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 414
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    invoke-static {v0}, Lcom/android/email/activity/MailboxesAdapter;->isAccountRow(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 4
    .parameter "position"

    .prologue
    .line 390
    iget-boolean v0, p0, Lcom/android/email/activity/MailboxesAdapter;->isFolderOperation:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxesAdapter;->getMailboxType(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxesAdapter;->getMailboxType(I)J

    move-result-wide v0

    const-wide/16 v2, 0x3

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxesAdapter;->getMailboxType(I)J

    move-result-wide v0

    const-wide/16 v2, 0x6

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 392
    :cond_0
    const/4 v0, 0x0

    .line 395
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSelected(Lcom/android/email/activity/MailboxListItem;)Z
    .locals 3
    .parameter "itemView"

    .prologue
    .line 509
    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->mSelectedSet:Ljava/util/HashSet;

    iget-wide v1, p1, Lcom/android/email/activity/MailboxListItem;->mMailboxId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 581
    iget v0, p0, Lcom/android/email/activity/MailboxesAdapter;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 587
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 583
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MailboxesAdapter;->newViewNormalMode(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 585
    :goto_0
    return-object v0

    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MailboxesAdapter;->newViewMoveToTargetMode(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 581
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setAdapterInfo()V
    .locals 3

    .prologue
    .line 679
    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    .line 680
    .local v0, temItemMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;>;"
    sget-object v1, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapPrev:Ljava/util/HashMap;

    .line 682
    .local v1, temPrevItemMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;>;"
    sget-object v2, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapNew:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    .line 683
    sget-object v2, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapNew:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    sput-object v2, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    .line 684
    sget-object v2, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapPrevNew:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    sput-object v2, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapPrev:Ljava/util/HashMap;

    .line 690
    :goto_0
    if-eqz v0, :cond_0

    .line 691
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 692
    const/4 v0, 0x0

    .line 693
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 694
    const/4 v1, 0x0

    .line 696
    :cond_0
    return-void

    .line 686
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    .line 687
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapPrev:Ljava/util/HashMap;

    goto :goto_0
.end method

.method public setBackgroundColor(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 638
    iput p1, p0, Lcom/android/email/activity/MailboxesAdapter;->mBackgroundColor:I

    .line 639
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/email/activity/MailboxesAdapter;->mBackgroundColor:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 640
    sget v0, Lcom/android/email/activity/MailboxesAdapter;->sMailboxNameColorDarkTheme:I

    iput v0, p0, Lcom/android/email/activity/MailboxesAdapter;->mMailboxNameColor:I

    .line 642
    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->sMailboxNameSelectedColorDarkTheme:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/android/email/activity/MailboxesAdapter;->mMailboxNameSelectedColor:Landroid/content/res/ColorStateList;

    .line 643
    sget v0, Lcom/android/email/activity/MailboxesAdapter;->sMailboxDisableNameColorDarkTheme:I

    iput v0, p0, Lcom/android/email/activity/MailboxesAdapter;->mMailboxDisableNameColor:I

    .line 653
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxesAdapter;->notifyDataSetInvalidated()V

    .line 654
    return-void

    .line 646
    :cond_0
    sget v0, Lcom/android/email/activity/MailboxesAdapter;->sMailboxNameColorWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MailboxesAdapter;->mMailboxNameColor:I

    .line 648
    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->sMailboxNameSelectedColorWhiteTheme:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/android/email/activity/MailboxesAdapter;->mMailboxNameSelectedColor:Landroid/content/res/ColorStateList;

    .line 649
    sget v0, Lcom/android/email/activity/MailboxesAdapter;->sMailboxDisableNameColorWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MailboxesAdapter;->mMailboxDisableNameColor:I

    goto :goto_0
.end method

.method public setChangeMailboxFlag(Z)V
    .locals 0
    .parameter "bool"

    .prologue
    .line 501
    sput-boolean p1, Lcom/android/email/activity/MailboxesAdapter;->needToChangeMailbox:Z

    .line 502
    return-void
.end method

.method public setDeleteMode(Z)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 604
    iput-boolean p1, p0, Lcom/android/email/activity/MailboxesAdapter;->mDeleteMode:Z

    .line 605
    iget-boolean v0, p0, Lcom/android/email/activity/MailboxesAdapter;->mDeleteMode:Z

    if-nez v0, :cond_0

    .line 606
    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->mSelectedSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 607
    sget-object v0, Lcom/android/email/activity/MailboxesAdapter;->mParentSelectedSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 609
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxesAdapter;->notifyDataSetChanged()V

    .line 610
    return-void
.end method

.method public setIsCreateOrRename(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 400
    iput-boolean p1, p0, Lcom/android/email/activity/MailboxesAdapter;->isFolderOperation:Z

    .line 401
    return-void
.end method

.method public setListItemSize(I)V
    .locals 0
    .parameter "fontSize"

    .prologue
    .line 599
    iput p1, p0, Lcom/android/email/activity/MailboxesAdapter;->mfontSize:I

    .line 600
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxesAdapter;->notifyDataSetInvalidated()V

    .line 601
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 595
    iput p1, p0, Lcom/android/email/activity/MailboxesAdapter;->mCurrentOrientation:I

    .line 596
    return-void
.end method

.method public toggleSelected(Lcom/android/email/activity/MailboxListItem;)V
    .locals 1
    .parameter "itemView"

    .prologue
    .line 360
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxesAdapter;->isSelected(Lcom/android/email/activity/MailboxListItem;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/email/activity/MailboxesAdapter;->updateSelected(Lcom/android/email/activity/MailboxListItem;Z)V

    .line 361
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxesAdapter;->notifyDataSetChanged()V

    .line 362
    return-void

    .line 360
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateCurrentOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 493
    iput p1, p0, Lcom/android/email/activity/MailboxesAdapter;->mCurrentOrientation:I

    .line 494
    return-void
.end method

.method public updateMailboxVisivility(J)V
    .locals 12
    .parameter "mailboxId"

    .prologue
    .line 700
    sget-object v10, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;

    .line 701
    .local v9, selectedExtraData:Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;
    iget-boolean v10, v9, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    if-nez v10, :cond_1

    const/4 v10, 0x1

    :goto_0
    iput-boolean v10, v9, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    .line 702
    sget-object v10, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    iget-boolean v0, v9, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    .line 705
    .local v0, expand:Z
    const-wide/16 v5, -0x1

    .line 706
    .local v5, mId:J
    const/4 v7, 0x0

    .line 707
    .local v7, needToSaveOrRestore:Z
    const/4 v3, -0x1

    .line 708
    .local v3, hierarchyLevel:I
    const/4 v2, -0x1

    .line 710
    .local v2, hLevel:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    iget-object v10, p0, Lcom/android/email/activity/MailboxesAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-ge v4, v10, :cond_3

    .line 711
    iget-object v10, p0, Lcom/android/email/activity/MailboxesAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v10, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 712
    iget-object v10, p0, Lcom/android/email/activity/MailboxesAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 713
    iget-object v10, p0, Lcom/android/email/activity/MailboxesAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0xa

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 714
    if-nez v7, :cond_2

    .line 715
    cmp-long v10, v5, p1

    if-nez v10, :cond_0

    .line 716
    const/4 v7, 0x1

    .line 717
    iget-object v10, p0, Lcom/android/email/activity/MailboxesAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0xa

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 710
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 701
    .end local v0           #expand:Z
    .end local v2           #hLevel:I
    .end local v3           #hierarchyLevel:I
    .end local v4           #i:I
    .end local v5           #mId:J
    .end local v7           #needToSaveOrRestore:Z
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 722
    .restart local v0       #expand:Z
    .restart local v2       #hLevel:I
    .restart local v3       #hierarchyLevel:I
    .restart local v4       #i:I
    .restart local v5       #mId:J
    .restart local v7       #needToSaveOrRestore:Z
    :cond_2
    if-lt v3, v2, :cond_4

    .line 743
    :cond_3
    iget-object v10, p0, Lcom/android/email/activity/MailboxesAdapter;->mCallback:Lcom/android/email/activity/MailboxesAdapter$Callback;

    invoke-interface {v10}, Lcom/android/email/activity/MailboxesAdapter$Callback;->onReDrawList()V

    .line 744
    return-void

    .line 725
    :cond_4
    if-eqz v0, :cond_5

    .line 727
    sget-object v10, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;

    .line 728
    .local v1, extraData:Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;
    sget-object v10, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapPrev:Ljava/util/HashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;

    .line 729
    .local v8, prevExtraData:Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;
    iget-boolean v10, v8, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    iput-boolean v10, v1, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    .line 730
    sget-object v10, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 733
    .end local v1           #extraData:Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;
    .end local v8           #prevExtraData:Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;
    :cond_5
    sget-object v10, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;

    .line 734
    .restart local v1       #extraData:Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;
    sget-object v10, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapPrev:Ljava/util/HashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;

    .line 735
    .restart local v8       #prevExtraData:Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;
    iget-boolean v10, v1, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    iput-boolean v10, v8, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    .line 736
    const/4 v10, 0x0

    iput-boolean v10, v1, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    .line 737
    sget-object v10, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapPrev:Ljava/util/HashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    sget-object v10, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public updateMailboxVisivility(JZ)V
    .locals 12
    .parameter "mailboxId"
    .parameter "isExpand"

    .prologue
    .line 747
    sget-object v10, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;

    .line 749
    .local v9, selectedExtraData:Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;
    iget-boolean v0, v9, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    .line 750
    .local v0, expand:Z
    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 796
    :goto_0
    return-void

    .line 753
    :cond_0
    iget-boolean v10, v9, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    if-nez v10, :cond_2

    const/4 v10, 0x1

    :goto_1
    iput-boolean v10, v9, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    .line 754
    sget-object v10, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    iget-boolean v0, v9, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    .line 756
    const-wide/16 v5, -0x1

    .line 757
    .local v5, mId:J
    const/4 v7, 0x0

    .line 758
    .local v7, needToSaveOrRestore:Z
    const/4 v3, -0x1

    .line 759
    .local v3, hierarchyLevel:I
    const/4 v2, -0x1

    .line 761
    .local v2, hLevel:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    iget-object v10, p0, Lcom/android/email/activity/MailboxesAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-ge v4, v10, :cond_4

    .line 762
    iget-object v10, p0, Lcom/android/email/activity/MailboxesAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v10, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 763
    iget-object v10, p0, Lcom/android/email/activity/MailboxesAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 764
    iget-object v10, p0, Lcom/android/email/activity/MailboxesAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0xa

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 765
    if-nez v7, :cond_3

    .line 766
    cmp-long v10, v5, p1

    if-nez v10, :cond_1

    .line 767
    const/4 v7, 0x1

    .line 768
    iget-object v10, p0, Lcom/android/email/activity/MailboxesAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0xa

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 761
    :cond_1
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 753
    .end local v2           #hLevel:I
    .end local v3           #hierarchyLevel:I
    .end local v4           #i:I
    .end local v5           #mId:J
    .end local v7           #needToSaveOrRestore:Z
    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .line 773
    .restart local v2       #hLevel:I
    .restart local v3       #hierarchyLevel:I
    .restart local v4       #i:I
    .restart local v5       #mId:J
    .restart local v7       #needToSaveOrRestore:Z
    :cond_3
    if-lt v3, v2, :cond_5

    .line 795
    :cond_4
    iget-object v10, p0, Lcom/android/email/activity/MailboxesAdapter;->mCallback:Lcom/android/email/activity/MailboxesAdapter$Callback;

    invoke-interface {v10}, Lcom/android/email/activity/MailboxesAdapter$Callback;->onReDrawList()V

    goto :goto_0

    .line 776
    :cond_5
    if-eqz v0, :cond_1

    .line 778
    sget-object v10, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;

    .line 779
    .local v1, extraData:Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;
    sget-object v10, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMapPrev:Ljava/util/HashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;

    .line 780
    .local v8, prevExtraData:Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;
    iget-boolean v10, v8, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    iput-boolean v10, v1, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    .line 781
    sget-object v10, Lcom/android/email/activity/MailboxesAdapter;->sExpandItemMap:Ljava/util/HashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method

.method public updateSelectedMailbox(J)V
    .locals 0
    .parameter "selectedMailboxId"

    .prologue
    .line 591
    sput-wide p1, Lcom/android/email/activity/MailboxesAdapter;->sSelectedMailboxId:J

    .line 592
    return-void
.end method
