.class public Lcom/seven/Z7/shared/Z7Logger;
.super Ljava/lang/Object;
.source "Z7Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/seven/Z7/shared/Z7Logger$LogHandler;
    }
.end annotation


# static fields
.field private static fh:Ljava/util/logging/FileHandler;

.field public static logger:Ljava/util/logging/Logger;

.field static mDateFormat:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/seven/Z7/shared/Z7Logger;->mDateFormat:Ljava/text/DateFormat;

    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/seven/Z7/shared/Z7Logger;->fh:Ljava/util/logging/FileHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method
