.class public Lcom/android/emailcommon/EasRefs;
.super Ljava/lang/Object;
.source "EasRefs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/EasRefs$EmailDataSize;
    }
.end annotation


# static fields
.field public static DEBUG:Z

.field public static EAS_LOCAL_DB_OPERATION:Z

.field public static FILE_LOG:Z

.field public static final FILTER_1_DAY:Ljava/lang/String;

.field public static final FILTER_1_MONTH:Ljava/lang/String;

.field public static final FILTER_1_WEEK:Ljava/lang/String;

.field public static final FILTER_2_WEEKS:Ljava/lang/String;

.field public static final FILTER_3_DAYS:Ljava/lang/String;

.field public static final FILTER_AUTO:Ljava/lang/String;

.field public static LOGD:Z

.field public static LOG_TAG:Ljava/lang/String;

.field public static PARSER_LOG:Z

.field public static final PLATFORM_VERSION:Ljava/lang/String;

.field public static USER_LOG:Z

.field public static WAIT_DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 34
    sput-boolean v3, Lcom/android/emailcommon/EasRefs;->WAIT_DEBUG:Z

    .line 36
    sput-boolean v3, Lcom/android/emailcommon/EasRefs;->DEBUG:Z

    .line 39
    sput-boolean v3, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    .line 41
    sput-boolean v3, Lcom/android/emailcommon/EasRefs;->PARSER_LOG:Z

    .line 43
    sput-boolean v3, Lcom/android/emailcommon/EasRefs;->FILE_LOG:Z

    .line 73
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "."

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/EasRefs;->PLATFORM_VERSION:Ljava/lang/String;

    .line 114
    const/4 v0, -0x2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/EasRefs;->FILTER_AUTO:Ljava/lang/String;

    .line 116
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/EasRefs;->FILTER_1_DAY:Ljava/lang/String;

    .line 117
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/EasRefs;->FILTER_3_DAYS:Ljava/lang/String;

    .line 118
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/EasRefs;->FILTER_1_WEEK:Ljava/lang/String;

    .line 119
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/EasRefs;->FILTER_2_WEEKS:Ljava/lang/String;

    .line 120
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/EasRefs;->FILTER_1_MONTH:Ljava/lang/String;

    .line 145
    sput-boolean v3, Lcom/android/emailcommon/EasRefs;->LOGD:Z

    .line 146
    const-string v0, "FixIt"

    sput-object v0, Lcom/android/emailcommon/EasRefs;->LOG_TAG:Ljava/lang/String;

    .line 405
    sput-boolean v3, Lcom/android/emailcommon/EasRefs;->EAS_LOCAL_DB_OPERATION:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 158
    return-void
.end method
