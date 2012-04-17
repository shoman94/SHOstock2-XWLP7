.class public Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;
.super Ljava/lang/Object;
.source "URI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/httpclient/URI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocaleToCharsetMap"
.end annotation


# static fields
.field private static final LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 5973
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    .line 5975
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "ar"

    const-string v2, "ISO-8859-6"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5977
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "be"

    const-string v2, "ISO-8859-5"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5979
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "bg"

    const-string v2, "ISO-8859-5"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5981
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "ca"

    const-string v2, "ISO-8859-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5983
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "cs"

    const-string v2, "ISO-8859-2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5985
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "da"

    const-string v2, "ISO-8859-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5987
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "de"

    const-string v2, "ISO-8859-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5989
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "el"

    const-string v2, "ISO-8859-7"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5991
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "en"

    const-string v2, "ISO-8859-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5993
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "es"

    const-string v2, "ISO-8859-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5995
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "et"

    const-string v2, "ISO-8859-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5997
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "fi"

    const-string v2, "ISO-8859-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5999
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "fr"

    const-string v2, "ISO-8859-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6001
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "hr"

    const-string v2, "ISO-8859-2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6003
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "hu"

    const-string v2, "ISO-8859-2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6005
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "is"

    const-string v2, "ISO-8859-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6007
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "it"

    const-string v2, "ISO-8859-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6009
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "iw"

    const-string v2, "ISO-8859-8"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6011
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "ja"

    const-string v2, "Shift_JIS"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6013
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "ko"

    const-string v2, "EUC-KR"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6015
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "lt"

    const-string v2, "ISO-8859-2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6017
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "lv"

    const-string v2, "ISO-8859-2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6019
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "mk"

    const-string v2, "ISO-8859-5"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6021
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "nl"

    const-string v2, "ISO-8859-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6023
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "no"

    const-string v2, "ISO-8859-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6025
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "pl"

    const-string v2, "ISO-8859-2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6027
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "pt"

    const-string v2, "ISO-8859-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6029
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "ro"

    const-string v2, "ISO-8859-2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6031
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "ru"

    const-string v2, "ISO-8859-5"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6033
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "sh"

    const-string v2, "ISO-8859-5"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6035
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "sk"

    const-string v2, "ISO-8859-2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6037
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "sl"

    const-string v2, "ISO-8859-2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6039
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "sq"

    const-string v2, "ISO-8859-2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6041
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "sr"

    const-string v2, "ISO-8859-5"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6043
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "sv"

    const-string v2, "ISO-8859-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6045
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "tr"

    const-string v2, "ISO-8859-9"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6047
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "uk"

    const-string v2, "ISO-8859-5"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6049
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "zh"

    const-string v2, "GB2312"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6051
    sget-object v0, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "zh_TW"

    const-string v2, "Big5"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6053
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5965
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCharset(Ljava/util/Locale;)Ljava/lang/String;
    .locals 4
    .parameter "locale"

    .prologue
    .line 6067
    sget-object v2, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6071
    .local v0, charset:Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 6081
    .end local v0           #charset:Ljava/lang/String;
    .local v1, charset:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 6079
    .end local v1           #charset:Ljava/lang/String;
    .restart local v0       #charset:Ljava/lang/String;
    :cond_0
    sget-object v2, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #charset:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0       #charset:Ljava/lang/String;
    move-object v1, v0

    .line 6081
    .end local v0           #charset:Ljava/lang/String;
    .restart local v1       #charset:Ljava/lang/String;
    goto :goto_0
.end method
