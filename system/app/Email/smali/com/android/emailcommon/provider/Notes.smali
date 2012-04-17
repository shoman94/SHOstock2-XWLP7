.class public final Lcom/android/emailcommon/provider/Notes;
.super Ljava/lang/Object;
.source "Notes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/provider/Notes$Account;,
        Lcom/android/emailcommon/provider/Notes$Body;,
        Lcom/android/emailcommon/provider/Notes$Message;,
        Lcom/android/emailcommon/provider/Notes$AccountColumns;,
        Lcom/android/emailcommon/provider/Notes$BodyColumns;,
        Lcom/android/emailcommon/provider/Notes$MessageColumns;,
        Lcom/android/emailcommon/provider/Notes$Columns;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI_LOCAL:Landroid/net/Uri;

.field public static final CONTENT_URI_SYNC:Landroid/net/Uri;

.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 71
    const-string v0, "content://com.android.notes"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/Notes;->CONTENT_URI:Landroid/net/Uri;

    .line 73
    const-string v0, "content://com.android.notes/syncNote"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/Notes;->CONTENT_URI_SYNC:Landroid/net/Uri;

    .line 75
    const-string v0, "content://com.android.notes/localNote"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/Notes;->CONTENT_URI_LOCAL:Landroid/net/Uri;

    .line 101
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "emailAddress"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "subject"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "categories"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "last_modified_date"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "textContent"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/provider/Notes;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 353
    return-void
.end method
