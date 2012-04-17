.class public Ljavax/mail/internet/MimeUtility;
.super Ljava/lang/Object;
.source "MimeUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/internet/MimeUtility$AsciiOutputStream;
    }
.end annotation


# static fields
.field private static defaultJavaCharset:Ljava/lang/String;

.field private static java12:Z

.field private static javaCharsets:Ljava/util/HashMap;

.field private static mimeCharsets:Ljava/util/HashMap;

.field private static part:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 776
    const-string v0, "/META-INF/javamail.charset.map"

    .line 777
    const-class v2, Ljavax/mail/internet/MimeUtility;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 778
    if-eqz v0, :cond_0

    .line 780
    new-instance v2, Ljava/util/HashMap;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    sput-object v2, Ljavax/mail/internet/MimeUtility;->mimeCharsets:Ljava/util/HashMap;

    .line 781
    new-instance v2, Ljava/util/HashMap;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    sput-object v2, Ljavax/mail/internet/MimeUtility;->javaCharsets:Ljava/util/HashMap;

    .line 782
    new-instance v2, Lgnu/inet/util/LineInputStream;

    invoke-direct {v2, v0}, Lgnu/inet/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    .line 783
    sget-object v0, Ljavax/mail/internet/MimeUtility;->mimeCharsets:Ljava/util/HashMap;

    invoke-static {v0, v2}, Ljavax/mail/internet/MimeUtility;->parse(Ljava/util/HashMap;Lgnu/inet/util/LineInputStream;)V

    .line 784
    sget-object v0, Ljavax/mail/internet/MimeUtility;->javaCharsets:Ljava/util/HashMap;

    invoke-static {v0, v2}, Ljavax/mail/internet/MimeUtility;->parse(Ljava/util/HashMap;Lgnu/inet/util/LineInputStream;)V

    .line 788
    :cond_0
    :try_start_0
    const-string v0, "java.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 789
    const-string v2, "1.2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "1.1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ljavax/mail/internet/MimeUtility;->java12:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 921
    :goto_1
    sput v1, Ljavax/mail/internet/MimeUtility;->part:I

    return-void

    :cond_2
    move v0, v1

    .line 789
    goto :goto_0

    .line 792
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method static asciiStatus(Ljava/io/InputStream;IZ)I
    .locals 13
    .parameter
    .parameter
    .parameter

    .prologue
    .line 991
    const/4 v4, 0x0

    .line 992
    const/4 v2, 0x0

    .line 993
    const/16 v1, 0x1000

    .line 994
    const/4 v5, 0x0

    .line 995
    const/4 v3, 0x0

    .line 996
    const/4 v0, 0x0

    .line 997
    if-eqz p1, :cond_e

    .line 999
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1000

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1000
    :goto_0
    new-array v1, v0, [B

    move-object v6, v1

    move v7, v0

    move v0, v3

    move v1, v2

    move v3, v4

    move v2, p1

    .line 1002
    :goto_1
    if-eqz v2, :cond_0

    .line 1007
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v6, v4, v7}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 1008
    if-gez v8, :cond_2

    .line 1051
    :cond_0
    :goto_2
    if-nez v2, :cond_a

    if-eqz p2, :cond_a

    .line 1053
    const/4 v0, 0x3

    .line 1059
    :goto_3
    return v0

    .line 999
    :cond_1
    const/16 v0, 0x1000

    goto :goto_0

    .line 1012
    :cond_2
    const/4 v4, 0x0

    move v11, v4

    move v4, v5

    move v5, v11

    move v12, v0

    move v0, v1

    move v1, v3

    move v3, v12

    :goto_4
    if-ge v5, v8, :cond_8

    .line 1014
    :try_start_1
    aget-byte v9, v6, v5

    and-int/lit16 v9, v9, 0xff

    .line 1015
    const/16 v10, 0xd

    if-eq v9, v10, :cond_3

    const/16 v10, 0xa

    if-ne v9, v10, :cond_5

    .line 1017
    :cond_3
    const/4 v4, 0x0

    .line 1027
    :cond_4
    :goto_5
    invoke-static {v9}, Ljavax/mail/internet/MimeUtility;->isAscii(I)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v9

    if-eqz v9, :cond_6

    .line 1029
    add-int/lit8 v1, v1, 0x1

    .line 1012
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1021
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 1022
    const/16 v10, 0x3e6

    if-le v4, v10, :cond_4

    .line 1024
    const/4 v3, 0x1

    goto :goto_5

    .line 1033
    :cond_6
    if-eqz p2, :cond_7

    .line 1035
    const/4 v0, 0x3

    goto :goto_3

    .line 1037
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1046
    :cond_8
    const/4 v5, -0x1

    if-eq v2, v5, :cond_9

    .line 1048
    sub-int/2addr v2, v8

    :cond_9
    move v5, v4

    move v11, v3

    move v3, v1

    move v1, v0

    move v0, v11

    .line 1050
    goto :goto_1

    .line 1055
    :cond_a
    if-nez v1, :cond_c

    .line 1057
    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_3

    :cond_b
    const/4 v0, 0x2

    goto :goto_3

    .line 1059
    :cond_c
    if-gt v3, v1, :cond_d

    const/4 v0, 0x3

    goto :goto_3

    :cond_d
    const/4 v0, 0x2

    goto :goto_3

    .line 1042
    :catch_0
    move-exception v4

    goto :goto_2

    :catch_1
    move-exception v4

    move v11, v3

    move v3, v1

    move v1, v0

    move v0, v11

    goto :goto_2

    :cond_e
    move-object v6, v0

    move v7, v1

    move v0, v3

    move v1, v2

    move v3, v4

    move v2, p1

    goto :goto_1
.end method

.method static asciiStatus([B)I
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 968
    move v1, v0

    move v2, v0

    .line 970
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    .line 972
    aget-byte v3, p0, v0

    invoke-static {v3}, Ljavax/mail/internet/MimeUtility;->isAscii(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 974
    add-int/lit8 v2, v2, 0x1

    .line 970
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 978
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 982
    :cond_1
    if-nez v1, :cond_2

    .line 984
    const/4 v0, 0x1

    .line 986
    :goto_2
    return v0

    :cond_2
    if-gt v2, v1, :cond_3

    const/4 v0, 0x3

    goto :goto_2

    :cond_3
    const/4 v0, 0x2

    goto :goto_2
.end method

.method public static decode(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 183
    const-string v0, "base64"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    new-instance v0, Lgnu/mail/util/Base64InputStream;

    invoke-direct {v0, p0}, Lgnu/mail/util/Base64InputStream;-><init>(Ljava/io/InputStream;)V

    move-object p0, v0

    .line 200
    :cond_0
    :goto_0
    return-object p0

    .line 187
    :cond_1
    const-string v0, "quoted-printable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    new-instance v0, Lgnu/mail/util/QPInputStream;

    invoke-direct {v0, p0}, Lgnu/mail/util/QPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p0, v0

    goto :goto_0

    .line 191
    :cond_2
    const-string v0, "uuencode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "x-uuencode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 194
    :cond_3
    new-instance v0, Lgnu/mail/util/UUInputStream;

    invoke-direct {v0, p0}, Lgnu/mail/util/UUInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p0, v0

    goto :goto_0

    .line 196
    :cond_4
    const-string v0, "binary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "7bit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "8bit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    new-instance v0, Ljavax/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static decodeInnerText(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 670
    const/4 v1, 0x0

    .line 671
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 672
    const-string v0, "=?"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    if-eq v0, v5, :cond_0

    .line 675
    const-string v3, "?="

    add-int/lit8 v4, v0, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 676
    if-ne v3, v5, :cond_3

    .line 692
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 694
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 696
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 698
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 700
    :cond_2
    return-object p0

    .line 680
    :cond_3
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 681
    add-int/lit8 v1, v3, 0x2

    .line 682
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 685
    :try_start_0
    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->decodeWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljavax/mail/internet/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 673
    :goto_1
    const-string v0, "=?"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 687
    :catch_0
    move-exception v3

    .line 689
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public static decodeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v10, -0x1

    const/4 v1, 0x0

    .line 317
    const-string v4, "\t\n\r "

    .line 318
    const-string v0, "=?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v10, :cond_0

    .line 361
    :goto_0
    return-object p0

    .line 322
    :cond_0
    new-instance v5, Ljava/util/StringTokenizer;

    invoke-direct {v5, p0, v4, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 323
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 324
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    move v0, v1

    .line 326
    :goto_1
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 328
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 329
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 330
    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-le v9, v10, :cond_1

    .line 332
    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 338
    :cond_1
    :try_start_0
    invoke-static {v2}, Ljavax/mail/internet/MimeUtility;->decodeWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 339
    if-nez v0, :cond_2

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 341
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljavax/mail/internet/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move-object v0, v2

    move v2, v3

    .line 357
    :goto_2
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 358
    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    move v0, v2

    goto :goto_1

    .line 345
    :catch_0
    move-exception v0

    move-object v0, v2

    .line 347
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->decodetextStrict()Z

    move-result v2

    if-nez v2, :cond_3

    .line 349
    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->decodeInnerText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 351
    :cond_3
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 353
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_4
    move v2, v1

    .line 355
    goto :goto_2

    .line 361
    :cond_5
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static decodeWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x3f

    const/4 v1, 0x0

    .line 540
    const-string v0, "=?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 542
    new-instance v0, Ljavax/mail/internet/ParseException;

    invoke-direct {v0}, Ljavax/mail/internet/ParseException;-><init>()V

    throw v0

    .line 544
    :cond_0
    const/4 v0, 0x2

    .line 545
    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 546
    if-gez v2, :cond_1

    .line 548
    new-instance v0, Ljavax/mail/internet/ParseException;

    invoke-direct {v0}, Ljavax/mail/internet/ParseException;-><init>()V

    throw v0

    .line 550
    :cond_1
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 552
    const/16 v3, 0x2a

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 553
    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 555
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 557
    :cond_2
    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 558
    add-int/lit8 v0, v2, 0x1

    .line 559
    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 560
    if-gez v2, :cond_3

    .line 562
    new-instance v0, Ljavax/mail/internet/ParseException;

    invoke-direct {v0}, Ljavax/mail/internet/ParseException;-><init>()V

    throw v0

    .line 564
    :cond_3
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 565
    add-int/lit8 v0, v2, 0x1

    .line 566
    const-string v2, "?="

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 567
    if-gez v2, :cond_4

    .line 569
    new-instance v0, Ljavax/mail/internet/ParseException;

    invoke-direct {v0}, Ljavax/mail/internet/ParseException;-><init>()V

    throw v0

    .line 571
    :cond_4
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 576
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 577
    array-length v7, v6

    .line 578
    new-array v8, v7, [B

    move v0, v1

    .line 579
    :goto_0
    if-ge v0, v7, :cond_5

    .line 581
    aget-char v1, v6, v0

    int-to-byte v1, v1

    aput-byte v1, v8, v0

    .line 579
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 584
    :cond_5
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 586
    const-string v0, "B"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 588
    new-instance v0, Lgnu/mail/util/Base64InputStream;

    invoke-direct {v0, v1}, Lgnu/mail/util/Base64InputStream;-><init>(Ljava/io/InputStream;)V

    .line 599
    :goto_1
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 600
    new-array v4, v1, [B

    .line 601
    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6, v1}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v1

    .line 602
    new-instance v0, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v0, v4, v6, v1, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 603
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v3, v2, 0x2

    if-le v1, v3, :cond_7

    .line 605
    add-int/lit8 v1, v2, 0x2

    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 606
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->decodetextStrict()Z

    move-result v2

    if-nez v2, :cond_6

    .line 608
    invoke-static {v1}, Ljavax/mail/internet/MimeUtility;->decodeInnerText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 610
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 612
    :cond_7
    return-object v0

    .line 590
    :cond_8
    const-string v0, "Q"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 592
    new-instance v0, Lgnu/mail/util/QInputStream;

    invoke-direct {v0, v1}, Lgnu/mail/util/QInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 614
    :catch_0
    move-exception v0

    .line 616
    new-instance v0, Ljavax/mail/internet/ParseException;

    invoke-direct {v0}, Ljavax/mail/internet/ParseException;-><init>()V

    throw v0

    .line 596
    :cond_9
    :try_start_1
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 618
    :catch_1
    move-exception v0

    .line 620
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v0}, Ljava/io/UnsupportedEncodingException;-><init>()V

    throw v0
.end method

.method private static decodetextStrict()Z
    .locals 2

    .prologue
    .line 652
    :try_start_0
    const-string v0, "mail.mime.decodetext.strict"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 654
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 658
    :goto_0
    return v0

    .line 656
    :catch_0
    move-exception v0

    .line 658
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static encode(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 217
    if-nez p1, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-object p0

    .line 221
    :cond_1
    const-string v0, "base64"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 223
    new-instance v0, Lgnu/mail/util/Base64OutputStream;

    invoke-direct {v0, p0}, Lgnu/mail/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object p0, v0

    goto :goto_0

    .line 225
    :cond_2
    const-string v0, "quoted-printable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 227
    new-instance v0, Lgnu/mail/util/QPOutputStream;

    invoke-direct {v0, p0}, Lgnu/mail/util/QPOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object p0, v0

    goto :goto_0

    .line 229
    :cond_3
    const-string v0, "uuencode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "x-uuencode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 232
    :cond_4
    new-instance v0, Lgnu/mail/util/UUOutputStream;

    invoke-direct {v0, p0}, Lgnu/mail/util/UUOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object p0, v0

    goto :goto_0

    .line 234
    :cond_5
    const-string v0, "binary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "7bit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "8bit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    new-instance v0, Ljavax/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static encodeBuffer(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;ZZ)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 465
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 467
    if-eqz p3, :cond_0

    .line 469
    invoke-static {v2}, Lgnu/mail/util/BOutputStream;->encodedLength([B)I

    move-result v1

    .line 475
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    .line 476
    if-le v1, p4, :cond_1

    const/4 v1, 0x1

    if-le v9, v1, :cond_1

    .line 478
    const/4 v1, 0x0

    div-int/lit8 v2, v9, 0x2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v1 .. v8}, Ljavax/mail/internet/MimeUtility;->encodeBuffer(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;ZZ)V

    .line 486
    div-int/lit8 v1, v9, 0x2

    invoke-virtual {p1, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move/from16 v8, p7

    invoke-static/range {v1 .. v8}, Ljavax/mail/internet/MimeUtility;->encodeBuffer(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;ZZ)V

    .line 528
    :goto_1
    return-void

    .line 473
    :cond_0
    move/from16 v0, p7

    invoke-static {v2, v0}, Lgnu/mail/util/QOutputStream;->encodedLength([BZ)I

    move-result v1

    goto :goto_0

    .line 497
    :cond_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 499
    if-eqz p3, :cond_3

    .line 501
    new-instance v1, Lgnu/mail/util/BOutputStream;

    invoke-direct {v1, v3}, Lgnu/mail/util/BOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 509
    :goto_2
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 510
    invoke-virtual {v1}, Ljava/io/FilterOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    :goto_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 516
    if-nez p6, :cond_2

    .line 518
    const-string v1, "\r\n "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 520
    :cond_2
    invoke-virtual {p0, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 521
    const/4 v1, 0x0

    :goto_4
    array-length v3, v2

    if-ge v1, v3, :cond_4

    .line 523
    aget-byte v3, v2, v1

    int-to-char v3, v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 521
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 505
    :cond_3
    new-instance v1, Lgnu/mail/util/QOutputStream;

    move/from16 v0, p7

    invoke-direct {v1, v3, v0}, Lgnu/mail/util/QOutputStream;-><init>(Ljava/io/OutputStream;Z)V

    goto :goto_2

    .line 526
    :cond_4
    const-string v1, "?="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 512
    :catch_0
    move-exception v1

    goto :goto_3
.end method

.method public static encodeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 293
    invoke-static {p0, v0, v0}, Ljavax/mail/internet/MimeUtility;->encodeText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 306
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 373
    invoke-static {p0, v0, v0}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 388
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static encodeWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 395
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->asciiStatus([B)I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 452
    :goto_0
    return-object p0

    .line 400
    :cond_0
    if-nez p1, :cond_2

    .line 402
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultJavaCharset()Ljava/lang/String;

    move-result-object v2

    .line 403
    invoke-static {v2}, Ljavax/mail/internet/MimeUtility;->mimeCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 409
    :goto_1
    if-nez p2, :cond_1

    .line 411
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 412
    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->asciiStatus([B)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 414
    const-string p2, "Q"

    .line 422
    :cond_1
    :goto_2
    const-string v0, "B"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v3, v6

    .line 436
    :goto_3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 437
    const-string v0, "=?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 438
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 439
    const-string v0, "?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 440
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 441
    const-string v0, "?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 443
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 444
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x44

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move v7, p3

    invoke-static/range {v0 .. v7}, Ljavax/mail/internet/MimeUtility;->encodeBuffer(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;ZZ)V

    .line 452
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 407
    :cond_2
    invoke-static {p1}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 418
    :cond_3
    const-string p2, "B"

    goto :goto_2

    .line 426
    :cond_4
    const-string v0, "Q"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 428
    const/4 v3, 0x0

    goto :goto_3

    .line 432
    :cond_5
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown transfer encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static encodeeolStrict()Z
    .locals 2

    .prologue
    .line 634
    :try_start_0
    const-string v0, "mail.mime.encodeeol.strict"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 636
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 640
    :goto_0
    return v0

    .line 638
    :catch_0
    move-exception v0

    .line 640
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDefaultJavaCharset()Ljava/lang/String;
    .locals 2

    .prologue
    .line 888
    sget-object v0, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 893
    :try_start_0
    const-string v0, "mail.mime.charset"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;

    .line 894
    sget-object v0, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 896
    const-string v0, "file.encoding"

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 916
    :cond_0
    :goto_0
    sget-object v0, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;

    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 900
    :catch_0
    move-exception v0

    .line 905
    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v1, Ljavax/mail/internet/MimeUtility$1;

    invoke-direct {v1}, Ljavax/mail/internet/MimeUtility$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 907
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->getEncoding()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;

    .line 910
    sget-object v0, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 912
    const-string v0, "UTF-8"

    sput-object v0, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getEncoding(Ljavax/activation/DataHandler;)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 133
    const-string v0, "base64"

    .line 134
    invoke-virtual {p0}, Ljavax/activation/DataHandler;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 136
    invoke-virtual {p0}, Ljavax/activation/DataHandler;->getDataSource()Ljavax/activation/DataSource;

    move-result-object v0

    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->getEncoding(Ljavax/activation/DataSource;)Ljava/lang/String;

    move-result-object v0

    .line 168
    :cond_0
    :goto_0
    return-object v0

    .line 140
    :cond_1
    :try_start_0
    new-instance v3, Ljavax/mail/internet/ContentType;

    invoke-virtual {p0}, Ljavax/activation/DataHandler;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 141
    const-string v4, "text/*"

    invoke-virtual {v3, v4}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z

    move-result v4

    .line 143
    new-instance v5, Ljavax/mail/internet/MimeUtility$AsciiOutputStream;

    if-nez v4, :cond_2

    move v3, v1

    :goto_1
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->encodeeolStrict()Z

    move-result v6

    if-eqz v6, :cond_3

    if-nez v4, :cond_3

    :goto_2
    invoke-direct {v5, v3, v1}, Ljavax/mail/internet/MimeUtility$AsciiOutputStream;-><init>(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 147
    :try_start_1
    invoke-virtual {p0, v5}, Ljavax/activation/DataHandler;->writeTo(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 152
    :goto_3
    :try_start_2
    invoke-virtual {v5}, Ljavax/mail/internet/MimeUtility$AsciiOutputStream;->status()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 155
    :pswitch_0
    const-string v0, "7bit"

    goto :goto_0

    :cond_2
    move v3, v2

    .line 143
    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    .line 158
    :pswitch_1
    if-eqz v4, :cond_0

    .line 160
    const-string v0, "quoted-printable"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 149
    :catch_0
    move-exception v1

    goto :goto_3

    .line 165
    :catch_1
    move-exception v1

    goto :goto_0

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getEncoding(Ljavax/activation/DataSource;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 90
    const-string v0, "base64"

    .line 91
    const/4 v1, 0x0

    .line 94
    :try_start_0
    invoke-interface {p0}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 95
    new-instance v2, Ljavax/mail/internet/ContentType;

    invoke-interface {p0}, Ljavax/activation/DataSource;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 96
    const-string v3, "text/*"

    invoke-virtual {v2, v3}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z

    move-result v2

    .line 97
    const/4 v3, -0x1

    invoke-static {v1, v3, v2}, Ljavax/mail/internet/MimeUtility;->asciiStatus(Ljava/io/InputStream;IZ)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 115
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 120
    :goto_1
    return-object v0

    .line 100
    :pswitch_0
    :try_start_2
    const-string v0, "7bit"

    goto :goto_0

    .line 103
    :pswitch_1
    if-eqz v2, :cond_0

    .line 105
    const-string v0, "quoted-printable"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 117
    :catch_0
    move-exception v1

    goto :goto_1

    .line 110
    :catch_1
    move-exception v2

    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static getUniqueBoundaryValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 928
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 929
    const-string v1, "----=_Part_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 930
    sget v1, Ljavax/mail/internet/MimeUtility;->part:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Ljavax/mail/internet/MimeUtility;->part:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 931
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 932
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 933
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 934
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 935
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getUniqueMessageIDValue(Ljavax/mail/Session;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x2e

    .line 943
    invoke-static {p0}, Ljavax/mail/internet/InternetAddress;->getLocalAddress(Ljavax/mail/Session;)Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    .line 944
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 947
    :goto_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 948
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getUniqueBoundaryValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 949
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 950
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 951
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 952
    const-string v2, "JavaMail."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 953
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 954
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 944
    :cond_0
    const-string v0, "javamailuser@localhost"

    goto :goto_0
.end method

.method private static final isAscii(I)Z
    .locals 1
    .parameter

    .prologue
    .line 1064
    if-gez p0, :cond_0

    .line 1066
    add-int/lit16 p0, p0, 0xff

    .line 1068
    :cond_0
    const/16 v0, 0x80

    if-ge p0, v0, :cond_1

    const/16 v0, 0x1f

    if-gt p0, v0, :cond_2

    :cond_1
    const/16 v0, 0xd

    if-eq p0, v0, :cond_2

    const/16 v0, 0xa

    if-eq p0, v0, :cond_2

    const/16 v0, 0x9

    if-ne p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static javaCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 841
    sget-object v0, Ljavax/mail/internet/MimeUtility;->mimeCharsets:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    if-nez p0, :cond_2

    :cond_0
    move-object v0, p0

    .line 858
    :cond_1
    :goto_0
    return-object v0

    .line 845
    :cond_2
    sget-object v0, Ljavax/mail/internet/MimeUtility;->mimeCharsets:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 846
    if-eqz v0, :cond_3

    .line 848
    sget-boolean v1, Ljavax/mail/internet/MimeUtility;->java12:Z

    if-nez v1, :cond_1

    .line 854
    sget-object v1, Ljavax/mail/internet/MimeUtility;->javaCharsets:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 855
    if-nez v0, :cond_1

    move-object v0, p0

    goto :goto_0

    :cond_3
    move-object v0, p0

    .line 858
    goto :goto_0
.end method

.method public static mimeCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 867
    sget-object v0, Ljavax/mail/internet/MimeUtility;->javaCharsets:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    if-nez p0, :cond_2

    :cond_0
    move-object v0, p0

    .line 872
    :cond_1
    :goto_0
    return-object v0

    .line 871
    :cond_2
    sget-object v0, Ljavax/mail/internet/MimeUtility;->javaCharsets:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 872
    if-nez v0, :cond_1

    move-object v0, p0

    goto :goto_0
.end method

.method private static parse(Ljava/util/HashMap;Lgnu/inet/util/LineInputStream;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 807
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lgnu/inet/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 808
    if-eqz v0, :cond_1

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 833
    :cond_1
    :goto_1
    return-void

    .line 814
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 816
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "\t "

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 819
    :try_start_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 820
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 821
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 823
    :catch_0
    move-exception v0

    goto :goto_0

    .line 829
    :catch_1
    move-exception v0

    .line 831
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static quote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter
    .parameter

    .prologue
    const/16 v9, 0xd

    const/16 v8, 0xa

    const/16 v7, 0x5c

    const/4 v1, 0x0

    const/16 v6, 0x22

    .line 714
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    move v2, v1

    move v0, v1

    .line 716
    :goto_0
    if-ge v2, v3, :cond_8

    .line 718
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 719
    if-eq v4, v8, :cond_0

    if-eq v4, v9, :cond_0

    if-eq v4, v6, :cond_0

    if-ne v4, v7, :cond_5

    .line 721
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    add-int/lit8 v0, v3, 0x3

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 722
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v1

    .line 723
    :goto_1
    if-ge v0, v3, :cond_3

    .line 725
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 726
    if-eq v1, v6, :cond_1

    if-eq v1, v7, :cond_1

    if-eq v1, v9, :cond_1

    if-ne v1, v8, :cond_2

    .line 728
    :cond_1
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 730
    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 723
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 733
    :cond_3
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 734
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 750
    :cond_4
    :goto_2
    return-object p0

    .line 736
    :cond_5
    const/16 v5, 0x20

    if-lt v4, v5, :cond_6

    const/16 v5, 0x7f

    if-gt v4, v5, :cond_6

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_7

    .line 738
    :cond_6
    const/4 v0, 0x1

    .line 716
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 742
    :cond_8
    if-eqz v0, :cond_4

    .line 744
    new-instance v0, Ljava/lang/StringBuffer;

    add-int/lit8 v1, v3, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 745
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 746
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 747
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 748
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2
.end method
