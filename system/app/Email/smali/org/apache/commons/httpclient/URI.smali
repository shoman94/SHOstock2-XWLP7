.class public Lorg/apache/commons/httpclient/URI;
.super Ljava/lang/Object;
.source "URI.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;,
        Lorg/apache/commons/httpclient/URI$DefaultCharsetChanged;
    }
.end annotation


# static fields
.field protected static final IPv4address:Ljava/util/BitSet; = null

.field protected static final IPv6address:Ljava/util/BitSet; = null

.field protected static final IPv6reference:Ljava/util/BitSet; = null

.field protected static final URI_reference:Ljava/util/BitSet; = null

.field protected static final abs_path:Ljava/util/BitSet; = null

.field protected static final absoluteURI:Ljava/util/BitSet; = null

.field public static final allowed_IPv6reference:Ljava/util/BitSet; = null

.field public static final allowed_abs_path:Ljava/util/BitSet; = null

.field public static final allowed_authority:Ljava/util/BitSet; = null

.field public static final allowed_fragment:Ljava/util/BitSet; = null

.field public static final allowed_host:Ljava/util/BitSet; = null

.field public static final allowed_opaque_part:Ljava/util/BitSet; = null

.field public static final allowed_query:Ljava/util/BitSet; = null

.field public static final allowed_reg_name:Ljava/util/BitSet; = null

.field public static final allowed_rel_path:Ljava/util/BitSet; = null

.field public static final allowed_userinfo:Ljava/util/BitSet; = null

.field public static final allowed_within_authority:Ljava/util/BitSet; = null

.field public static final allowed_within_path:Ljava/util/BitSet; = null

.field public static final allowed_within_query:Ljava/util/BitSet; = null

.field public static final allowed_within_userinfo:Ljava/util/BitSet; = null

.field protected static final alpha:Ljava/util/BitSet; = null

.field protected static final alphanum:Ljava/util/BitSet; = null

.field protected static final authority:Ljava/util/BitSet; = null

.field public static final control:Ljava/util/BitSet; = null

.field protected static defaultDocumentCharset:Ljava/lang/String; = null

.field protected static defaultDocumentCharsetByLocale:Ljava/lang/String; = null

.field protected static defaultDocumentCharsetByPlatform:Ljava/lang/String; = null

.field protected static defaultProtocolCharset:Ljava/lang/String; = null

.field public static final delims:Ljava/util/BitSet; = null

.field protected static final digit:Ljava/util/BitSet; = null

.field public static final disallowed_opaque_part:Ljava/util/BitSet; = null

.field public static final disallowed_rel_path:Ljava/util/BitSet; = null

.field protected static final domainlabel:Ljava/util/BitSet; = null

.field protected static final escaped:Ljava/util/BitSet; = null

.field protected static final fragment:Ljava/util/BitSet; = null

.field protected static final hex:Ljava/util/BitSet; = null

.field protected static final hier_part:Ljava/util/BitSet; = null

.field protected static final host:Ljava/util/BitSet; = null

.field protected static final hostname:Ljava/util/BitSet; = null

.field protected static final hostport:Ljava/util/BitSet; = null

.field protected static final mark:Ljava/util/BitSet; = null

.field protected static final net_path:Ljava/util/BitSet; = null

.field protected static final opaque_part:Ljava/util/BitSet; = null

.field protected static final param:Ljava/util/BitSet; = null

.field protected static final path:Ljava/util/BitSet; = null

.field protected static final path_segments:Ljava/util/BitSet; = null

.field protected static final pchar:Ljava/util/BitSet; = null

.field protected static final percent:Ljava/util/BitSet; = null

.field protected static final port:Ljava/util/BitSet; = null

.field protected static final query:Ljava/util/BitSet; = null

.field protected static final reg_name:Ljava/util/BitSet; = null

.field protected static final rel_path:Ljava/util/BitSet; = null

.field protected static final rel_segment:Ljava/util/BitSet; = null

.field protected static final relativeURI:Ljava/util/BitSet; = null

.field protected static final reserved:Ljava/util/BitSet; = null

.field protected static final rootPath:[C = null

.field protected static final scheme:Ljava/util/BitSet; = null

.field protected static final segment:Ljava/util/BitSet; = null

.field static final serialVersionUID:J = 0x864831aad836c36L

.field protected static final server:Ljava/util/BitSet;

.field public static final space:Ljava/util/BitSet;

.field protected static final toplabel:Ljava/util/BitSet;

.field protected static final unreserved:Ljava/util/BitSet;

.field public static final unwise:Ljava/util/BitSet;

.field protected static final uric:Ljava/util/BitSet;

.field protected static final uric_no_slash:Ljava/util/BitSet;

.field protected static final userinfo:Ljava/util/BitSet;

.field public static final within_userinfo:Ljava/util/BitSet;


# instance fields
.field protected _authority:[C

.field protected _fragment:[C

.field protected _host:[C

.field protected _is_IPv4address:Z

.field protected _is_IPv6reference:Z

.field protected _is_abs_path:Z

.field protected _is_hier_part:Z

.field protected _is_hostname:Z

.field protected _is_net_path:Z

.field protected _is_opaque_part:Z

.field protected _is_reg_name:Z

.field protected _is_rel_path:Z

.field protected _is_server:Z

.field protected _opaque:[C

.field protected _path:[C

.field protected _port:I

.field protected _query:[C

.field protected _scheme:[C

.field protected _uri:[C

.field protected _userinfo:[C

.field protected hash:I

.field protected protocolCharset:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v9, 0x3a

    const/16 v8, 0x2b

    const/16 v7, 0x3b

    const/16 v6, 0x25

    const/16 v5, 0x100

    .line 945
    const-string v2, "UTF-8"

    sput-object v2, Lorg/apache/commons/httpclient/URI;->defaultProtocolCharset:Ljava/lang/String;

    .line 952
    const/4 v2, 0x0

    sput-object v2, Lorg/apache/commons/httpclient/URI;->defaultDocumentCharset:Ljava/lang/String;

    .line 954
    const/4 v2, 0x0

    sput-object v2, Lorg/apache/commons/httpclient/URI;->defaultDocumentCharsetByLocale:Ljava/lang/String;

    .line 956
    const/4 v2, 0x0

    sput-object v2, Lorg/apache/commons/httpclient/URI;->defaultDocumentCharsetByPlatform:Ljava/lang/String;

    .line 962
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 966
    .local v1, locale:Ljava/util/Locale;
    if-eqz v1, :cond_0

    .line 968
    invoke-static {v1}, Lorg/apache/commons/httpclient/URI$LocaleToCharsetMap;->getCharset(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/httpclient/URI;->defaultDocumentCharsetByLocale:Ljava/lang/String;

    .line 974
    sget-object v2, Lorg/apache/commons/httpclient/URI;->defaultDocumentCharsetByLocale:Ljava/lang/String;

    sput-object v2, Lorg/apache/commons/httpclient/URI;->defaultDocumentCharset:Ljava/lang/String;

    .line 982
    :cond_0
    :try_start_0
    const-string v2, "file.encoding"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/httpclient/URI;->defaultDocumentCharsetByPlatform:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 988
    :goto_0
    sget-object v2, Lorg/apache/commons/httpclient/URI;->defaultDocumentCharset:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 992
    sget-object v2, Lorg/apache/commons/httpclient/URI;->defaultDocumentCharsetByPlatform:Ljava/lang/String;

    sput-object v2, Lorg/apache/commons/httpclient/URI;->defaultDocumentCharset:Ljava/lang/String;

    .line 1056
    :cond_1
    const/4 v2, 0x1

    new-array v2, v2, [C

    const/4 v3, 0x0

    const/16 v4, 0x2f

    aput-char v4, v2, v3

    sput-object v2, Lorg/apache/commons/httpclient/URI;->rootPath:[C

    .line 1068
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->percent:Ljava/util/BitSet;

    .line 1074
    sget-object v2, Lorg/apache/commons/httpclient/URI;->percent:Ljava/util/BitSet;

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->set(I)V

    .line 1095
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->digit:Ljava/util/BitSet;

    .line 1101
    const/16 v0, 0x30

    .local v0, i:I
    :goto_1
    const/16 v2, 0x39

    if-gt v0, v2, :cond_2

    .line 1103
    sget-object v2, Lorg/apache/commons/httpclient/URI;->digit:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->set(I)V

    .line 1101
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1124
    :cond_2
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->alpha:Ljava/util/BitSet;

    .line 1130
    const/16 v0, 0x61

    :goto_2
    const/16 v2, 0x7a

    if-gt v0, v2, :cond_3

    .line 1132
    sget-object v2, Lorg/apache/commons/httpclient/URI;->alpha:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->set(I)V

    .line 1130
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1136
    :cond_3
    const/16 v0, 0x41

    :goto_3
    const/16 v2, 0x5a

    if-gt v0, v2, :cond_4

    .line 1138
    sget-object v2, Lorg/apache/commons/httpclient/URI;->alpha:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->set(I)V

    .line 1136
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1159
    :cond_4
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->alphanum:Ljava/util/BitSet;

    .line 1165
    sget-object v2, Lorg/apache/commons/httpclient/URI;->alphanum:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->alpha:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1167
    sget-object v2, Lorg/apache/commons/httpclient/URI;->alphanum:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->digit:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1188
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->hex:Ljava/util/BitSet;

    .line 1194
    sget-object v2, Lorg/apache/commons/httpclient/URI;->hex:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->digit:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1196
    const/16 v0, 0x61

    :goto_4
    const/16 v2, 0x66

    if-gt v0, v2, :cond_5

    .line 1198
    sget-object v2, Lorg/apache/commons/httpclient/URI;->hex:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->set(I)V

    .line 1196
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1202
    :cond_5
    const/16 v0, 0x41

    :goto_5
    const/16 v2, 0x46

    if-gt v0, v2, :cond_6

    .line 1204
    sget-object v2, Lorg/apache/commons/httpclient/URI;->hex:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->set(I)V

    .line 1202
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1225
    :cond_6
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->escaped:Ljava/util/BitSet;

    .line 1231
    sget-object v2, Lorg/apache/commons/httpclient/URI;->escaped:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->percent:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1233
    sget-object v2, Lorg/apache/commons/httpclient/URI;->escaped:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->hex:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1254
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->mark:Ljava/util/BitSet;

    .line 1260
    sget-object v2, Lorg/apache/commons/httpclient/URI;->mark:Ljava/util/BitSet;

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 1262
    sget-object v2, Lorg/apache/commons/httpclient/URI;->mark:Ljava/util/BitSet;

    const/16 v3, 0x5f

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 1264
    sget-object v2, Lorg/apache/commons/httpclient/URI;->mark:Ljava/util/BitSet;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 1266
    sget-object v2, Lorg/apache/commons/httpclient/URI;->mark:Ljava/util/BitSet;

    const/16 v3, 0x21

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 1268
    sget-object v2, Lorg/apache/commons/httpclient/URI;->mark:Ljava/util/BitSet;

    const/16 v3, 0x7e

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 1270
    sget-object v2, Lorg/apache/commons/httpclient/URI;->mark:Ljava/util/BitSet;

    const/16 v3, 0x2a

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 1272
    sget-object v2, Lorg/apache/commons/httpclient/URI;->mark:Ljava/util/BitSet;

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 1274
    sget-object v2, Lorg/apache/commons/httpclient/URI;->mark:Ljava/util/BitSet;

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 1276
    sget-object v2, Lorg/apache/commons/httpclient/URI;->mark:Ljava/util/BitSet;

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 1296
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->unreserved:Ljava/util/BitSet;

    .line 1302
    sget-object v2, Lorg/apache/commons/httpclient/URI;->unreserved:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->alphanum:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1304
    sget-object v2, Lorg/apache/commons/httpclient/URI;->unreserved:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->mark:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1325
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->reserved:Ljava/util/BitSet;

    .line 1331
    sget-object v2, Lorg/apache/commons/httpclient/URI;->reserved:Ljava/util/BitSet;

    invoke-virtual {v2, v7}, Ljava/util/BitSet;->set(I)V

    .line 1333
    sget-object v2, Lorg/apache/commons/httpclient/URI;->reserved:Ljava/util/BitSet;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 1335
    sget-object v2, Lorg/apache/commons/httpclient/URI;->reserved:Ljava/util/BitSet;

    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 1337
    sget-object v2, Lorg/apache/commons/httpclient/URI;->reserved:Ljava/util/BitSet;

    invoke-virtual {v2, v9}, Ljava/util/BitSet;->set(I)V

    .line 1339
    sget-object v2, Lorg/apache/commons/httpclient/URI;->reserved:Ljava/util/BitSet;

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 1341
    sget-object v2, Lorg/apache/commons/httpclient/URI;->reserved:Ljava/util/BitSet;

    const/16 v3, 0x26

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 1343
    sget-object v2, Lorg/apache/commons/httpclient/URI;->reserved:Ljava/util/BitSet;

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 1345
    sget-object v2, Lorg/apache/commons/httpclient/URI;->reserved:Ljava/util/BitSet;

    invoke-virtual {v2, v8}, Ljava/util/BitSet;->set(I)V

    .line 1347
    sget-object v2, Lorg/apache/commons/httpclient/URI;->reserved:Ljava/util/BitSet;

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 1349
    sget-object v2, Lorg/apache/commons/httpclient/URI;->reserved:Ljava/util/BitSet;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 1368
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->uric:Ljava/util/BitSet;

    .line 1374
    sget-object v2, Lorg/apache/commons/httpclient/URI;->uric:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->reserved:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1376
    sget-object v2, Lorg/apache/commons/httpclient/URI;->uric:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->unreserved:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1378
    sget-object v2, Lorg/apache/commons/httpclient/URI;->uric:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->escaped:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1397
    sget-object v2, Lorg/apache/commons/httpclient/URI;->uric:Ljava/util/BitSet;

    sput-object v2, Lorg/apache/commons/httpclient/URI;->fragment:Ljava/util/BitSet;

    .line 1414
    sget-object v2, Lorg/apache/commons/httpclient/URI;->uric:Ljava/util/BitSet;

    sput-object v2, Lorg/apache/commons/httpclient/URI;->query:Ljava/util/BitSet;

    .line 1433
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->pchar:Ljava/util/BitSet;

    .line 1439
    sget-object v2, Lorg/apache/commons/httpclient/URI;->pchar:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->unreserved:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1441
    sget-object v2, Lorg/apache/commons/httpclient/URI;->pchar:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->escaped:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1443
    sget-object v2, Lorg/apache/commons/httpclient/URI;->pchar:Ljava/util/BitSet;

    invoke-virtual {v2, v9}, Ljava/util/BitSet;->set(I)V

    .line 1445
    sget-object v2, Lorg/apache/commons/httpclient/URI;->pchar:Ljava/util/BitSet;

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 1447
    sget-object v2, Lorg/apache/commons/httpclient/URI;->pchar:Ljava/util/BitSet;

    const/16 v3, 0x26

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 1449
    sget-object v2, Lorg/apache/commons/httpclient/URI;->pchar:Ljava/util/BitSet;

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 1451
    sget-object v2, Lorg/apache/commons/httpclient/URI;->pchar:Ljava/util/BitSet;

    invoke-virtual {v2, v8}, Ljava/util/BitSet;->set(I)V

    .line 1453
    sget-object v2, Lorg/apache/commons/httpclient/URI;->pchar:Ljava/util/BitSet;

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 1455
    sget-object v2, Lorg/apache/commons/httpclient/URI;->pchar:Ljava/util/BitSet;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 1474
    sget-object v2, Lorg/apache/commons/httpclient/URI;->pchar:Ljava/util/BitSet;

    sput-object v2, Lorg/apache/commons/httpclient/URI;->param:Ljava/util/BitSet;

    .line 1491
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->segment:Ljava/util/BitSet;

    .line 1497
    sget-object v2, Lorg/apache/commons/httpclient/URI;->segment:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->pchar:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1499
    sget-object v2, Lorg/apache/commons/httpclient/URI;->segment:Ljava/util/BitSet;

    invoke-virtual {v2, v7}, Ljava/util/BitSet;->set(I)V

    .line 1501
    sget-object v2, Lorg/apache/commons/httpclient/URI;->segment:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->param:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1520
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->path_segments:Ljava/util/BitSet;

    .line 1526
    sget-object v2, Lorg/apache/commons/httpclient/URI;->path_segments:Ljava/util/BitSet;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 1528
    sget-object v2, Lorg/apache/commons/httpclient/URI;->path_segments:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->segment:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1547
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->abs_path:Ljava/util/BitSet;

    .line 1553
    sget-object v2, Lorg/apache/commons/httpclient/URI;->abs_path:Ljava/util/BitSet;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 1555
    sget-object v2, Lorg/apache/commons/httpclient/URI;->abs_path:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->path_segments:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1576
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->uric_no_slash:Ljava/util/BitSet;

    .line 1582
    sget-object v2, Lorg/apache/commons/httpclient/URI;->uric_no_slash:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->unreserved:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1584
    sget-object v2, Lorg/apache/commons/httpclient/URI;->uric_no_slash:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->escaped:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1586
    sget-object v2, Lorg/apache/commons/httpclient/URI;->uric_no_slash:Ljava/util/BitSet;

    invoke-virtual {v2, v7}, Ljava/util/BitSet;->set(I)V

    .line 1588
    sget-object v2, Lorg/apache/commons/httpclient/URI;->uric_no_slash:Ljava/util/BitSet;

    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 1590
    sget-object v2, Lorg/apache/commons/httpclient/URI;->uric_no_slash:Ljava/util/BitSet;

    invoke-virtual {v2, v7}, Ljava/util/BitSet;->set(I)V

    .line 1592
    sget-object v2, Lorg/apache/commons/httpclient/URI;->uric_no_slash:Ljava/util/BitSet;

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 1594
    sget-object v2, Lorg/apache/commons/httpclient/URI;->uric_no_slash:Ljava/util/BitSet;

    const/16 v3, 0x26

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 1596
    sget-object v2, Lorg/apache/commons/httpclient/URI;->uric_no_slash:Ljava/util/BitSet;

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 1598
    sget-object v2, Lorg/apache/commons/httpclient/URI;->uric_no_slash:Ljava/util/BitSet;

    invoke-virtual {v2, v8}, Ljava/util/BitSet;->set(I)V

    .line 1600
    sget-object v2, Lorg/apache/commons/httpclient/URI;->uric_no_slash:Ljava/util/BitSet;

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 1602
    sget-object v2, Lorg/apache/commons/httpclient/URI;->uric_no_slash:Ljava/util/BitSet;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 1621
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->opaque_part:Ljava/util/BitSet;

    .line 1629
    sget-object v2, Lorg/apache/commons/httpclient/URI;->opaque_part:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->uric_no_slash:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1631
    sget-object v2, Lorg/apache/commons/httpclient/URI;->opaque_part:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->uric:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1650
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->path:Ljava/util/BitSet;

    .line 1656
    sget-object v2, Lorg/apache/commons/httpclient/URI;->path:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->abs_path:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1658
    sget-object v2, Lorg/apache/commons/httpclient/URI;->path:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->opaque_part:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1666
    sget-object v2, Lorg/apache/commons/httpclient/URI;->digit:Ljava/util/BitSet;

    sput-object v2, Lorg/apache/commons/httpclient/URI;->port:Ljava/util/BitSet;

    .line 1683
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->IPv4address:Ljava/util/BitSet;

    .line 1689
    sget-object v2, Lorg/apache/commons/httpclient/URI;->IPv4address:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->digit:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1691
    sget-object v2, Lorg/apache/commons/httpclient/URI;->IPv4address:Ljava/util/BitSet;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 1710
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->IPv6address:Ljava/util/BitSet;

    .line 1716
    sget-object v2, Lorg/apache/commons/httpclient/URI;->IPv6address:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->hex:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1718
    sget-object v2, Lorg/apache/commons/httpclient/URI;->IPv6address:Ljava/util/BitSet;

    invoke-virtual {v2, v9}, Ljava/util/BitSet;->set(I)V

    .line 1720
    sget-object v2, Lorg/apache/commons/httpclient/URI;->IPv6address:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->IPv4address:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1739
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->IPv6reference:Ljava/util/BitSet;

    .line 1745
    sget-object v2, Lorg/apache/commons/httpclient/URI;->IPv6reference:Ljava/util/BitSet;

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 1747
    sget-object v2, Lorg/apache/commons/httpclient/URI;->IPv6reference:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->IPv6address:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1749
    sget-object v2, Lorg/apache/commons/httpclient/URI;->IPv6reference:Ljava/util/BitSet;

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 1768
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->toplabel:Ljava/util/BitSet;

    .line 1774
    sget-object v2, Lorg/apache/commons/httpclient/URI;->toplabel:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->alphanum:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1776
    sget-object v2, Lorg/apache/commons/httpclient/URI;->toplabel:Ljava/util/BitSet;

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 1795
    sget-object v2, Lorg/apache/commons/httpclient/URI;->toplabel:Ljava/util/BitSet;

    sput-object v2, Lorg/apache/commons/httpclient/URI;->domainlabel:Ljava/util/BitSet;

    .line 1812
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->hostname:Ljava/util/BitSet;

    .line 1818
    sget-object v2, Lorg/apache/commons/httpclient/URI;->hostname:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->toplabel:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1822
    sget-object v2, Lorg/apache/commons/httpclient/URI;->hostname:Ljava/util/BitSet;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 1841
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->host:Ljava/util/BitSet;

    .line 1847
    sget-object v2, Lorg/apache/commons/httpclient/URI;->host:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->hostname:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1851
    sget-object v2, Lorg/apache/commons/httpclient/URI;->host:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->IPv6reference:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1870
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->hostport:Ljava/util/BitSet;

    .line 1876
    sget-object v2, Lorg/apache/commons/httpclient/URI;->hostport:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->host:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1878
    sget-object v2, Lorg/apache/commons/httpclient/URI;->hostport:Ljava/util/BitSet;

    invoke-virtual {v2, v9}, Ljava/util/BitSet;->set(I)V

    .line 1880
    sget-object v2, Lorg/apache/commons/httpclient/URI;->hostport:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->port:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1901
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->userinfo:Ljava/util/BitSet;

    .line 1907
    sget-object v2, Lorg/apache/commons/httpclient/URI;->userinfo:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->unreserved:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1909
    sget-object v2, Lorg/apache/commons/httpclient/URI;->userinfo:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->escaped:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1911
    sget-object v2, Lorg/apache/commons/httpclient/URI;->userinfo:Ljava/util/BitSet;

    invoke-virtual {v2, v7}, Ljava/util/BitSet;->set(I)V

    .line 1913
    sget-object v2, Lorg/apache/commons/httpclient/URI;->userinfo:Ljava/util/BitSet;

    invoke-virtual {v2, v9}, Ljava/util/BitSet;->set(I)V

    .line 1915
    sget-object v2, Lorg/apache/commons/httpclient/URI;->userinfo:Ljava/util/BitSet;

    const/16 v3, 0x26

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 1917
    sget-object v2, Lorg/apache/commons/httpclient/URI;->userinfo:Ljava/util/BitSet;

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 1919
    sget-object v2, Lorg/apache/commons/httpclient/URI;->userinfo:Ljava/util/BitSet;

    invoke-virtual {v2, v8}, Ljava/util/BitSet;->set(I)V

    .line 1921
    sget-object v2, Lorg/apache/commons/httpclient/URI;->userinfo:Ljava/util/BitSet;

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 1923
    sget-object v2, Lorg/apache/commons/httpclient/URI;->userinfo:Ljava/util/BitSet;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 1931
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->within_userinfo:Ljava/util/BitSet;

    .line 1937
    sget-object v2, Lorg/apache/commons/httpclient/URI;->within_userinfo:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->userinfo:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1939
    sget-object v2, Lorg/apache/commons/httpclient/URI;->within_userinfo:Ljava/util/BitSet;

    invoke-virtual {v2, v7}, Ljava/util/BitSet;->clear(I)V

    .line 1941
    sget-object v2, Lorg/apache/commons/httpclient/URI;->within_userinfo:Ljava/util/BitSet;

    invoke-virtual {v2, v9}, Ljava/util/BitSet;->clear(I)V

    .line 1943
    sget-object v2, Lorg/apache/commons/httpclient/URI;->within_userinfo:Ljava/util/BitSet;

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->clear(I)V

    .line 1945
    sget-object v2, Lorg/apache/commons/httpclient/URI;->within_userinfo:Ljava/util/BitSet;

    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->clear(I)V

    .line 1947
    sget-object v2, Lorg/apache/commons/httpclient/URI;->within_userinfo:Ljava/util/BitSet;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->clear(I)V

    .line 1966
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->server:Ljava/util/BitSet;

    .line 1972
    sget-object v2, Lorg/apache/commons/httpclient/URI;->server:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->userinfo:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1974
    sget-object v2, Lorg/apache/commons/httpclient/URI;->server:Ljava/util/BitSet;

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 1976
    sget-object v2, Lorg/apache/commons/httpclient/URI;->server:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->hostport:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1997
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->reg_name:Ljava/util/BitSet;

    .line 2003
    sget-object v2, Lorg/apache/commons/httpclient/URI;->reg_name:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->unreserved:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 2005
    sget-object v2, Lorg/apache/commons/httpclient/URI;->reg_name:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->escaped:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 2007
    sget-object v2, Lorg/apache/commons/httpclient/URI;->reg_name:Ljava/util/BitSet;

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 2009
    sget-object v2, Lorg/apache/commons/httpclient/URI;->reg_name:Ljava/util/BitSet;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 2011
    sget-object v2, Lorg/apache/commons/httpclient/URI;->reg_name:Ljava/util/BitSet;

    invoke-virtual {v2, v7}, Ljava/util/BitSet;->set(I)V

    .line 2013
    sget-object v2, Lorg/apache/commons/httpclient/URI;->reg_name:Ljava/util/BitSet;

    invoke-virtual {v2, v9}, Ljava/util/BitSet;->set(I)V

    .line 2015
    sget-object v2, Lorg/apache/commons/httpclient/URI;->reg_name:Ljava/util/BitSet;

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 2017
    sget-object v2, Lorg/apache/commons/httpclient/URI;->reg_name:Ljava/util/BitSet;

    const/16 v3, 0x26

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 2019
    sget-object v2, Lorg/apache/commons/httpclient/URI;->reg_name:Ljava/util/BitSet;

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 2021
    sget-object v2, Lorg/apache/commons/httpclient/URI;->reg_name:Ljava/util/BitSet;

    invoke-virtual {v2, v8}, Ljava/util/BitSet;->set(I)V

    .line 2040
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->authority:Ljava/util/BitSet;

    .line 2046
    sget-object v2, Lorg/apache/commons/httpclient/URI;->authority:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->server:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 2048
    sget-object v2, Lorg/apache/commons/httpclient/URI;->authority:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->reg_name:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 2067
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->scheme:Ljava/util/BitSet;

    .line 2073
    sget-object v2, Lorg/apache/commons/httpclient/URI;->scheme:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->alpha:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 2075
    sget-object v2, Lorg/apache/commons/httpclient/URI;->scheme:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->digit:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 2077
    sget-object v2, Lorg/apache/commons/httpclient/URI;->scheme:Ljava/util/BitSet;

    invoke-virtual {v2, v8}, Ljava/util/BitSet;->set(I)V

    .line 2079
    sget-object v2, Lorg/apache/commons/httpclient/URI;->scheme:Ljava/util/BitSet;

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 2081
    sget-object v2, Lorg/apache/commons/httpclient/URI;->scheme:Ljava/util/BitSet;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 2102
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->rel_segment:Ljava/util/BitSet;

    .line 2108
    sget-object v2, Lorg/apache/commons/httpclient/URI;->rel_segment:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->unreserved:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 2110
    sget-object v2, Lorg/apache/commons/httpclient/URI;->rel_segment:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->escaped:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 2112
    sget-object v2, Lorg/apache/commons/httpclient/URI;->rel_segment:Ljava/util/BitSet;

    invoke-virtual {v2, v7}, Ljava/util/BitSet;->set(I)V

    .line 2114
    sget-object v2, Lorg/apache/commons/httpclient/URI;->rel_segment:Ljava/util/BitSet;

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 2116
    sget-object v2, Lorg/apache/commons/httpclient/URI;->rel_segment:Ljava/util/BitSet;

    const/16 v3, 0x26

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 2118
    sget-object v2, Lorg/apache/commons/httpclient/URI;->rel_segment:Ljava/util/BitSet;

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 2120
    sget-object v2, Lorg/apache/commons/httpclient/URI;->rel_segment:Ljava/util/BitSet;

    invoke-virtual {v2, v8}, Ljava/util/BitSet;->set(I)V

    .line 2122
    sget-object v2, Lorg/apache/commons/httpclient/URI;->rel_segment:Ljava/util/BitSet;

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 2124
    sget-object v2, Lorg/apache/commons/httpclient/URI;->rel_segment:Ljava/util/BitSet;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 2143
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->rel_path:Ljava/util/BitSet;

    .line 2149
    sget-object v2, Lorg/apache/commons/httpclient/URI;->rel_path:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->rel_segment:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 2151
    sget-object v2, Lorg/apache/commons/httpclient/URI;->rel_path:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->abs_path:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 2170
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->net_path:Ljava/util/BitSet;

    .line 2176
    sget-object v2, Lorg/apache/commons/httpclient/URI;->net_path:Ljava/util/BitSet;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 2178
    sget-object v2, Lorg/apache/commons/httpclient/URI;->net_path:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->authority:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 2180
    sget-object v2, Lorg/apache/commons/httpclient/URI;->net_path:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->abs_path:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 2199
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->hier_part:Ljava/util/BitSet;

    .line 2205
    sget-object v2, Lorg/apache/commons/httpclient/URI;->hier_part:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->net_path:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 2207
    sget-object v2, Lorg/apache/commons/httpclient/URI;->hier_part:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->abs_path:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 2211
    sget-object v2, Lorg/apache/commons/httpclient/URI;->hier_part:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->query:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 2230
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->relativeURI:Ljava/util/BitSet;

    .line 2236
    sget-object v2, Lorg/apache/commons/httpclient/URI;->relativeURI:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->net_path:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 2238
    sget-object v2, Lorg/apache/commons/httpclient/URI;->relativeURI:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->abs_path:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 2240
    sget-object v2, Lorg/apache/commons/httpclient/URI;->relativeURI:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->rel_path:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 2244
    sget-object v2, Lorg/apache/commons/httpclient/URI;->relativeURI:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->query:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 2263
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->absoluteURI:Ljava/util/BitSet;

    .line 2269
    sget-object v2, Lorg/apache/commons/httpclient/URI;->absoluteURI:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->scheme:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 2271
    sget-object v2, Lorg/apache/commons/httpclient/URI;->absoluteURI:Ljava/util/BitSet;

    invoke-virtual {v2, v9}, Ljava/util/BitSet;->set(I)V

    .line 2273
    sget-object v2, Lorg/apache/commons/httpclient/URI;->absoluteURI:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->hier_part:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 2275
    sget-object v2, Lorg/apache/commons/httpclient/URI;->absoluteURI:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->opaque_part:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 2294
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->URI_reference:Ljava/util/BitSet;

    .line 2300
    sget-object v2, Lorg/apache/commons/httpclient/URI;->URI_reference:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->absoluteURI:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 2302
    sget-object v2, Lorg/apache/commons/httpclient/URI;->URI_reference:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->relativeURI:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 2304
    sget-object v2, Lorg/apache/commons/httpclient/URI;->URI_reference:Ljava/util/BitSet;

    const/16 v3, 0x23

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 2306
    sget-object v2, Lorg/apache/commons/httpclient/URI;->URI_reference:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->fragment:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 2318
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->control:Ljava/util/BitSet;

    .line 2324
    const/4 v0, 0x0

    :goto_6
    const/16 v2, 0x1f

    if-gt v0, v2, :cond_7

    .line 2326
    sget-object v2, Lorg/apache/commons/httpclient/URI;->control:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->set(I)V

    .line 2324
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 2330
    :cond_7
    sget-object v2, Lorg/apache/commons/httpclient/URI;->control:Ljava/util/BitSet;

    const/16 v3, 0x7f

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 2338
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->space:Ljava/util/BitSet;

    .line 2344
    sget-object v2, Lorg/apache/commons/httpclient/URI;->space:Ljava/util/BitSet;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 2352
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->delims:Ljava/util/BitSet;

    .line 2358
    sget-object v2, Lorg/apache/commons/httpclient/URI;->delims:Ljava/util/BitSet;

    const/16 v3, 0x3c

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 2360
    sget-object v2, Lorg/apache/commons/httpclient/URI;->delims:Ljava/util/BitSet;

    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 2362
    sget-object v2, Lorg/apache/commons/httpclient/URI;->delims:Ljava/util/BitSet;

    const/16 v3, 0x23

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 2364
    sget-object v2, Lorg/apache/commons/httpclient/URI;->delims:Ljava/util/BitSet;

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->set(I)V

    .line 2366
    sget-object v2, Lorg/apache/commons/httpclient/URI;->delims:Ljava/util/BitSet;

    const/16 v3, 0x22

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 2374
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->unwise:Ljava/util/BitSet;

    .line 2380
    sget-object v2, Lorg/apache/commons/httpclient/URI;->unwise:Ljava/util/BitSet;

    const/16 v3, 0x7b

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 2382
    sget-object v2, Lorg/apache/commons/httpclient/URI;->unwise:Ljava/util/BitSet;

    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 2384
    sget-object v2, Lorg/apache/commons/httpclient/URI;->unwise:Ljava/util/BitSet;

    const/16 v3, 0x7c

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 2386
    sget-object v2, Lorg/apache/commons/httpclient/URI;->unwise:Ljava/util/BitSet;

    const/16 v3, 0x5c

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 2388
    sget-object v2, Lorg/apache/commons/httpclient/URI;->unwise:Ljava/util/BitSet;

    const/16 v3, 0x5e

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 2390
    sget-object v2, Lorg/apache/commons/httpclient/URI;->unwise:Ljava/util/BitSet;

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 2392
    sget-object v2, Lorg/apache/commons/httpclient/URI;->unwise:Ljava/util/BitSet;

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 2394
    sget-object v2, Lorg/apache/commons/httpclient/URI;->unwise:Ljava/util/BitSet;

    const/16 v3, 0x60

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 2402
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->disallowed_rel_path:Ljava/util/BitSet;

    .line 2408
    sget-object v2, Lorg/apache/commons/httpclient/URI;->disallowed_rel_path:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->uric:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 2410
    sget-object v2, Lorg/apache/commons/httpclient/URI;->disallowed_rel_path:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->rel_path:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    .line 2418
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->disallowed_opaque_part:Ljava/util/BitSet;

    .line 2424
    sget-object v2, Lorg/apache/commons/httpclient/URI;->disallowed_opaque_part:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->uric:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 2426
    sget-object v2, Lorg/apache/commons/httpclient/URI;->disallowed_opaque_part:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->opaque_part:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    .line 2436
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->allowed_authority:Ljava/util/BitSet;

    .line 2442
    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_authority:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->authority:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 2444
    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_authority:Ljava/util/BitSet;

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->clear(I)V

    .line 2452
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->allowed_opaque_part:Ljava/util/BitSet;

    .line 2458
    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_opaque_part:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->opaque_part:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 2460
    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_opaque_part:Ljava/util/BitSet;

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->clear(I)V

    .line 2468
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->allowed_reg_name:Ljava/util/BitSet;

    .line 2474
    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_reg_name:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->reg_name:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 2478
    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_reg_name:Ljava/util/BitSet;

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->clear(I)V

    .line 2486
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->allowed_userinfo:Ljava/util/BitSet;

    .line 2492
    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_userinfo:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->userinfo:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 2496
    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_userinfo:Ljava/util/BitSet;

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->clear(I)V

    .line 2504
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->allowed_within_userinfo:Ljava/util/BitSet;

    .line 2510
    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_within_userinfo:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->within_userinfo:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 2512
    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_within_userinfo:Ljava/util/BitSet;

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->clear(I)V

    .line 2521
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->allowed_IPv6reference:Ljava/util/BitSet;

    .line 2527
    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_IPv6reference:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->IPv6reference:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 2531
    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_IPv6reference:Ljava/util/BitSet;

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->clear(I)V

    .line 2533
    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_IPv6reference:Ljava/util/BitSet;

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->clear(I)V

    .line 2542
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->allowed_host:Ljava/util/BitSet;

    .line 2548
    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_host:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->hostname:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 2550
    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_host:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->allowed_IPv6reference:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 2558
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->allowed_within_authority:Ljava/util/BitSet;

    .line 2564
    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_within_authority:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->server:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 2566
    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_within_authority:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->reg_name:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 2568
    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_within_authority:Ljava/util/BitSet;

    invoke-virtual {v2, v7}, Ljava/util/BitSet;->clear(I)V

    .line 2570
    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_within_authority:Ljava/util/BitSet;

    invoke-virtual {v2, v9}, Ljava/util/BitSet;->clear(I)V

    .line 2572
    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_within_authority:Ljava/util/BitSet;

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->clear(I)V

    .line 2574
    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_within_authority:Ljava/util/BitSet;

    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->clear(I)V

    .line 2576
    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_within_authority:Ljava/util/BitSet;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->clear(I)V

    .line 2584
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->allowed_abs_path:Ljava/util/BitSet;

    .line 2590
    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_abs_path:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->abs_path:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 2594
    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_abs_path:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->percent:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    .line 2596
    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_abs_path:Ljava/util/BitSet;

    invoke-virtual {v2, v8}, Ljava/util/BitSet;->clear(I)V

    .line 2604
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->allowed_rel_path:Ljava/util/BitSet;

    .line 2610
    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_rel_path:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->rel_path:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 2612
    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_rel_path:Ljava/util/BitSet;

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->clear(I)V

    .line 2614
    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_rel_path:Ljava/util/BitSet;

    invoke-virtual {v2, v8}, Ljava/util/BitSet;->clear(I)V

    .line 2622
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->allowed_within_path:Ljava/util/BitSet;

    .line 2628
    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_within_path:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->abs_path:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 2630
    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_within_path:Ljava/util/BitSet;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->clear(I)V

    .line 2632
    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_within_path:Ljava/util/BitSet;

    invoke-virtual {v2, v7}, Ljava/util/BitSet;->clear(I)V

    .line 2634
    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_within_path:Ljava/util/BitSet;

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->clear(I)V

    .line 2636
    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_within_path:Ljava/util/BitSet;

    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->clear(I)V

    .line 2644
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->allowed_query:Ljava/util/BitSet;

    .line 2650
    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_query:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->uric:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 2652
    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_query:Ljava/util/BitSet;

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->clear(I)V

    .line 2660
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->allowed_within_query:Ljava/util/BitSet;

    .line 2666
    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_within_query:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->allowed_query:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 2668
    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_within_query:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->reserved:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    .line 2676
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v5}, Ljava/util/BitSet;-><init>(I)V

    sput-object v2, Lorg/apache/commons/httpclient/URI;->allowed_fragment:Ljava/util/BitSet;

    .line 2682
    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_fragment:Ljava/util/BitSet;

    sget-object v3, Lorg/apache/commons/httpclient/URI;->uric:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 2684
    sget-object v2, Lorg/apache/commons/httpclient/URI;->allowed_fragment:Ljava/util/BitSet;

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->clear(I)V

    .line 2686
    return-void

    .line 984
    .end local v0           #i:I
    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 214
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 925
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/httpclient/URI;->hash:I

    .line 933
    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_uri:[C

    .line 939
    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->protocolCharset:Ljava/lang/String;

    .line 1002
    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    .line 1008
    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_opaque:[C

    .line 1014
    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    .line 1020
    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_userinfo:[C

    .line 1026
    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_host:[C

    .line 1032
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/httpclient/URI;->_port:I

    .line 1038
    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    .line 1044
    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    .line 1050
    iput-object v1, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    .line 216
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .parameter "ois"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5605
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 5607
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .parameter "oos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5588
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 5590
    return-void
.end method


# virtual methods
.method public declared-synchronized clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 5691
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/URI;

    .line 5693
    .local v0, instance:Lorg/apache/commons/httpclient/URI;
    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_uri:[C

    iput-object v1, v0, Lorg/apache/commons/httpclient/URI;->_uri:[C

    .line 5695
    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    iput-object v1, v0, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    .line 5697
    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_opaque:[C

    iput-object v1, v0, Lorg/apache/commons/httpclient/URI;->_opaque:[C

    .line 5699
    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    iput-object v1, v0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    .line 5701
    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_userinfo:[C

    iput-object v1, v0, Lorg/apache/commons/httpclient/URI;->_userinfo:[C

    .line 5703
    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_host:[C

    iput-object v1, v0, Lorg/apache/commons/httpclient/URI;->_host:[C

    .line 5705
    iget v1, p0, Lorg/apache/commons/httpclient/URI;->_port:I

    iput v1, v0, Lorg/apache/commons/httpclient/URI;->_port:I

    .line 5707
    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    iput-object v1, v0, Lorg/apache/commons/httpclient/URI;->_path:[C

    .line 5709
    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    iput-object v1, v0, Lorg/apache/commons/httpclient/URI;->_query:[C

    .line 5711
    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    iput-object v1, v0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    .line 5715
    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->protocolCharset:Ljava/lang/String;

    iput-object v1, v0, Lorg/apache/commons/httpclient/URI;->protocolCharset:Ljava/lang/String;

    .line 5719
    iget-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_hier_part:Z

    iput-boolean v1, v0, Lorg/apache/commons/httpclient/URI;->_is_hier_part:Z

    .line 5721
    iget-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_opaque_part:Z

    iput-boolean v1, v0, Lorg/apache/commons/httpclient/URI;->_is_opaque_part:Z

    .line 5723
    iget-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_net_path:Z

    iput-boolean v1, v0, Lorg/apache/commons/httpclient/URI;->_is_net_path:Z

    .line 5725
    iget-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_abs_path:Z

    iput-boolean v1, v0, Lorg/apache/commons/httpclient/URI;->_is_abs_path:Z

    .line 5727
    iget-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_rel_path:Z

    iput-boolean v1, v0, Lorg/apache/commons/httpclient/URI;->_is_rel_path:Z

    .line 5729
    iget-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_reg_name:Z

    iput-boolean v1, v0, Lorg/apache/commons/httpclient/URI;->_is_reg_name:Z

    .line 5731
    iget-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_server:Z

    iput-boolean v1, v0, Lorg/apache/commons/httpclient/URI;->_is_server:Z

    .line 5733
    iget-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_hostname:Z

    iput-boolean v1, v0, Lorg/apache/commons/httpclient/URI;->_is_hostname:Z

    .line 5735
    iget-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_IPv4address:Z

    iput-boolean v1, v0, Lorg/apache/commons/httpclient/URI;->_is_IPv4address:Z

    .line 5737
    iget-boolean v1, p0, Lorg/apache/commons/httpclient/URI;->_is_IPv6reference:Z

    iput-boolean v1, v0, Lorg/apache/commons/httpclient/URI;->_is_IPv6reference:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5739
    monitor-exit p0

    return-object v0

    .line 5691
    .end local v0           #instance:Lorg/apache/commons/httpclient/URI;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 3
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .prologue
    .line 5664
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/httpclient/URI;

    .line 5666
    .local v0, another:Lorg/apache/commons/httpclient/URI;
    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/URI;->getRawAuthority()[C

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/httpclient/URI;->equals([C[C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5668
    const/4 v1, -0x1

    .line 5672
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5507
    if-ne p1, p0, :cond_1

    .line 5571
    :cond_0
    :goto_0
    return v1

    .line 5513
    :cond_1
    instance-of v3, p1, Lorg/apache/commons/httpclient/URI;

    if-nez v3, :cond_2

    move v1, v2

    .line 5515
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 5519
    check-cast v0, Lorg/apache/commons/httpclient/URI;

    .line 5523
    .local v0, another:Lorg/apache/commons/httpclient/URI;
    iget-object v3, p0, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    iget-object v4, v0, Lorg/apache/commons/httpclient/URI;->_scheme:[C

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/httpclient/URI;->equals([C[C)Z

    move-result v3

    if-nez v3, :cond_3

    move v1, v2

    .line 5525
    goto :goto_0

    .line 5531
    :cond_3
    iget-object v3, p0, Lorg/apache/commons/httpclient/URI;->_opaque:[C

    iget-object v4, v0, Lorg/apache/commons/httpclient/URI;->_opaque:[C

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/httpclient/URI;->equals([C[C)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 5533
    goto :goto_0

    .line 5541
    :cond_4
    iget-object v3, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    iget-object v4, v0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/httpclient/URI;->equals([C[C)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 5543
    goto :goto_0

    .line 5549
    :cond_5
    iget-object v3, p0, Lorg/apache/commons/httpclient/URI;->_path:[C

    iget-object v4, v0, Lorg/apache/commons/httpclient/URI;->_path:[C

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/httpclient/URI;->equals([C[C)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    .line 5551
    goto :goto_0

    .line 5557
    :cond_6
    iget-object v3, p0, Lorg/apache/commons/httpclient/URI;->_query:[C

    iget-object v4, v0, Lorg/apache/commons/httpclient/URI;->_query:[C

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/httpclient/URI;->equals([C[C)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 5559
    goto :goto_0

    .line 5565
    :cond_7
    iget-object v3, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    iget-object v4, v0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/httpclient/URI;->equals([C[C)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 5567
    goto :goto_0
.end method

.method protected equals([C[C)Z
    .locals 5
    .parameter "first"
    .parameter "second"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5464
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 5492
    :cond_0
    :goto_0
    return v1

    .line 5470
    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    move v1, v2

    .line 5472
    goto :goto_0

    .line 5476
    :cond_3
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 5478
    goto :goto_0

    .line 5482
    :cond_4
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 5484
    aget-char v3, p1, v0

    aget-char v4, p2, v0

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 5486
    goto :goto_0

    .line 5482
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getEscapedURI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5775
    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_uri:[C

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/httpclient/URI;->_uri:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public getRawAuthority()[C
    .locals 1

    .prologue
    .line 4216
    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_authority:[C

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 5619
    iget v3, p0, Lorg/apache/commons/httpclient/URI;->hash:I

    if-nez v3, :cond_1

    .line 5621
    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_uri:[C

    .line 5623
    .local v0, c:[C
    if-eqz v0, :cond_0

    .line 5625
    const/4 v1, 0x0

    .local v1, i:I
    array-length v2, v0

    .local v2, len:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 5627
    iget v3, p0, Lorg/apache/commons/httpclient/URI;->hash:I

    mul-int/lit8 v3, v3, 0x1f

    aget-char v4, v0, v1

    add-int/2addr v3, v4

    iput v3, p0, Lorg/apache/commons/httpclient/URI;->hash:I

    .line 5625
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5633
    .end local v1           #i:I
    .end local v2           #len:I
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/URI;->_fragment:[C

    .line 5635
    if-eqz v0, :cond_1

    .line 5637
    const/4 v1, 0x0

    .restart local v1       #i:I
    array-length v2, v0

    .restart local v2       #len:I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 5639
    iget v3, p0, Lorg/apache/commons/httpclient/URI;->hash:I

    mul-int/lit8 v3, v3, 0x1f

    aget-char v4, v0, v1

    add-int/2addr v3, v4

    iput v3, p0, Lorg/apache/commons/httpclient/URI;->hash:I

    .line 5637
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5647
    .end local v0           #c:[C
    .end local v1           #i:I
    .end local v2           #len:I
    :cond_1
    iget v3, p0, Lorg/apache/commons/httpclient/URI;->hash:I

    return v3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5873
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/URI;->getEscapedURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
