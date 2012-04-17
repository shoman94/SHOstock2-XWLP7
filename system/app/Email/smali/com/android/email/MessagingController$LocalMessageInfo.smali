.class public Lcom/android/email/MessagingController$LocalMessageInfo;
.super Ljava/lang/Object;
.source "MessagingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/MessagingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalMessageInfo"
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# instance fields
.field final mCursorIndex:I

.field public final mFlagFavorite:Z

.field public final mFlagLoaded:I

.field public final mFlagRead:Z

.field public final mFlagReply:Z

.field public final mId:J

.field public final mServerId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1630
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "flagRead"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "flagFavorite"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "flagLoaded"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "syncServerId"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "mailboxKey"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "accountKey"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "flagReply"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/MessagingController$LocalMessageInfo;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 5
    .parameter "c"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1657
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1658
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    iput v0, p0, Lcom/android/email/MessagingController$LocalMessageInfo;->mCursorIndex:I

    .line 1659
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    .line 1660
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagRead:Z

    .line 1661
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagFavorite:Z

    .line 1662
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagLoaded:I

    .line 1663
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/MessagingController$LocalMessageInfo;->mServerId:Ljava/lang/String;

    .line 1664
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagReply:Z

    .line 1668
    return-void

    :cond_0
    move v0, v2

    .line 1660
    goto :goto_0

    :cond_1
    move v0, v2

    .line 1661
    goto :goto_1

    :cond_2
    move v1, v2

    .line 1664
    goto :goto_2
.end method
