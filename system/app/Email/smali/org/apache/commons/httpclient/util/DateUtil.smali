.class public Lorg/apache/commons/httpclient/util/DateUtil;
.super Ljava/lang/Object;
.source "DateUtil.java"


# static fields
.field private static final DEFAULT_PATTERNS:Ljava/util/Collection;

.field private static final DEFAULT_TWO_DIGIT_YEAR_START:Ljava/util/Date;

.field private static final GMT:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 109
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v4, "EEE MMM d HH:mm:ss yyyy"

    aput-object v4, v1, v2

    const-string v4, "EEEE, dd-MMM-yy HH:mm:ss zzz"

    aput-object v4, v1, v3

    const/4 v4, 0x2

    const-string v5, "EEE, dd MMM yyyy HH:mm:ss zzz"

    aput-object v5, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/httpclient/util/DateUtil;->DEFAULT_PATTERNS:Ljava/util/Collection;

    .line 119
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 121
    .local v0, calendar:Ljava/util/Calendar;
    const/16 v1, 0x7d0

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    .line 123
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/httpclient/util/DateUtil;->DEFAULT_TWO_DIGIT_YEAR_START:Ljava/util/Date;

    .line 127
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/httpclient/util/DateUtil;->GMT:Ljava/util/TimeZone;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 306
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 307
    return-void
.end method
