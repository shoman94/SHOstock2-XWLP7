.class public final Lcom/seven/Z7/provider/Calendar$BusyBits;
.super Ljava/lang/Object;
.source "Calendar.java"

# interfaces
.implements Lcom/seven/Z7/provider/Calendar$BusyBitsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seven/Z7/provider/Calendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BusyBits"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 822
    const-string v0, "content://calendar/busybits/when"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/seven/Z7/provider/Calendar$BusyBits;->CONTENT_URI:Landroid/net/Uri;

    .line 824
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "day"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "busyBits"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "allDayCount"

    aput-object v2, v0, v1

    sput-object v0, Lcom/seven/Z7/provider/Calendar$BusyBits;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 821
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
