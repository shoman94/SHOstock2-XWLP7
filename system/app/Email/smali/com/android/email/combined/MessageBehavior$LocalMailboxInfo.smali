.class Lcom/android/email/combined/MessageBehavior$LocalMailboxInfo;
.super Ljava/lang/Object;
.source "MessageBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/combined/MessageBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalMailboxInfo"
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field mAccountKey:J

.field mDisplayName:Ljava/lang/String;

.field mId:J

.field mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1131
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

    sput-object v0, Lcom/android/email/combined/MessageBehavior$LocalMailboxInfo;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 1144
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1145
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/combined/MessageBehavior$LocalMailboxInfo;->mId:J

    .line 1146
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/combined/MessageBehavior$LocalMailboxInfo;->mDisplayName:Ljava/lang/String;

    .line 1147
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/combined/MessageBehavior$LocalMailboxInfo;->mAccountKey:J

    .line 1148
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/email/combined/MessageBehavior$LocalMailboxInfo;->mType:I

    .line 1149
    return-void
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1122
    sget-object v0, Lcom/android/email/combined/MessageBehavior$LocalMailboxInfo;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method
