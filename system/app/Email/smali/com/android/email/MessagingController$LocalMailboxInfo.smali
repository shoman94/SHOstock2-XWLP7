.class public Lcom/android/email/MessagingController$LocalMailboxInfo;
.super Ljava/lang/Object;
.source "MessagingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/MessagingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalMailboxInfo"
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# instance fields
.field public final mAccountKey:J

.field public final mDisplayName:Ljava/lang/String;

.field public final mId:J

.field public final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 343
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "displayName"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "accountKey"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/MessagingController$LocalMailboxInfo;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;JI)V
    .locals 0
    .parameter "id"
    .parameter "displayName"
    .parameter "accountKey"
    .parameter "type"

    .prologue
    .line 367
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 368
    iput-wide p1, p0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mId:J

    .line 369
    iput-object p3, p0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mDisplayName:Ljava/lang/String;

    .line 370
    iput-wide p4, p0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mAccountKey:J

    .line 371
    iput p6, p0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mType:I

    .line 372
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 360
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 361
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mId:J

    .line 362
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mDisplayName:Ljava/lang/String;

    .line 363
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mAccountKey:J

    .line 364
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mType:I

    .line 365
    return-void
.end method
