.class public final Lorg/mozilla/universalchardet/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final CHARSET_BIG5:Ljava/lang/String;

.field public static final CHARSET_EUC_JP:Ljava/lang/String;

.field public static final CHARSET_EUC_KR:Ljava/lang/String;

.field public static final CHARSET_EUC_TW:Ljava/lang/String;

.field public static final CHARSET_GB18030:Ljava/lang/String;

.field public static final CHARSET_HZ_GB_2312:Ljava/lang/String;

.field public static final CHARSET_IBM855:Ljava/lang/String;

.field public static final CHARSET_IBM866:Ljava/lang/String;

.field public static final CHARSET_ISO_2022_CN:Ljava/lang/String;

.field public static final CHARSET_ISO_2022_JP:Ljava/lang/String;

.field public static final CHARSET_ISO_2022_KR:Ljava/lang/String;

.field public static final CHARSET_ISO_8859_5:Ljava/lang/String;

.field public static final CHARSET_ISO_8859_7:Ljava/lang/String;

.field public static final CHARSET_ISO_8859_8:Ljava/lang/String;

.field public static final CHARSET_KOI8_R:Ljava/lang/String;

.field public static final CHARSET_MACCYRILLIC:Ljava/lang/String;

.field public static final CHARSET_SHIFT_JIS:Ljava/lang/String;

.field public static final CHARSET_UTF_16BE:Ljava/lang/String;

.field public static final CHARSET_UTF_16LE:Ljava/lang/String;

.field public static final CHARSET_UTF_32BE:Ljava/lang/String;

.field public static final CHARSET_UTF_32LE:Ljava/lang/String;

.field public static final CHARSET_UTF_8:Ljava/lang/String;

.field public static final CHARSET_WINDOWS_1251:Ljava/lang/String;

.field public static final CHARSET_WINDOWS_1252:Ljava/lang/String;

.field public static final CHARSET_WINDOWS_1253:Ljava/lang/String;

.field public static final CHARSET_WINDOWS_1255:Ljava/lang/String;

.field public static final CHARSET_X_ISO_10646_UCS_4_2143:Ljava/lang/String;

.field public static final CHARSET_X_ISO_10646_UCS_4_3412:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const-string v0, "ISO-2022-JP"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_ISO_2022_JP:Ljava/lang/String;

    .line 6
    const-string v0, "ISO-2022-CN"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_ISO_2022_CN:Ljava/lang/String;

    .line 7
    const-string v0, "ISO-2022-KR"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_ISO_2022_KR:Ljava/lang/String;

    .line 8
    const-string v0, "ISO-8859-5"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_ISO_8859_5:Ljava/lang/String;

    .line 9
    const-string v0, "ISO-8859-7"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_ISO_8859_7:Ljava/lang/String;

    .line 10
    const-string v0, "ISO-8859-8"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_ISO_8859_8:Ljava/lang/String;

    .line 11
    const-string v0, "BIG5"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_BIG5:Ljava/lang/String;

    .line 12
    const-string v0, "GB18030"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_GB18030:Ljava/lang/String;

    .line 13
    const-string v0, "EUC-JP"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_EUC_JP:Ljava/lang/String;

    .line 14
    const-string v0, "EUC-KR"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_EUC_KR:Ljava/lang/String;

    .line 15
    const-string v0, "EUC-TW"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_EUC_TW:Ljava/lang/String;

    .line 16
    const-string v0, "SHIFT_JIS"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_SHIFT_JIS:Ljava/lang/String;

    .line 17
    const-string v0, "IBM855"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_IBM855:Ljava/lang/String;

    .line 18
    const-string v0, "IBM866"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_IBM866:Ljava/lang/String;

    .line 19
    const-string v0, "KOI8-R"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_KOI8_R:Ljava/lang/String;

    .line 20
    const-string v0, "MACCYRILLIC"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_MACCYRILLIC:Ljava/lang/String;

    .line 21
    const-string v0, "WINDOWS-1251"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_WINDOWS_1251:Ljava/lang/String;

    .line 22
    const-string v0, "WINDOWS-1252"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_WINDOWS_1252:Ljava/lang/String;

    .line 23
    const-string v0, "WINDOWS-1253"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_WINDOWS_1253:Ljava/lang/String;

    .line 24
    const-string v0, "WINDOWS-1255"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_WINDOWS_1255:Ljava/lang/String;

    .line 25
    const-string v0, "UTF-8"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_UTF_8:Ljava/lang/String;

    .line 26
    const-string v0, "UTF-16BE"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_UTF_16BE:Ljava/lang/String;

    .line 27
    const-string v0, "UTF-16LE"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_UTF_16LE:Ljava/lang/String;

    .line 28
    const-string v0, "UTF-32BE"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_UTF_32BE:Ljava/lang/String;

    .line 29
    const-string v0, "UTF-32LE"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_UTF_32LE:Ljava/lang/String;

    .line 32
    const-string v0, "HZ-GB-2312"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_HZ_GB_2312:Ljava/lang/String;

    .line 34
    const-string v0, "X-ISO-10646-UCS-4-3412"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_X_ISO_10646_UCS_4_3412:Ljava/lang/String;

    .line 36
    const-string v0, "X-ISO-10646-UCS-4-2143"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_X_ISO_10646_UCS_4_2143:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
