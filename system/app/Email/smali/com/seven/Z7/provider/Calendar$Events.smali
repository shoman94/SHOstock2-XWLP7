.class public final Lcom/seven/Z7/provider/Calendar$Events;
.super Ljava/lang/Object;
.source "Calendar.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/seven/Z7/provider/Calendar$CalendarsColumns;
.implements Lcom/seven/Z7/provider/Calendar$EventsColumns;
.implements Lcom/seven/Z7/provider/SyncConstValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seven/Z7/provider/Calendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Events"
.end annotation


# static fields
.field private static final ATTENDEES_COLUMNS:[Ljava/lang/String;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DELETED_CONTENT_URI:Landroid/net/Uri;

.field private static final FETCH_ENTRY_COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 607
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_sync_account"

    aput-object v1, v0, v2

    const-string v1, "_sync_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/seven/Z7/provider/Calendar$Events;->FETCH_ENTRY_COLUMNS:[Ljava/lang/String;

    .line 611
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "attendeeName"

    aput-object v1, v0, v2

    const-string v1, "attendeeEmail"

    aput-object v1, v0, v3

    const-string v1, "attendeeRelationship"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "attendeeType"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "attendeeStatus"

    aput-object v2, v0, v1

    sput-object v0, Lcom/seven/Z7/provider/Calendar$Events;->ATTENDEES_COLUMNS:[Ljava/lang/String;

    .line 620
    const-string v0, "content://calendar/events"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/seven/Z7/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 622
    const-string v0, "content://calendar/deleted_events"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/seven/Z7/provider/Calendar$Events;->DELETED_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 604
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
