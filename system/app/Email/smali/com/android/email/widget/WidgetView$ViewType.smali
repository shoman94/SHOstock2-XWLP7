.class enum Lcom/android/email/widget/WidgetView$ViewType;
.super Ljava/lang/Enum;
.source "WidgetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/widget/WidgetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400a
    name = "ViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/email/widget/WidgetView$ViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/email/widget/WidgetView$ViewType;

.field public static final enum TYPE_ACCOUNT_INBOX:Lcom/android/email/widget/WidgetView$ViewType;

.field public static final enum TYPE_ALL_INBOX:Lcom/android/email/widget/WidgetView$ViewType;


# instance fields
.field private final mIsPerAccount:Z

.field private final mSelection:Ljava/lang/String;

.field private final mTitleResource:I

.field private final mUseUnreadCount:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 52
    new-instance v0, Lcom/android/email/widget/WidgetView$ViewType;

    const-string v1, "TYPE_ALL_INBOX"

    const-string v4, "mailboxKey IN (SELECT _id FROM Mailbox WHERE type = 0) AND flagLoaded IN (2,4,1)"

    const v5, 0x7f08018d

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/email/widget/WidgetView$ViewType;-><init>(Ljava/lang/String;IZLjava/lang/String;IZ)V

    sput-object v0, Lcom/android/email/widget/WidgetView$ViewType;->TYPE_ALL_INBOX:Lcom/android/email/widget/WidgetView$ViewType;

    new-instance v4, Lcom/android/email/widget/WidgetView$ViewType$1;

    const-string v5, "TYPE_ACCOUNT_INBOX"

    const-string v8, "accountKey=? AND mailboxKey IN (SELECT _id FROM Mailbox WHERE type = 0) AND flagLoaded IN (2,4,1)"

    move v7, v6

    move v9, v2

    move v10, v6

    invoke-direct/range {v4 .. v10}, Lcom/android/email/widget/WidgetView$ViewType$1;-><init>(Ljava/lang/String;IZLjava/lang/String;IZ)V

    sput-object v4, Lcom/android/email/widget/WidgetView$ViewType;->TYPE_ACCOUNT_INBOX:Lcom/android/email/widget/WidgetView$ViewType;

    .line 47
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/email/widget/WidgetView$ViewType;

    sget-object v1, Lcom/android/email/widget/WidgetView$ViewType;->TYPE_ALL_INBOX:Lcom/android/email/widget/WidgetView$ViewType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/email/widget/WidgetView$ViewType;->TYPE_ACCOUNT_INBOX:Lcom/android/email/widget/WidgetView$ViewType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/email/widget/WidgetView$ViewType;->$VALUES:[Lcom/android/email/widget/WidgetView$ViewType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZLjava/lang/String;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter "isPerAccount"
    .parameter "selection"
    .parameter "titleResource"
    .parameter "useUnreadCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 76
    iput-boolean p3, p0, Lcom/android/email/widget/WidgetView$ViewType;->mIsPerAccount:Z

    .line 77
    iput-object p4, p0, Lcom/android/email/widget/WidgetView$ViewType;->mSelection:Ljava/lang/String;

    .line 78
    iput p5, p0, Lcom/android/email/widget/WidgetView$ViewType;->mTitleResource:I

    .line 79
    iput-boolean p6, p0, Lcom/android/email/widget/WidgetView$ViewType;->mUseUnreadCount:Z

    .line 80
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IZLjava/lang/String;IZLcom/android/email/widget/WidgetView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 47
    invoke-direct/range {p0 .. p6}, Lcom/android/email/widget/WidgetView$ViewType;-><init>(Ljava/lang/String;IZLjava/lang/String;IZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/widget/WidgetView$ViewType;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/email/widget/WidgetView$ViewType;->mIsPerAccount:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/email/widget/WidgetView$ViewType;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/email/widget/WidgetView$ViewType;->mUseUnreadCount:Z

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/email/widget/WidgetView$ViewType;
    .locals 1
    .parameter

    .prologue
    .line 47
    const-class v0, Lcom/android/email/widget/WidgetView$ViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/email/widget/WidgetView$ViewType;

    return-object v0
.end method

.method public static values()[Lcom/android/email/widget/WidgetView$ViewType;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/email/widget/WidgetView$ViewType;->$VALUES:[Lcom/android/email/widget/WidgetView$ViewType;

    invoke-virtual {v0}, [Lcom/android/email/widget/WidgetView$ViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/email/widget/WidgetView$ViewType;

    return-object v0
.end method


# virtual methods
.method public getSelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/email/widget/WidgetView$ViewType;->mSelection:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectionArgs(J)[Ljava/lang/String;
    .locals 1
    .parameter "accountId"

    .prologue
    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "accountName"

    .prologue
    .line 83
    iget v0, p0, Lcom/android/email/widget/WidgetView$ViewType;->mTitleResource:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
