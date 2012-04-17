.class public Lcom/android/email/ViewPatternMatching;
.super Ljava/lang/Object;
.source "ViewPatternMatching.java"


# static fields
.field private static final OWN_WEB_URL:Ljava/util/regex/Pattern;

.field private static final WEB_URL_PROTOCOL:Ljava/util/regex/Pattern;

.field private static enablePatternCalendar:Z

.field private static enablePatternCalendarKeyword:Z

.field private static enablePatternLocation:Z

.field private static enablePatternPhone:Z

.field private static mCurrentPos:I


# instance fields
.field private final PATTERN_MATCHING_TIMEOUT:I

.field private mContext:Landroid/content/Context;

.field private mTimeOfMessage:J

.field final nDatePostLen:I

.field final nMatchingPostPos:I

.field final nTimePostLen:I

.field private nTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 37
    sput-boolean v0, Lcom/android/email/ViewPatternMatching;->enablePatternPhone:Z

    .line 38
    sput-boolean v0, Lcom/android/email/ViewPatternMatching;->enablePatternCalendar:Z

    .line 39
    sput-boolean v1, Lcom/android/email/ViewPatternMatching;->enablePatternLocation:Z

    .line 40
    sput-boolean v0, Lcom/android/email/ViewPatternMatching;->enablePatternCalendarKeyword:Z

    .line 45
    sput v1, Lcom/android/email/ViewPatternMatching;->mCurrentPos:I

    .line 49
    const-string v0, "(?i)http|https|rtsp://"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/email/ViewPatternMatching;->WEB_URL_PROTOCOL:Ljava/util/regex/Pattern;

    .line 78
    const-string v0, "(?:(?:(?:http|https|Http|Https|rtsp|Rtsp):\\/\\/(?:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,64}(?:\\:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,25})?\\@)?)?(?:(?:(?:[a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef][a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef\\-]{0,64}\\.)+(?:(?:aero|arpa|asia|a[cdefgilmnoqrstuwxz])|(?:biz|b[abdefghijmnorstvwyz])|(?:cat|com|coop|c[acdfghiklmnoruvxyz])|d[ejkmoz]|(?:edu|e[cegrstu])|f[ijkmor]|(?:gov|g[abdefghilmnpqrstuwy])|h[kmnrtu]|(?:info|int|i[delmnoqrst])|(?:jobs|j[emop])|k[eghimnprwyz]|l[abcikrstuvy]|(?:mil|mobi|museum|m[acdeghklmnopqrstuvwxyz])|(?:name|net|n[acefgilopruz])|(?:org|om)|(?:pro|p[aefghklmnrstwy])|qa|r[eosuw]|s[abcdeghijklmnortuvyz]|(?:tel|travel|t[cdfghjklmnoprtvwz])|u[agksyz]|v[aceginu]|w[fs]|(?:\u03b4\u03bf\u03ba\u03b9\u03bc\u03ae|\u0438\u0441\u043f\u044b\u0442\u0430\u043d\u0438\u0435|\u0440\u0444|\u0441\u0440\u0431|\u05d8\u05e2\u05e1\u05d8|\u0622\u0632\u0645\u0627\u06cc\u0634\u06cc|\u0625\u062e\u062a\u0628\u0627\u0631|\u0627\u0644\u0627\u0631\u062f\u0646|\u0627\u0644\u062c\u0632\u0627\u0626\u0631|\u0627\u0644\u0633\u0639\u0648\u062f\u064a\u0629|\u0627\u0644\u0645\u063a\u0631\u0628|\u0627\u0645\u0627\u0631\u0627\u062a|\u0628\u06be\u0627\u0631\u062a|\u062a\u0648\u0646\u0633|\u0633\u0648\u0631\u064a\u0629|\u0641\u0644\u0633\u0637\u064a\u0646|\u0642\u0637\u0631|\u0645\u0635\u0631|\u092a\u0930\u0940\u0915\u094d\u0937\u093e|\u092d\u093e\u0930\u0924|\u09ad\u09be\u09b0\u09a4|\u0a2d\u0a3e\u0a30\u0a24|\u0aad\u0abe\u0ab0\u0aa4|\u0b87\u0ba8\u0bcd\u0ba4\u0bbf\u0baf\u0bbe|\u0b87\u0bb2\u0b99\u0bcd\u0b95\u0bc8|\u0b9a\u0bbf\u0b99\u0bcd\u0b95\u0baa\u0bcd\u0baa\u0bc2\u0bb0\u0bcd|\u0baa\u0bb0\u0bbf\u0b9f\u0bcd\u0b9a\u0bc8|\u0c2d\u0c3e\u0c30\u0c24\u0c4d|\u0dbd\u0d82\u0d9a\u0dcf|\u0e44\u0e17\u0e22|\u30c6\u30b9\u30c8|\u4e2d\u56fd|\u4e2d\u570b|\u53f0\u6e7e|\u53f0\u7063|\u65b0\u52a0\u5761|\u6d4b\u8bd5|\u6e2c\u8a66|\u9999\u6e2f|\ud14c\uc2a4\ud2b8|\ud55c\uad6d|xn\\-\\-0zwm56d|xn\\-\\-11b5bs3a9aj6g|xn\\-\\-3e0b707e|xn\\-\\-45brj9c|xn\\-\\-80akhbyknj4f|xn\\-\\-90a3ac|xn\\-\\-9t4b11yi5a|xn\\-\\-clchc0ea0b2g2a9gcd|xn\\-\\-deba0ad|xn\\-\\-fiqs8s|xn\\-\\-fiqz9s|xn\\-\\-fpcrj9c3d|xn\\-\\-fzc2c9e2c|xn\\-\\-g6w251d|xn\\-\\-gecrj9c|xn\\-\\-h2brj9c|xn\\-\\-hgbk6aj7f53bba|xn\\-\\-hlcj6aya9esc7a|xn\\-\\-j6w193g|xn\\-\\-jxalpdlp|xn\\-\\-kgbechtv|xn\\-\\-kprw13d|xn\\-\\-kpry57d|xn\\-\\-lgbbat1ad8j|xn\\-\\-mgbaam7a8h|xn\\-\\-mgbayh7gpa|xn\\-\\-mgbbh1a71e|xn\\-\\-mgbc0a9azcg|xn\\-\\-mgberp4a5d4ar|xn\\-\\-o3cw4h|xn\\-\\-ogbpf8fl|xn\\-\\-p1ai|xn\\-\\-pgbs0dh|xn\\-\\-s9brj9c|xn\\-\\-wgbh1c|xn\\-\\-wgbl6a|xn\\-\\-xkc2al3hye2a|xn\\-\\-xkc2dl3a5ee0h|xn\\-\\-yfro4i67o|xn\\-\\-ygbi2ammx|xn\\-\\-zckzah|xxx)|y[et]|z[amw]))|(?:(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9])\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[0-9])))(?:\\:\\d{1,5})?)(?:[\\/\\?](?:(?:[a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef\\;\\/\\?\\:\\@\\&\\=\\#\\~\\-\\.\\+\\!\\*\\\'\\(\\)\\,\\_])|(?:\\%[a-fA-F0-9]{2}))*)?(?:\\b|$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/email/ViewPatternMatching;->OWN_WEB_URL:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v0, 0xfa0

    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v0, p0, Lcom/android/email/ViewPatternMatching;->PATTERN_MATCHING_TIMEOUT:I

    .line 32
    iput v0, p0, Lcom/android/email/ViewPatternMatching;->nTimeout:I

    .line 33
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/email/ViewPatternMatching;->nDatePostLen:I

    .line 34
    const/16 v0, 0x12

    iput v0, p0, Lcom/android/email/ViewPatternMatching;->nTimePostLen:I

    .line 35
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/email/ViewPatternMatching;->nMatchingPostPos:I

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/email/ViewPatternMatching;->mTimeOfMessage:J

    return-void
.end method

.method private calendarGetStandardDate(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .parameter "tempinfo"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1350
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v5

    const-string v2, ""

    aput-object v2, v1, v4

    .line 1351
    .local v1, outResult:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 1353
    .local v0, mHasDateInfo:Z
    invoke-direct {p0, p1}, Lcom/android/email/ViewPatternMatching;->convertStandardRemoveDayofWeek(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1354
    invoke-direct {p0, p1}, Lcom/android/email/ViewPatternMatching;->convertLocalDateToTime(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1355
    aget-object p1, v1, v5

    .line 1356
    aget-object v2, v1, v4

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1357
    const/4 v0, 0x1

    .line 1358
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/email/ViewPatternMatching;->convertStandardDateToTime(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1359
    aget-object p1, v1, v5

    .line 1360
    aget-object v2, v1, v4

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1361
    const/4 v0, 0x1

    .line 1362
    :cond_1
    const-string v2, ","

    const-string v3, " "

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1363
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 1364
    if-eqz v0, :cond_2

    .line 1365
    const-string v2, "true"

    aput-object v2, v1, v4

    .line 1368
    :goto_0
    return-object v1

    .line 1367
    :cond_2
    const-string v2, "false"

    aput-object v2, v1, v4

    goto :goto_0
.end method

.method private calnendarGetTime(Ljava/lang/String;J)J
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 1373
    .line 1374
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "false"

    aput-object v2, v0, v1

    .line 1375
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1378
    const/4 v1, -0x1

    .line 1379
    const/4 v0, 0x0

    :goto_0
    array-length v2, v4

    if-ge v0, v2, :cond_d

    .line 1380
    const-string v2, "MessageView P-matching>>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calnendarGetTime:schinfo["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v5, v4, v0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    aget-object v2, v4, v0

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1383
    :try_start_0
    aget-object v2, v4, v0

    .line 1384
    const-string v3, "am"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1386
    const-string v3, "am"

    const-string v5, ""

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1387
    const/4 v1, 0x1

    .line 1389
    :cond_0
    const-string v3, "pm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1390
    const-string v3, "pm"

    const-string v5, ""

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1391
    const/4 v1, 0x2

    .line 1393
    :cond_1
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1395
    const/4 v2, 0x0

    aget-object v2, v5, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v6, 0x3c

    mul-long/2addr v2, v6

    const-wide/16 v6, 0x3c

    mul-long/2addr v2, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v2, v6

    add-long/2addr p2, v2

    .line 1397
    const/4 v2, 0x0

    .line 1398
    array-length v3, v5

    const/4 v6, 0x1

    if-le v3, v6, :cond_2

    .line 1399
    const/4 v2, 0x1

    aget-object v2, v5, v2

    .line 1402
    :cond_2
    add-int/lit8 v3, v0, 0x1

    array-length v6, v4

    if-ge v3, v6, :cond_3

    .line 1403
    add-int/lit8 v3, v0, 0x1

    aget-object v3, v4, v3

    const-string v6, "pm"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1404
    const/4 v1, 0x2

    .line 1406
    :cond_3
    if-eqz v2, :cond_f

    .line 1407
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    const-wide/16 v6, 0x3c

    mul-long/2addr v2, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v2, v6

    add-long/2addr v2, p2

    .line 1409
    :goto_1
    const/4 v6, 0x0

    :try_start_1
    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-result-wide v5

    const-wide/16 v7, 0xc

    cmp-long v5, v5, v7

    if-gez v5, :cond_4

    const/4 v5, 0x2

    if-ne v1, v5, :cond_4

    .line 1410
    const-wide/32 v5, 0x2932e00

    add-long/2addr v2, v5

    .line 1411
    const/4 v1, 0x2

    :cond_4
    :goto_2
    move-wide p2, v2

    .line 1379
    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1413
    :catch_0
    move-exception v2

    move-wide v2, p2

    .line 1414
    :goto_4
    const-string v5, "MessageView P-matching>>"

    const-string v6, "calnendarGetTime: #3 timeinfo \'>>:\' parse err!!!!!!!!!!!!!!!!"

    invoke-static {v5, v6}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1421
    :cond_6
    const-string v2, "MessageView P-matching>>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calnendarGetTime: calc tonight keyword info :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1423
    :try_start_2
    aget-object v2, v4, v0

    const-string v3, "am"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1425
    aget-object v2, v4, v0

    const-string v3, "am"

    const-string v5, ""

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1426
    const/4 v1, 0x1

    .line 1428
    const-string v3, ""

    if-eq v2, v3, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x1

    if-lt v3, v5, :cond_5

    .line 1430
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v5, 0x3c

    mul-long/2addr v2, v5

    const-wide/16 v5, 0x3c

    mul-long/2addr v2, v5

    const-wide/16 v5, 0x3e8

    mul-long/2addr v2, v5

    add-long/2addr p2, v2

    .line 1432
    goto :goto_3

    .line 1434
    :cond_7
    aget-object v2, v4, v0

    const-string v3, "pm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1436
    aget-object v2, v4, v0

    const-string v3, "pm"

    const-string v5, ""

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v5

    .line 1437
    const/4 v3, 0x2

    .line 1439
    :try_start_3
    const-string v1, ""

    if-eq v5, v1, :cond_8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_9

    :cond_8
    move v1, v3

    .line 1440
    goto :goto_3

    .line 1441
    :cond_9
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-wide v1

    const-wide/16 v6, 0x3c

    mul-long/2addr v1, v6

    const-wide/16 v6, 0x3c

    mul-long/2addr v1, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v1, v6

    add-long/2addr v1, p2

    .line 1442
    :try_start_4
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result-wide v5

    long-to-int v5, v5

    .line 1443
    const/16 v6, 0xc

    if-ge v5, v6, :cond_a

    .line 1444
    const-wide/32 v5, 0x2932e00

    add-long/2addr v1, v5

    :cond_a
    move-wide p2, v1

    move v1, v3

    .line 1447
    goto/16 :goto_3

    .line 1448
    :cond_b
    add-int/lit8 v2, v0, 0x1

    :try_start_5
    array-length v3, v4

    if-ge v2, v3, :cond_e

    .line 1450
    aget-object v2, v4, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result-wide v2

    const-wide/16 v5, 0x3c

    mul-long/2addr v2, v5

    const-wide/16 v5, 0x3c

    mul-long/2addr v2, v5

    const-wide/16 v5, 0x3e8

    mul-long/2addr v2, v5

    add-long/2addr v2, p2

    .line 1451
    add-int/lit8 v5, v0, 0x1

    :try_start_6
    aget-object v5, v4, v5

    const-string v6, "pm"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1452
    const/4 v1, 0x2

    .line 1453
    aget-object v5, v4, v0

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    move-result-wide v5

    long-to-int v5, v5

    .line 1454
    const/16 v6, 0xc

    if-ge v5, v6, :cond_c

    .line 1455
    const-wide/32 v5, 0x2932e00

    add-long/2addr v2, v5

    :cond_c
    :goto_5
    move-wide p2, v2

    .line 1461
    goto/16 :goto_3

    .line 1459
    :catch_1
    move-exception v2

    .line 1460
    :goto_6
    const-string v2, "MessageView P-matching>>"

    const-string v3, "calnendarGetTime: #4 timeinfo \':>>\' parse err!!!!!!!!!!!!!!!!"

    invoke-static {v2, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1464
    :cond_d
    return-wide p2

    .line 1459
    :catch_2
    move-exception v1

    move v1, v3

    goto :goto_6

    :catch_3
    move-exception v5

    move-wide p2, v1

    move v1, v3

    goto :goto_6

    :catch_4
    move-exception v5

    move-wide p2, v2

    goto :goto_6

    .line 1413
    :catch_5
    move-exception v5

    goto/16 :goto_4

    :cond_e
    move-wide v2, p2

    goto :goto_5

    :cond_f
    move-wide v2, p2

    goto/16 :goto_1
.end method

.method private convertDateReplace(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "inputText"
    .parameter "nType"
    .parameter "inputSeper1"
    .parameter "inputSeper2"

    .prologue
    const/16 v10, 0xc

    const/4 v8, 0x2

    const/4 v9, 0x1

    .line 857
    move-object v2, p1

    .line 860
    .local v2, result:Ljava/lang/String;
    const-string v3, ""

    .line 861
    .local v3, strFirst:Ljava/lang/String;
    const-string v4, ""

    .line 862
    .local v4, strSec:Ljava/lang/String;
    const-string v5, ""

    .line 863
    .local v5, strThr:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    const/4 v1, 0x0

    .local v1, nCnt:I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v0, v6, :cond_3

    .line 864
    const/16 v6, 0x2f

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v6, v7, :cond_0

    .line 865
    add-int/lit8 v1, v1, 0x1

    .line 863
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 868
    :cond_0
    if-nez v1, :cond_1

    .line 869
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 870
    :cond_1
    if-ne v1, v9, :cond_2

    .line 871
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 872
    :cond_2
    if-ne v1, v8, :cond_3

    .line 873
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 877
    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v9, :cond_4

    .line 878
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 879
    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v9, :cond_5

    .line 880
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 881
    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v9, :cond_6

    .line 882
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 884
    :cond_6
    if-ne p2, v9, :cond_b

    .line 886
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-int v0, v6

    .line 887
    const-string v6, "MessageView P-matching>>"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CALENDAR1: matchedText = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    if-lt v0, v9, :cond_7

    if-le v0, v10, :cond_a

    .line 889
    :cond_7
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-int v1, v6

    .line 890
    if-lt v1, v9, :cond_8

    if-le v1, v10, :cond_9

    .line 891
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "01"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 904
    :goto_2
    return-object v2

    .line 893
    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 895
    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 896
    :cond_b
    if-ne p2, v8, :cond_c

    .line 898
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 901
    :cond_c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method private convertKeywordToDateTime(Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 40
    .parameter "info"
    .parameter "mHasDateInfo"

    .prologue
    .line 908
    const/4 v3, 0x7

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v39, v0

    const/4 v3, 0x0

    const-string v4, "(su\\w+)"

    aput-object v4, v39, v3

    const/4 v3, 0x1

    const-string v4, "(mo\\w+)"

    aput-object v4, v39, v3

    const/4 v3, 0x2

    const-string v4, "(tu\\w+)"

    aput-object v4, v39, v3

    const/4 v3, 0x3

    const-string v4, "(we\\w+)"

    aput-object v4, v39, v3

    const/4 v3, 0x4

    const-string v4, "(th\\w+)"

    aput-object v4, v39, v3

    const/4 v3, 0x5

    const-string v4, "(fr\\w+)"

    aput-object v4, v39, v3

    const/4 v3, 0x6

    const-string v4, "(sa\\w+)"

    aput-object v4, v39, v3

    .line 911
    .local v39, strUsWeekend:[Ljava/lang/String;
    const/4 v3, 0x6

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v38, v0

    const/4 v3, 0x0

    const-string v4, "(dawn)"

    aput-object v4, v38, v3

    const/4 v3, 0x1

    const-string v4, "(mor\\w+)"

    aput-object v4, v38, v3

    const/4 v3, 0x2

    const-string v4, "(mor\\w+)"

    aput-object v4, v38, v3

    const/4 v3, 0x3

    const-string v4, "(\\w+noon)"

    aput-object v4, v38, v3

    const/4 v3, 0x4

    const-string v4, "(eve\\w+)"

    aput-object v4, v38, v3

    const/4 v3, 0x5

    const-string v4, "(nig\\w+)"

    aput-object v4, v38, v3

    .line 914
    .local v38, strUSMoment:[Ljava/lang/String;
    const/4 v3, 0x3

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v37, v0

    const/4 v3, 0x0

    const-string v4, "(tod\\w+)"

    aput-object v4, v37, v3

    const/4 v3, 0x1

    const-string v4, "(tom\\w+)"

    aput-object v4, v37, v3

    const/4 v3, 0x2

    const-string v4, "(ton\\w+)"

    aput-object v4, v37, v3

    .line 918
    .local v37, strUSKeyword:[Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, bFind:Z
    const/4 v12, 0x0

    .line 919
    .local v12, bFind2:Z
    const/4 v10, 0x1

    .line 925
    .local v10, bAm:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    const v4, 0x7f08001a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 926
    .local v28, strLocalKeywordT1:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    const v4, 0x7f08001b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 927
    .local v29, strLocalKeywordT2:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    const v4, 0x7f08001c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 929
    .local v30, strLocalKeywordT3:Ljava/lang/String;
    move-object/from16 v26, p1

    .line 930
    .local v26, result:Ljava/lang/String;
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v25, v3

    const/4 v3, 0x1

    const-string v4, ""

    aput-object v4, v25, v3

    .line 933
    .local v25, outResult:[Ljava/lang/String;
    const/16 v34, 0x0

    .line 934
    .local v34, strOutMon:Ljava/lang/String;
    const/16 v35, 0x0

    .line 935
    .local v35, strPattern:Ljava/lang/String;
    const/16 v18, 0x0

    .line 936
    .local v18, matchedText:Ljava/lang/String;
    const/16 v36, 0x0

    .line 937
    .local v36, strToday:Ljava/lang/String;
    const/16 v27, 0x0

    .line 940
    .local v27, strAllDay:Ljava/lang/String;
    const-wide/16 v22, 0x0

    .local v22, nMonth:J
    const-wide/16 v20, 0x0

    .line 941
    .local v20, nDay:J
    const/16 v19, 0x0

    .local v19, nCnt:I
    const/4 v14, 0x1

    .line 942
    .local v14, day_of_week:I
    const/4 v9, 0x0

    .local v9, addDay:I
    const/16 v24, 0x0

    .line 943
    .local v24, nTomorrow:I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 948
    .local v2, cal:Ljava/util/Calendar;
    :try_start_0
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/ViewPatternMatching;->mTimeOfMessage:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_8

    .line 949
    new-instance v13, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/ViewPatternMatching;->mTimeOfMessage:J

    invoke-direct {v13, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 950
    .local v13, date:Ljava/util/Date;
    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 964
    .end local v13           #date:Ljava/util/Date;
    :goto_0
    const-string v3, "UTC"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 966
    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v14

    .line 968
    const-string v3, "|\\."

    const-string v4, ""

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v28

    .line 971
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v32, v0

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v32, v3

    const/4 v3, 0x1

    const-string v4, ""

    aput-object v4, v32, v3

    .line 972
    .local v32, strLocalWeekend:[Ljava/lang/String;
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v31, v0

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v31, v3

    const/4 v3, 0x1

    const-string v4, ""

    aput-object v4, v31, v3

    .line 973
    .local v31, strLocalMoment:[Ljava/lang/String;
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v33, v0

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v33, v3

    const/4 v3, 0x1

    const-string v4, ""

    aput-object v4, v33, v3

    .line 975
    .local v33, strLocalkeyword:[Ljava/lang/String;
    :try_start_1
    const-string v3, "z/z"

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 976
    move-object/from16 v33, v37

    .line 982
    :goto_1
    const-string v3, "z/z"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 983
    move-object/from16 v31, v38

    .line 989
    :goto_2
    const-string v3, "z/z"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result v3

    if-eqz v3, :cond_b

    .line 990
    move-object/from16 v32, v39

    .line 1001
    :goto_3
    const-string v3, "."

    const-string v4, " "

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v26

    .line 1002
    const-string v3, ","

    const-string v4, " "

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v26

    .line 1003
    const-string v3, "  "

    const-string v4, " "

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v26

    .line 1004
    const-string v27, "false"

    .line 1006
    const/16 v16, 0x0

    .local v16, i:I
    :goto_4
    const/4 v3, 0x3

    move/from16 v0, v16

    if-ge v0, v3, :cond_3

    .line 1007
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(?i)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v37, v16

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v33, v16

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 1009
    invoke-static/range {v35 .. v35}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v17

    .line 1010
    .local v17, mMatKeyword:Ljava/util/regex/Matcher;
    invoke-virtual/range {v17 .. v17}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1011
    invoke-virtual/range {v17 .. v17}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v18

    .line 1012
    const/4 v3, 0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_0

    .line 1013
    const/16 v24, 0x1

    .line 1015
    :cond_0
    const-string v3, ""

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v26

    .line 1016
    const/4 v3, 0x2

    move/from16 v0, v16

    if-eq v0, v3, :cond_1

    .line 1017
    const-string v27, "true"

    .line 1018
    :cond_1
    const/4 v3, 0x2

    move/from16 v0, v16

    if-ne v0, v3, :cond_2

    .line 1019
    const-string v27, "special"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1020
    :cond_2
    const/4 v11, 0x1

    .line 1026
    .end local v17           #mMatKeyword:Ljava/util/regex/Matcher;
    :cond_3
    const/16 v16, 0x6

    :goto_5
    const/4 v3, -0x1

    move/from16 v0, v16

    if-le v0, v3, :cond_4

    .line 1027
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(?i)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v39, v16

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v32, v16

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 1028
    invoke-static/range {v35 .. v35}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v17

    .line 1030
    .restart local v17       #mMatKeyword:Ljava/util/regex/Matcher;
    invoke-virtual/range {v17 .. v17}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1031
    invoke-virtual/range {v17 .. v17}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v18

    .line 1032
    add-int/lit8 v3, v16, 0x1

    if-ge v14, v3, :cond_d

    .line 1033
    add-int/lit8 v3, v16, 0x1

    sub-int v9, v3, v14

    .line 1038
    :goto_6
    const-string v3, ""

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v26

    .line 1041
    const/4 v12, 0x1

    .line 1042
    const/4 v11, 0x1

    .line 1051
    .end local v17           #mMatKeyword:Ljava/util/regex/Matcher;
    :cond_4
    :goto_7
    const/16 v16, 0x0

    :goto_8
    const/4 v3, 0x6

    move/from16 v0, v16

    if-ge v0, v3, :cond_5

    .line 1052
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(?i)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v38, v16

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v31, v16

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 1054
    invoke-static/range {v35 .. v35}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v17

    .line 1055
    .restart local v17       #mMatKeyword:Ljava/util/regex/Matcher;
    invoke-virtual/range {v17 .. v17}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1056
    invoke-virtual/range {v17 .. v17}, Ljava/util/regex/Matcher;->end()I

    move-result v19

    .line 1057
    invoke-virtual/range {v17 .. v17}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v18

    .line 1059
    const/4 v3, 0x3

    move/from16 v0, v16

    if-ge v0, v3, :cond_10

    .line 1060
    const/4 v10, 0x1

    .line 1063
    :goto_9
    if-eqz v10, :cond_11

    .line 1064
    const-string v3, ""

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v26

    .line 1070
    :goto_a
    const/4 v11, 0x1

    .line 1076
    .end local v17           #mMatKeyword:Ljava/util/regex/Matcher;
    :cond_5
    if-nez p2, :cond_6

    .line 1077
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v9

    add-int v4, v4, v24

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 1081
    :cond_6
    const-string v3, "  "

    const-string v4, " "

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v26

    .line 1085
    :goto_b
    if-nez v11, :cond_7

    if-nez p2, :cond_14

    .line 1086
    :cond_7
    const/4 v3, 0x0

    aput-object v26, v25, v3

    .line 1087
    const/4 v3, 0x1

    aput-object v27, v25, v3

    .line 1092
    :goto_c
    const-string v3, "MessageView P-matching>>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "convertKeywordToDateTime: convertKeywordToDate, out(DMY) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",rst="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",allday"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    return-object v25

    .line 955
    .end local v16           #i:I
    .end local v31           #strLocalMoment:[Ljava/lang/String;
    .end local v32           #strLocalWeekend:[Ljava/lang/String;
    .end local v33           #strLocalkeyword:[Ljava/lang/String;
    :cond_8
    :try_start_5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 959
    :catch_0
    move-exception v15

    .line 960
    .local v15, e:Ljava/lang/Exception;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    goto/16 :goto_0

    .line 979
    .end local v15           #e:Ljava/lang/Exception;
    .restart local v31       #strLocalMoment:[Ljava/lang/String;
    .restart local v32       #strLocalWeekend:[Ljava/lang/String;
    .restart local v33       #strLocalkeyword:[Ljava/lang/String;
    :cond_9
    :try_start_6
    const-string v3, "|"

    const-string v4, " "

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v30

    .line 980
    const-string v3, " "

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v33

    goto/16 :goto_1

    .line 986
    :cond_a
    const-string v3, "|"

    const-string v4, " "

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v29

    .line 987
    const-string v3, " "

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    goto/16 :goto_2

    .line 993
    :cond_b
    const-string v3, "|"

    const-string v4, " "

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v28

    .line 994
    const-string v3, " "

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-result-object v32

    goto/16 :goto_3

    .line 1006
    .restart local v16       #i:I
    .restart local v17       #mMatKeyword:Ljava/util/regex/Matcher;
    :cond_c
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_4

    .line 1034
    :cond_d
    add-int/lit8 v3, v16, 0x1

    if-le v14, v3, :cond_e

    .line 1035
    add-int/lit8 v3, v16, 0x7

    add-int/lit8 v3, v3, 0x1

    sub-int v9, v3, v14

    goto/16 :goto_6

    .line 1037
    :cond_e
    const/4 v9, 0x0

    goto/16 :goto_6

    .line 1026
    :cond_f
    add-int/lit8 v16, v16, -0x1

    goto/16 :goto_5

    .line 1046
    .end local v17           #mMatKeyword:Ljava/util/regex/Matcher;
    :catch_1
    move-exception v15

    .line 1047
    .restart local v15       #e:Ljava/lang/Exception;
    :try_start_7
    const-string v3, "MessageView P-matching>>"

    const-string v4, "convertKeywordToDateTime: parse error - index ?"

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_7

    .line 1082
    .end local v15           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v15

    .line 1083
    .restart local v15       #e:Ljava/lang/Exception;
    const-string v3, "MessageView P-matching>>"

    const-string v4, "convertKeywordToDateTime: parse error"

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 1062
    .end local v15           #e:Ljava/lang/Exception;
    .restart local v17       #mMatKeyword:Ljava/util/regex/Matcher;
    :cond_10
    const/4 v10, 0x0

    goto/16 :goto_9

    .line 1065
    :cond_11
    if-eqz v12, :cond_12

    .line 1066
    :try_start_8
    const-string v3, "pm"

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_a

    .line 1068
    :cond_12
    const-string v3, "pm"

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    move-result-object v26

    goto/16 :goto_a

    .line 1051
    :cond_13
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_8

    .line 1089
    .end local v17           #mMatKeyword:Ljava/util/regex/Matcher;
    :cond_14
    const/4 v3, 0x0

    aput-object p1, v25, v3

    .line 1090
    const/4 v3, 0x1

    const-string v4, "false"

    aput-object v4, v25, v3

    goto/16 :goto_c

    .line 996
    .end local v16           #i:I
    :catch_3
    move-exception v3

    goto/16 :goto_3
.end method

.method private convertLocalDateToTime(Ljava/lang/String;)[Ljava/lang/String;
    .locals 20
    .parameter "info"

    .prologue
    .line 1099
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v6, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, ""

    aput-object v18, v6, v17

    const/16 v17, 0x1

    const-string v18, ""

    aput-object v18, v6, v17

    .line 1101
    .local v6, outResult:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f08001d

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1102
    .local v11, strReplaceSetIn:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f08001e

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1103
    .local v12, strReplaceSetOut:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f08001b

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1104
    .local v7, strLocalKeywordMoment:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f08001f

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1105
    .local v9, strReplaceConfIn:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f080020

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1108
    .local v10, strReplaceConfOut:Ljava/lang/String;
    const-string v17, "|"

    const-string v18, " "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 1109
    const-string v17, "|"

    const-string v18, " "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 1110
    const-string v17, "|"

    const-string v18, " "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 1111
    const-string v17, "|"

    const-string v18, " "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 1114
    const-string v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 1115
    const-string v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 1116
    .local v15, strReplaceSplitIn:[Ljava/lang/String;
    const-string v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 1118
    .local v16, strReplaceSplitOut:[Ljava/lang/String;
    array-length v4, v15

    .line 1119
    .local v4, lenIn:I
    move-object/from16 v0, v16

    array-length v5, v0

    .line 1120
    .local v5, lenOut:I
    if-eq v4, v5, :cond_0

    .line 1121
    const-string v17, "MessageView P-matching>>"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "convertLocalDateToTime: something wrong inlen="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ",lenout="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    if-le v4, v5, :cond_0

    .line 1124
    move v4, v5

    .line 1126
    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 1128
    aget-object v17, v15, v3

    aget-object v18, v16, v3

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1126
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1132
    .end local v3           #i:I
    .end local v4           #lenIn:I
    .end local v5           #lenOut:I
    .end local v15           #strReplaceSplitIn:[Ljava/lang/String;
    .end local v16           #strReplaceSplitOut:[Ljava/lang/String;
    :cond_1
    const-string v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 1133
    const-string v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 1134
    .local v13, strReplaceSplitConfIn:[Ljava/lang/String;
    const-string v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 1135
    .local v14, strReplaceSplitConfOut:[Ljava/lang/String;
    array-length v4, v13

    .line 1136
    .restart local v4       #lenIn:I
    array-length v5, v14

    .line 1137
    .restart local v5       #lenOut:I
    if-eq v4, v5, :cond_2

    .line 1138
    const-string v17, "MessageView P-matching>>"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "convertLocalDateToTime: something wrong inlen="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ",lenout="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    if-le v4, v5, :cond_2

    .line 1141
    move v4, v5

    .line 1143
    :cond_2
    const/16 v17, 0x1

    move/from16 v0, v17

    if-le v4, v0, :cond_3

    const/16 v17, 0x0

    aget-object v17, v13, v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 1144
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 1146
    aget-object v17, v13, v3

    aget-object v18, v14, v3

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1144
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1153
    .end local v3           #i:I
    .end local v4           #lenIn:I
    .end local v5           #lenOut:I
    .end local v13           #strReplaceSplitConfIn:[Ljava/lang/String;
    .end local v14           #strReplaceSplitConfOut:[Ljava/lang/String;
    :cond_3
    const/16 v17, 0x2

    :try_start_0
    move/from16 v0, v17

    new-array v8, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, ""

    aput-object v18, v8, v17

    const/16 v17, 0x1

    const-string v18, ""

    aput-object v18, v8, v17

    .line 1154
    .local v8, strLocalMoment:[Ljava/lang/String;
    const-string v17, "z/z"

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 1155
    const-string v17, "|"

    const-string v18, " "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 1156
    const-string v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1157
    array-length v0, v8

    move/from16 v17, v0

    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_5

    .line 1158
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_2
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ge v3, v0, :cond_4

    .line 1159
    aget-object v17, v8, v3

    const-string v18, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1158
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1161
    :cond_4
    const/4 v3, 0x3

    :goto_3
    const/16 v17, 0x6

    move/from16 v0, v17

    if-ge v3, v0, :cond_5

    .line 1162
    aget-object v17, v8, v3

    const-string v18, "pm"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 1161
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1166
    .end local v3           #i:I
    .end local v8           #strLocalMoment:[Ljava/lang/String;
    :catch_0
    move-exception v17

    .line 1168
    :cond_5
    const-string v17, "  "

    const-string v18, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1169
    const-string v17, "^"

    const-string v18, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1170
    const-string v17, "/ "

    const-string v18, "/"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1171
    const-string v17, "//"

    const-string v18, "/"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1172
    const-string v17, " :"

    const-string v18, ":"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1173
    const-string v17, ": "

    const-string v18, ":"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1175
    const-string v17, "MessageView P-matching>>"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "convertLocalDateToTime: rst="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    const/16 v17, 0x0

    aput-object p1, v6, v17

    .line 1178
    const/16 v17, 0x1

    const-string v18, "false"

    aput-object v18, v6, v17

    .line 1179
    return-object v6
.end method

.method private convertStandardDateToTime(Ljava/lang/String;)[Ljava/lang/String;
    .locals 16
    .parameter

    .prologue
    .line 1214
    const-string v1, "(\\.|\\/|\\s|\\-)"

    .line 1215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "([0-3]?\\d)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "([0-3]?\\d)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "([1-2]\\d\\d\\d)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "([0-3]?\\d)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "([0-3]?\\d)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "([0-3]?\\d)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(([1-2]\\d\\d\\d))"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "([0-3]?\\d)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "([0-3]?\\d)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1222
    const/16 v1, 0xc

    new-array v7, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "(jan(\\w+)?)"

    aput-object v2, v7, v1

    const/4 v1, 0x1

    const-string v2, "(feb(\\w+)?)"

    aput-object v2, v7, v1

    const/4 v1, 0x2

    const-string v2, "(mar(\\w+)?)"

    aput-object v2, v7, v1

    const/4 v1, 0x3

    const-string v2, "(apr(\\w+)?)"

    aput-object v2, v7, v1

    const/4 v1, 0x4

    const-string v2, "(may(\\w+)?)"

    aput-object v2, v7, v1

    const/4 v1, 0x5

    const-string v2, "(jun(\\w+)?)"

    aput-object v2, v7, v1

    const/4 v1, 0x6

    const-string v2, "(jul(\\w+)?)"

    aput-object v2, v7, v1

    const/4 v1, 0x7

    const-string v2, "(aug(\\w+)?)"

    aput-object v2, v7, v1

    const/16 v1, 0x8

    const-string v2, "(sep(\\w+)?)"

    aput-object v2, v7, v1

    const/16 v1, 0x9

    const-string v2, "(oct(\\w+)?)"

    aput-object v2, v7, v1

    const/16 v1, 0xa

    const-string v2, "(nov(\\w+)?)"

    aput-object v2, v7, v1

    const/16 v1, 0xb

    const-string v2, "(dec(\\w+)?)"

    aput-object v2, v7, v1

    .line 1226
    const-string v8, "(\\w+)(\\.)?[\\s\\,]{1,2}([0-3]?\\d)(th|st|nd|rd|,)?[\\s\\,]{1,2}([1-2]\\d\\d\\d)"

    .line 1227
    const-string v9, "([0-3]?\\d)(th|st|nd|rd|,)?(\\s)(\\w+)(\\.)?[\\s\\,]{1,2}([1-2]\\d\\d\\d)"

    .line 1231
    const-string v1, ""

    .line 1232
    const/4 v1, 0x2

    new-array v10, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v10, v1

    const/4 v1, 0x1

    const-string v2, ""

    aput-object v2, v10, v1

    .line 1237
    const/4 v1, 0x1

    const-string v2, "false"

    aput-object v2, v10, v1

    .line 1239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1242
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 1244
    const-string v1, "MessageView P-matching>>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertStandardDateToTime: orignal = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    :goto_0
    :try_start_0
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1248
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 1250
    const/4 v1, 0x1

    const-string v3, "true"

    aput-object v3, v10, v1

    .line 1252
    invoke-static {v4, v2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1255
    const-string v1, "."

    const-string v3, "/"

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1256
    const-string v3, " "

    const-string v12, "/"

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1257
    const-string v3, "-"

    const-string v12, "/"

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1258
    const-string v3, "//"

    const-string v12, "/"

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1338
    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1260
    :cond_0
    invoke-static {v5, v2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1263
    const-string v1, "."

    const-string v3, "/"

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1264
    const-string v3, " "

    const-string v12, "/"

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1265
    const-string v3, "-"

    const-string v12, "/"

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1266
    const-string v3, "//"

    const-string v12, "/"

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1267
    const/4 v3, 0x0

    const-string v12, "/"

    const-string v13, "/20"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3, v12, v13}, Lcom/android/email/ViewPatternMatching;->convertDateReplace(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1269
    :cond_1
    invoke-static {v6, v2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1273
    const-string v1, "."

    const-string v3, "/"

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1274
    const-string v3, " "

    const-string v12, "/"

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1275
    const-string v3, "-"

    const-string v12, "/"

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1276
    const-string v3, "//"

    const-string v12, "/"

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1277
    const/4 v3, 0x2

    const-string v12, "/"

    const-string v13, "/"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3, v12, v13}, Lcom/android/email/ViewPatternMatching;->convertDateReplace(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1279
    :cond_2
    invoke-static {v8, v2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1285
    const-string v1, "."

    const-string v3, "/"

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1286
    const-string v3, " "

    const-string v12, "/"

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1287
    const-string v3, "-"

    const-string v12, "/"

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1288
    const-string v3, "//"

    const-string v12, "/"

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1289
    const-string v3, "st"

    const-string v12, ""

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1290
    const-string v3, "nd"

    const-string v12, ""

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1291
    const-string v3, "rd"

    const-string v12, ""

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1292
    const-string v3, "th"

    const-string v12, ""

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1293
    const-string v3, ","

    const-string v12, ""

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1296
    const/4 v1, 0x0

    :goto_2
    const/16 v12, 0xc

    if-ge v1, v12, :cond_9

    .line 1297
    aget-object v12, v7, v1

    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 1298
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1299
    const-string v13, "%02d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1300
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1306
    :goto_3
    const/4 v3, 0x1

    const-string v12, "/"

    const-string v13, "/"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3, v12, v13}, Lcom/android/email/ViewPatternMatching;->convertDateReplace(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 1296
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1308
    :cond_4
    invoke-static {v9, v2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1313
    const-string v1, "."

    const-string v3, "/"

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1314
    const-string v3, " "

    const-string v12, "/"

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1315
    const-string v3, "-"

    const-string v12, "/"

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1316
    const-string v3, "//"

    const-string v12, "/"

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1317
    const-string v3, "st"

    const-string v12, ""

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1318
    const-string v3, "nd"

    const-string v12, ""

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1319
    const-string v3, "rd"

    const-string v12, ""

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1320
    const-string v3, "th"

    const-string v12, ""

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1321
    const-string v3, ","

    const-string v12, ""

    invoke-virtual {v1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1323
    const/4 v1, 0x0

    :goto_4
    const/16 v12, 0xc

    if-ge v1, v12, :cond_8

    .line 1324
    aget-object v12, v7, v1

    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 1325
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1326
    const-string v13, "%02d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1327
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1333
    :goto_5
    const/4 v3, 0x0

    const-string v12, "/"

    const-string v13, "/"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3, v12, v13}, Lcom/android/email/ViewPatternMatching;->convertDateReplace(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 1323
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1336
    :cond_6
    const-string v1, "MessageView P-matching>>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "convertStandardDateToTime:error? = "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto/16 :goto_1

    .line 1340
    :catch_0
    move-exception v1

    .line 1341
    const-string v1, "MessageView P-matching>>"

    const-string v2, "convertStandardDateToTime: parse error"

    invoke-static {v1, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    :cond_7
    const-string v1, "MessageView P-matching>>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertStandardDateToTime: out(DMY) = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1345
    const/4 v1, 0x0

    aput-object p1, v10, v1

    .line 1346
    return-object v10

    :cond_8
    move-object v1, v3

    goto :goto_5

    :cond_9
    move-object v1, v3

    goto/16 :goto_3
.end method

.method private convertStandardRemoveDayofWeek(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "info"

    .prologue
    .line 1183
    iget-object v8, p0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    const v9, 0x7f080015

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1184
    .local v7, strUSkeywordT1:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    const v9, 0x7f08001a

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1185
    .local v5, strLocalKeywordT1:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1186
    .local v3, matchedText:Ljava/lang/String;
    move-object v4, p1

    .line 1188
    .local v4, result:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1190
    .local v6, strPattern:Ljava/lang/String;
    const-string v8, "z/z"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1191
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "(?i)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1196
    :goto_0
    :try_start_0
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1197
    .local v1, mMatKeyword:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1198
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    .line 1199
    const-string v8, "\\d"

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1200
    .local v2, matchedLay:[Ljava/lang/String;
    array-length v8, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v9, 0x1

    if-le v8, v9, :cond_2

    .line 1208
    .end local v1           #mMatKeyword:Ljava/util/regex/Matcher;
    .end local v2           #matchedLay:[Ljava/lang/String;
    :cond_0
    :goto_1
    const-string v8, "MessageView P-matching>>"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "convertStandardRemoveDayofWeek: strPattern = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    return-object v4

    .line 1193
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "(?i)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "|"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 1203
    .restart local v1       #mMatKeyword:Ljava/util/regex/Matcher;
    .restart local v2       #matchedLay:[Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v8, ""

    invoke-virtual {p1, v3, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_1

    .line 1205
    .end local v1           #mMatKeyword:Ljava/util/regex/Matcher;
    .end local v2           #matchedLay:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1206
    .local v0, e:Ljava/lang/Exception;
    const-string v8, "MessageView P-matching>>"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "convertStandardRemoveDayofWeek: error? = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public addToCalendarPeriod(Ljava/lang/String;C)Landroid/content/Intent;
    .locals 27
    .parameter
    .parameter

    .prologue
    .line 1588
    const-string v20, ""

    .line 1589
    const-string v11, "~"

    .line 1590
    const-wide/16 v13, 0x0

    .line 1591
    const-wide/16 v18, 0x0

    const-wide/16 v9, 0x0

    .line 1594
    const/4 v15, 0x0

    .line 1595
    const/4 v12, 0x0

    .line 1596
    const/16 v17, 0x0

    .line 1597
    const/16 v16, 0x0

    .line 1600
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 1601
    const/4 v2, 0x0

    .line 1976
    :goto_0
    return-object v2

    .line 1603
    :cond_0
    new-instance v21, Ljava/text/SimpleDateFormat;

    const-string v2, "dd/MM/yyyy"

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1604
    new-instance v22, Ljava/text/SimpleDateFormat;

    const-string v2, "EEE"

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1605
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "false"

    aput-object v4, v2, v3

    .line 1606
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1609
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    .line 1612
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v23

    .line 1613
    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int v24, v3, v4

    .line 1614
    const-string v3, "UTC"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1615
    const-string v3, "UTC"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1616
    const-string v3, "UTC"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1619
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 1620
    const-string v4, "&nbsp;"

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1621
    const-string v4, "\u00a0"

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1622
    const-string v4, "&ndash;"

    const-string v5, "-"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1623
    const-string v4, "\u2013"

    const-string v5, "-"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1624
    const-string v4, "\\. "

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1625
    const-string v4, "\\."

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1626
    const-string v4, "\\("

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1627
    const-string v4, "\\)"

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1628
    const-string v4, "  "

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1629
    packed-switch p2, :pswitch_data_0

    .line 1880
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1635
    :pswitch_0
    const-string v11, "~"

    .line 1636
    const-string v3, "~"

    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 1638
    const/4 v4, 0x0

    .line 1639
    const/4 v3, 0x5

    :try_start_0
    new-array v7, v3, [I

    fill-array-data v7, :array_0

    .line 1640
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    .line 1641
    const/4 v3, 0x0

    move v6, v3

    :goto_1
    if-ge v6, v8, :cond_35

    .line 1642
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v20, 0x2d

    move/from16 v0, v20

    if-ne v3, v0, :cond_a

    .line 1643
    add-int/lit8 v3, v4, 0x1

    aput v6, v7, v4

    .line 1644
    const/4 v4, 0x4

    if-le v3, v4, :cond_b

    .line 1647
    :goto_2
    const/4 v4, 0x1

    if-ne v3, v4, :cond_c

    const-string v3, "-"

    const-string v4, "~"

    invoke-virtual {v5, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_3
    move-object v6, v3

    .line 1665
    :goto_4
    :try_start_1
    invoke-virtual {v6, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 1666
    move-object/from16 v0, v20

    array-length v3, v0

    if-eqz v3, :cond_33

    .line 1667
    const/4 v3, 0x0

    aget-object v3, v20, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/email/ViewPatternMatching;->calendarGetStandardDate(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1668
    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v20, v4

    .line 1669
    const/4 v4, 0x1

    aget-object v3, v3, v4

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    if-eqz v3, :cond_32

    .line 1670
    const/4 v3, 0x1

    .line 1671
    :goto_5
    const/4 v4, 0x0

    :try_start_2
    aget-object v4, v20, v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1672
    const/4 v5, 0x0

    aget-object v5, v4, v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_14

    move-result-wide v7

    .line 1673
    const/4 v5, 0x0

    :try_start_3
    aget-object v5, v20, v5

    const/4 v12, 0x0

    aget-object v4, v4, v12

    const-string v12, ""

    invoke-virtual {v5, v4, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1675
    :goto_6
    move-object/from16 v0, v20

    array-length v4, v0

    const/4 v5, 0x1

    if-le v4, v5, :cond_31

    .line 1676
    const/4 v4, 0x1

    aget-object v4, v20, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/email/ViewPatternMatching;->calendarGetStandardDate(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1677
    const/4 v5, 0x1

    const/4 v12, 0x0

    aget-object v12, v4, v12

    aput-object v12, v20, v5

    .line 1678
    const/4 v5, 0x1

    aget-object v4, v4, v5

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1679
    const/4 v3, 0x1

    .line 1680
    :cond_1
    const/4 v4, 0x1

    aget-object v4, v20, v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1681
    const/4 v4, 0x0

    aget-object v4, v12, v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_15

    move-result-wide v4

    .line 1682
    :try_start_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "~"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v10, v20, v10

    const/16 v18, 0x0

    aget-object v12, v12, v18

    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v10, v12, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_16

    move-result-object v6

    .line 1684
    :goto_7
    const/4 v15, 0x1

    move-wide v9, v4

    move/from16 v4, v17

    move v5, v3

    move/from16 v3, v16

    move-wide/from16 v25, v7

    move-object v8, v6

    move-wide v6, v13

    move-wide/from16 v13, v25

    .line 1883
    :goto_8
    const-string v12, "MessageView P-matching>>"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "addToCalendarPeriod: inputdata="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", CType["

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "]"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v12, v0}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1884
    const-string v12, ","

    const-string v16, " "

    move-object/from16 v0, v16

    invoke-virtual {v8, v12, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1886
    if-eqz v15, :cond_29

    .line 1888
    :try_start_5
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/email/ViewPatternMatching;->convertLocalDateToTime(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1889
    const/16 v16, 0x0

    aget-object v12, v12, v16

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 1890
    const-string v12, " "

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v8, v12, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1891
    const-string v12, "MessageView P-matching>>"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "addToCalendarPeriod: mHasTimeInfo="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v12, v0}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1893
    const-string v12, "-"

    invoke-virtual {v8, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    const-string v11, "-"

    .line 1894
    :cond_2
    const-string v12, "~"

    invoke-virtual {v8, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    const-string v11, "~"

    .line 1895
    :cond_3
    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 1896
    move-object/from16 v0, v16

    array-length v11, v0

    if-eqz v11, :cond_4

    .line 1897
    const/4 v11, 0x0

    aget-object v11, v16, v11

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v13, v14}, Lcom/android/email/ViewPatternMatching;->calnendarGetTime(Ljava/lang/String;J)J

    move-result-wide v11

    .line 1898
    cmp-long v17, v11, v13

    if-lez v17, :cond_4

    move-wide v13, v11

    .line 1902
    :cond_4
    move-object/from16 v0, v16

    array-length v11, v0

    const/4 v12, 0x1

    if-le v11, v12, :cond_5

    .line 1903
    const/4 v11, 0x1

    aget-object v11, v16, v11

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v9, v10}, Lcom/android/email/ViewPatternMatching;->calnendarGetTime(Ljava/lang/String;J)J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    move-result-wide v11

    .line 1904
    cmp-long v16, v11, v9

    if-lez v16, :cond_5

    move-wide v9, v11

    :cond_5
    move-object v12, v8

    move-wide/from16 v25, v9

    move-wide/from16 v10, v25

    move-wide v8, v13

    .line 1911
    :goto_9
    if-eqz v5, :cond_28

    if-nez v15, :cond_28

    .line 1912
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v12, " "

    const-string v13, ""

    invoke-virtual {v4, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1913
    const-string v12, "~"

    invoke-virtual {v4, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1914
    array-length v12, v4

    if-eqz v12, :cond_6

    .line 1916
    const/4 v12, 0x0

    :try_start_6
    aget-object v12, v4, v12

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_d

    move-result-wide v8

    .line 1920
    :cond_6
    :goto_a
    array-length v12, v4

    const/4 v13, 0x1

    if-le v12, v13, :cond_7

    .line 1922
    const/4 v12, 0x1

    :try_start_7
    aget-object v4, v4, v12

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_c

    move-result-wide v10

    .line 1926
    :cond_7
    :goto_b
    const/4 v4, 0x1

    move-wide/from16 v25, v10

    move-wide v10, v8

    move-wide/from16 v8, v25

    .line 1928
    :goto_c
    if-nez v4, :cond_8

    if-nez v15, :cond_8

    if-eqz v5, :cond_8

    const/4 v4, 0x1

    .line 1929
    :cond_8
    const-string v12, "MessageView P-matching>>"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "addToCalendarPeriod: hasTime="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", hasDate="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1930
    if-nez v4, :cond_27

    if-eqz v3, :cond_27

    if-nez v15, :cond_27

    .line 1931
    const-wide/32 v12, 0x44aa200

    add-long/2addr v10, v12

    .line 1932
    const-wide/32 v12, 0x44aa200

    add-long/2addr v8, v12

    move-wide/from16 v25, v8

    move-wide v8, v10

    move-wide/from16 v11, v25

    .line 1934
    :goto_d
    if-eqz v4, :cond_26

    if-eqz v15, :cond_26

    const/4 v4, 0x0

    move v10, v4

    .line 1937
    :goto_e
    if-eqz v10, :cond_24

    .line 1939
    const-wide/32 v2, 0x25c3f80

    add-long/2addr v2, v11

    .line 1957
    :goto_f
    const-wide/16 v4, 0x0

    cmp-long v4, v8, v4

    if-nez v4, :cond_25

    const-wide/16 v2, 0x0

    .line 1960
    :cond_9
    :goto_10
    const-string v4, "MessageView P-matching>>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addToCalendarPeriod time info : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", allday="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1963
    :try_start_8
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1964
    const-string v5, "android.intent.action.EDIT"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1965
    const-string v5, "vnd.android.cursor.item/event"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1966
    const-string v5, "beginTime"

    invoke-virtual {v4, v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1967
    const-string v5, "endTime"

    invoke-virtual {v4, v5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1968
    const-string v2, "allDay"

    invoke-virtual {v4, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1969
    const-string v2, "title"

    const-string v3, ""

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1970
    const-string v2, "description"

    const-string v3, "Email"

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_b

    move-object v2, v4

    .line 1972
    goto/16 :goto_0

    :cond_a
    move v3, v4

    .line 1641
    :cond_b
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v4, v3

    goto/16 :goto_1

    .line 1648
    :cond_c
    const/4 v4, 0x5

    if-ne v3, v4, :cond_d

    .line 1649
    const/4 v3, 0x2

    :try_start_9
    aget v3, v7, v3

    .line 1650
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ~ "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    .line 1652
    :cond_d
    const/4 v4, 0x3

    if-ne v3, v4, :cond_34

    .line 1653
    div-int/lit8 v3, v8, 0x2

    .line 1654
    const/4 v4, 0x0

    aget v4, v7, v4

    sub-int v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/4 v6, 0x2

    aget v6, v7, v6

    sub-int/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v4, v3, :cond_e

    .line 1655
    const/4 v3, 0x2

    aget v3, v7, v3

    .line 1658
    :goto_11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ~ "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    .line 1657
    :cond_e
    const/4 v3, 0x0

    aget v3, v7, v3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_11

    .line 1660
    :catch_0
    move-exception v3

    .line 1661
    const-string v3, "MessageView P-matching>>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addToCalendarPeriod:T3 split error"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    move-object v6, v5

    goto/16 :goto_4

    .line 1685
    :catch_1
    move-exception v3

    move v3, v12

    move-object v5, v6

    move-wide/from16 v6, v18

    .line 1686
    :goto_12
    const-string v4, "MessageView P-matching>>"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "addToCalendarPeriod:T3 parse error"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v4, v17

    move-object v8, v5

    move v5, v3

    move/from16 v3, v16

    move-wide/from16 v25, v13

    move-wide v13, v6

    move-wide/from16 v6, v25

    .line 1689
    goto/16 :goto_8

    .line 1692
    :pswitch_1
    const-string v11, "~"

    .line 1693
    const-string v3, "~"

    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 1695
    const/4 v4, 0x0

    .line 1696
    const/4 v3, 0x5

    :try_start_a
    new-array v7, v3, [I

    fill-array-data v7, :array_1

    .line 1697
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    .line 1698
    const/4 v3, 0x0

    move v6, v3

    :goto_13
    if-ge v6, v8, :cond_30

    .line 1699
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v20, 0x2d

    move/from16 v0, v20

    if-ne v3, v0, :cond_13

    .line 1700
    add-int/lit8 v3, v4, 0x1

    aput v6, v7, v4

    .line 1701
    const/4 v4, 0x4

    if-le v3, v4, :cond_14

    .line 1704
    :goto_14
    const/4 v4, 0x1

    if-ne v3, v4, :cond_15

    const-string v3, "-"

    const-string v4, "~"

    invoke-virtual {v5, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    move-result-object v5

    :cond_10
    :goto_15
    move-object v4, v5

    .line 1722
    :goto_16
    :try_start_b
    invoke-virtual {v4, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1723
    array-length v3, v5

    if-eqz v3, :cond_2f

    .line 1724
    const/4 v3, 0x0

    aget-object v3, v5, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/email/ViewPatternMatching;->calendarGetStandardDate(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1725
    const/4 v6, 0x0

    const/4 v7, 0x0

    aget-object v7, v3, v7

    aput-object v7, v5, v6

    .line 1726
    const/4 v6, 0x1

    aget-object v3, v3, v6

    const-string v6, "true"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    move-result v3

    if-eqz v3, :cond_2e

    .line 1727
    const/4 v3, 0x1

    .line 1728
    :goto_17
    const/4 v6, 0x0

    :try_start_c
    aget-object v4, v5, v6

    .line 1730
    :goto_18
    array-length v6, v5

    const/4 v7, 0x1

    if-le v6, v7, :cond_12

    .line 1731
    const/4 v6, 0x1

    aget-object v6, v5, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/email/ViewPatternMatching;->calendarGetStandardDate(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1732
    const/4 v7, 0x1

    const/4 v8, 0x0

    aget-object v8, v6, v8

    aput-object v8, v5, v7

    .line 1733
    const/4 v7, 0x1

    aget-object v6, v6, v7

    const-string v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 1734
    const/4 v3, 0x1

    .line 1735
    :cond_11
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    aget-object v7, v5, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "~"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_13

    move-result-object v4

    .line 1737
    :cond_12
    const/4 v15, 0x0

    move v5, v3

    move-wide v6, v13

    move-object v8, v4

    move-wide/from16 v13, v18

    move/from16 v4, v17

    move/from16 v3, v16

    .line 1740
    goto/16 :goto_8

    :cond_13
    move v3, v4

    .line 1698
    :cond_14
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v4, v3

    goto/16 :goto_13

    .line 1705
    :cond_15
    const/4 v4, 0x5

    if-ne v3, v4, :cond_16

    .line 1706
    const/4 v3, 0x2

    :try_start_d
    aget v3, v7, v3

    .line 1707
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ~ "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_15

    .line 1709
    :cond_16
    const/4 v4, 0x3

    if-ne v3, v4, :cond_10

    .line 1710
    div-int/lit8 v3, v8, 0x2

    .line 1711
    const/4 v4, 0x0

    aget v4, v7, v4

    sub-int v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/4 v6, 0x2

    aget v6, v7, v6

    sub-int/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v4, v3, :cond_17

    .line 1712
    const/4 v3, 0x2

    aget v3, v7, v3

    .line 1715
    :goto_19
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ~ "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_15

    .line 1714
    :cond_17
    const/4 v3, 0x0

    aget v3, v7, v3
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    goto :goto_19

    .line 1717
    :catch_2
    move-exception v3

    .line 1718
    const-string v3, "MessageView P-matching>>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addToCalendarPeriod:T2 split error"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    move-object v4, v5

    goto/16 :goto_16

    .line 1738
    :catch_3
    move-exception v3

    move v3, v12

    move-object v5, v4

    .line 1739
    :goto_1a
    const-string v4, "MessageView P-matching>>"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addToCalendarPeriod:T2 parse error"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v4, v17

    move-wide v6, v13

    move-object v8, v5

    move-wide/from16 v13, v18

    move v5, v3

    move/from16 v3, v16

    .line 1742
    goto/16 :goto_8

    .line 1745
    :pswitch_2
    const-string v3, "-"

    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2d

    const-string v3, "-"

    .line 1746
    :goto_1b
    const-string v4, "~"

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_19

    const-string v3, "~"

    .line 1747
    :cond_19
    invoke-virtual {v5, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1749
    const-string v4, ""

    const-string v4, ""

    .line 1750
    array-length v4, v6

    const/4 v7, 0x1

    if-le v4, v7, :cond_1c

    .line 1751
    const/4 v4, 0x1

    aget-object v4, v6, v4

    .line 1752
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/email/ViewPatternMatching;->calendarGetStandardDate(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1753
    const/4 v5, 0x0

    aget-object v5, v4, v5

    .line 1754
    const/4 v7, 0x1

    aget-object v4, v4, v7

    const-string v7, "true"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 1755
    const/4 v4, 0x1

    .line 1756
    :goto_1c
    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1757
    array-length v8, v7

    const/4 v11, 0x3

    if-eq v8, v11, :cond_1a

    .line 1758
    const-string v8, "MessageView P-matching>>"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "addToCalendarPeriod:T6 incorrect date=["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] or parse err="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1761
    :cond_1a
    const/4 v8, 0x0

    aget-object v6, v6, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/email/ViewPatternMatching;->convertStandardRemoveDayofWeek(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1762
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1763
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/email/ViewPatternMatching;->convertLocalDateToTime(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1764
    const/4 v7, 0x0

    aget-object v7, v6, v7

    .line 1765
    const/4 v8, 0x1

    aget-object v6, v6, v8

    const-string v8, "true"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 1766
    const/4 v4, 0x1

    .line 1767
    :cond_1b
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/email/ViewPatternMatching;->convertStandardDateToTime(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1768
    const/4 v7, 0x0

    aget-object v6, v6, v7

    .line 1769
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1770
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "~"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1775
    :goto_1d
    const/4 v15, 0x0

    move-wide v6, v13

    move-object v11, v3

    move-object v8, v5

    move-wide/from16 v13, v18

    move/from16 v3, v16

    move v5, v4

    move/from16 v4, v17

    .line 1777
    goto/16 :goto_8

    .line 1773
    :cond_1c
    const-string v4, "MessageView P-matching>>"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addToCalendarPeriod:T6 incorrect type=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] or date="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v12

    goto :goto_1d

    .line 1779
    :pswitch_3
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/email/ViewPatternMatching;->calendarGetStandardDate(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1780
    const/4 v4, 0x0

    aget-object v5, v3, v4

    .line 1781
    const/4 v4, 0x1

    aget-object v3, v3, v4

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1782
    const/4 v12, 0x1

    .line 1783
    :cond_1d
    if-eqz v12, :cond_2b

    .line 1785
    :try_start_e
    const-string v3, " "

    invoke-virtual {v5, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1786
    const/4 v4, 0x0

    aget-object v6, v3, v4
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    .line 1787
    :try_start_f
    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_11

    move-result-wide v3

    .line 1788
    :try_start_10
    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_12

    move-result-object v5

    .line 1795
    :goto_1e
    const/4 v15, 0x1

    .line 1796
    const/4 v6, 0x0

    move-wide v9, v3

    move-wide v13, v3

    move-object v8, v5

    move v5, v6

    move-wide v6, v3

    move/from16 v4, v17

    move/from16 v3, v16

    .line 1797
    goto/16 :goto_8

    .line 1789
    :catch_4
    move-exception v3

    move-wide v3, v13

    move-object/from16 v6, v20

    .line 1790
    :goto_1f
    const-string v7, "MessageView P-matching>>"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addToCalendarPeriod:T7 parse err="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    .line 1799
    :pswitch_4
    const/4 v3, 0x0

    .line 1800
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v3}, Lcom/android/email/ViewPatternMatching;->convertKeywordToDateTime(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v6

    .line 1801
    const/4 v3, 0x1

    aget-object v3, v6, v3

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 1802
    const/16 v17, 0x1

    move/from16 v3, v16

    move/from16 v4, v17

    .line 1806
    :goto_20
    const/4 v7, 0x0

    :try_start_11
    aget-object v6, v6, v7

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1807
    const/4 v6, 0x0

    aget-object v20, v9, v6

    .line 1808
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5

    move-result-wide v7

    .line 1809
    :try_start_12
    array-length v6, v9

    const/4 v10, 0x1

    if-le v6, v10, :cond_20

    .line 1810
    const/4 v6, 0x1

    aget-object v6, v9, v6
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_f

    .line 1811
    const/4 v5, 0x2

    :goto_21
    :try_start_13
    array-length v10, v9

    if-ge v5, v10, :cond_1f

    .line 1812
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v12, v9, v5

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_10

    move-result-object v6

    .line 1811
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    .line 1803
    :cond_1e
    const/4 v3, 0x1

    aget-object v3, v6, v3

    const-string v4, "special"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1804
    const/16 v16, 0x1

    move/from16 v3, v16

    move/from16 v4, v17

    goto :goto_20

    .line 1814
    :cond_1f
    const/4 v5, 0x1

    .line 1815
    const/4 v3, 0x0

    .line 1816
    const/4 v4, 0x0

    :goto_22
    move-wide/from16 v25, v7

    move-object v8, v6

    move-wide/from16 v6, v25

    .line 1825
    :goto_23
    const/4 v9, 0x0

    move v15, v5

    move-wide v13, v6

    move v5, v9

    move-wide v9, v6

    .line 1826
    goto/16 :goto_8

    .line 1819
    :cond_20
    const/4 v6, 0x0

    move/from16 v25, v6

    move-object v6, v5

    move/from16 v5, v25

    goto :goto_22

    .line 1820
    :catch_5
    move-exception v6

    move-object v7, v5

    move-wide v5, v13

    .line 1821
    :goto_24
    const-string v8, "MessageView P-matching>>"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addToCalendarPeriod:T5 parse err="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v7

    move-wide/from16 v25, v5

    move-wide/from16 v6, v25

    move v5, v15

    goto :goto_23

    .line 1828
    :pswitch_5
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/email/ViewPatternMatching;->calendarGetStandardDate(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1829
    const/4 v3, 0x0

    aget-object v3, v4, v3

    .line 1830
    const/4 v5, 0x1

    aget-object v4, v4, v5

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 1831
    const/4 v12, 0x1

    .line 1832
    :cond_21
    if-eqz v12, :cond_22

    .line 1834
    :try_start_14
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1835
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget-object v20, v4, v5

    .line 1836
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    .line 1837
    const-string v4, ""

    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_6

    move-result-object v3

    .line 1844
    :cond_22
    :goto_25
    const/4 v15, 0x1

    .line 1845
    const/4 v4, 0x0

    move v5, v4

    move-wide v9, v13

    move-wide v6, v13

    move-object v8, v3

    move/from16 v3, v16

    move/from16 v4, v17

    .line 1846
    goto/16 :goto_8

    .line 1838
    :catch_6
    move-exception v4

    .line 1839
    const-string v4, "MessageView P-matching>>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addToCalendarPeriod:T4 parse err="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    .line 1852
    :pswitch_6
    :try_start_15
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/ViewPatternMatching;->mTimeOfMessage:J

    const-wide/16 v6, 0x0

    cmp-long v3, v3, v6

    if-eqz v3, :cond_23

    .line 1853
    new-instance v3, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/email/ViewPatternMatching;->mTimeOfMessage:J

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 1854
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_e

    .line 1867
    :cond_23
    :goto_26
    :try_start_16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1869
    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_7

    move-result-wide v13

    .line 1875
    :goto_27
    const/4 v15, 0x1

    .line 1876
    const/4 v3, 0x0

    move/from16 v4, v17

    move-wide v9, v13

    move-wide v6, v13

    move-object v8, v5

    move v5, v3

    move/from16 v3, v16

    .line 1877
    goto/16 :goto_8

    .line 1870
    :catch_7
    move-exception v3

    .line 1871
    const-string v3, "MessageView P-matching>>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addToCalendarPeriod:T1 parse err="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27

    .line 1908
    :catch_8
    move-exception v11

    move-object v12, v8

    move-wide/from16 v25, v9

    move-wide/from16 v10, v25

    move-wide v8, v13

    goto/16 :goto_9

    .line 1943
    :cond_24
    :try_start_17
    invoke-virtual {v2, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1944
    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1945
    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_9

    move-result v4

    add-int/2addr v3, v4

    int-to-long v3, v3

    sub-long v4, v8, v3

    .line 1950
    :goto_28
    :try_start_18
    invoke-virtual {v2, v11, v12}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1951
    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1952
    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v8, 0x10

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_a

    move-result v2

    add-int/2addr v2, v3

    int-to-long v2, v2

    sub-long v2, v11, v2

    move-wide v8, v4

    .line 1955
    goto/16 :goto_f

    .line 1946
    :catch_9
    move-exception v3

    .line 1947
    move/from16 v0, v24

    int-to-long v3, v0

    sub-long v4, v8, v3

    goto :goto_28

    .line 1953
    :catch_a
    move-exception v2

    .line 1954
    move/from16 v0, v24

    int-to-long v2, v0

    sub-long v2, v11, v2

    move-wide v8, v4

    goto/16 :goto_f

    .line 1958
    :cond_25
    cmp-long v4, v8, v2

    if-lez v4, :cond_9

    .line 1959
    const-wide/32 v2, 0x36ee80

    add-long/2addr v2, v8

    goto/16 :goto_10

    .line 1973
    :catch_b
    move-exception v2

    .line 1974
    const-string v2, "MessageView P-matching>>"

    const-string v3, "addToCalendarPeriod #11 calendar intent err !!!!!"

    invoke-static {v2, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1976
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1923
    :catch_c
    move-exception v4

    goto/16 :goto_b

    .line 1917
    :catch_d
    move-exception v12

    goto/16 :goto_a

    .line 1861
    :catch_e
    move-exception v3

    goto/16 :goto_26

    .line 1820
    :catch_f
    move-exception v6

    move-wide/from16 v25, v7

    move-object v7, v5

    move-wide/from16 v5, v25

    goto/16 :goto_24

    :catch_10
    move-exception v5

    move-wide/from16 v25, v7

    move-object v7, v6

    move-wide/from16 v5, v25

    goto/16 :goto_24

    .line 1789
    :catch_11
    move-exception v3

    move-wide v3, v13

    goto/16 :goto_1f

    :catch_12
    move-exception v7

    goto/16 :goto_1f

    .line 1738
    :catch_13
    move-exception v5

    move-object v5, v4

    goto/16 :goto_1a

    .line 1685
    :catch_14
    move-exception v4

    move-object v5, v6

    move-wide/from16 v6, v18

    goto/16 :goto_12

    :catch_15
    move-exception v4

    move-object v5, v6

    move-wide/from16 v25, v7

    move-wide/from16 v6, v25

    goto/16 :goto_12

    :catch_16
    move-exception v9

    move-wide v9, v4

    move-object v5, v6

    move-wide/from16 v25, v7

    move-wide/from16 v6, v25

    goto/16 :goto_12

    :cond_26
    move v10, v4

    goto/16 :goto_e

    :cond_27
    move-wide/from16 v25, v8

    move-wide v8, v10

    move-wide/from16 v11, v25

    goto/16 :goto_d

    :cond_28
    move-wide/from16 v25, v10

    move-wide v10, v8

    move-wide/from16 v8, v25

    goto/16 :goto_c

    :cond_29
    move-object v12, v8

    move-wide/from16 v25, v9

    move-wide/from16 v10, v25

    move-wide v8, v13

    goto/16 :goto_9

    :cond_2a
    move/from16 v3, v16

    move/from16 v4, v17

    goto/16 :goto_20

    :cond_2b
    move-wide v3, v13

    goto/16 :goto_1e

    :cond_2c
    move v4, v12

    goto/16 :goto_1c

    :cond_2d
    move-object v3, v11

    goto/16 :goto_1b

    :cond_2e
    move v3, v12

    goto/16 :goto_17

    :cond_2f
    move v3, v12

    goto/16 :goto_18

    :cond_30
    move v3, v4

    goto/16 :goto_14

    :cond_31
    move-wide v4, v9

    goto/16 :goto_7

    :cond_32
    move v3, v12

    goto/16 :goto_5

    :cond_33
    move v3, v12

    move-wide/from16 v7, v18

    goto/16 :goto_6

    :cond_34
    move-object v3, v5

    goto/16 :goto_3

    :cond_35
    move v3, v4

    goto/16 :goto_2

    .line 1629
    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_6
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1639
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 1696
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public pmDataMatching(Ljava/lang/String;II)Ljava/lang/String;
    .locals 82
    .parameter "text"
    .parameter "nType"
    .parameter "nStartPosition"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 143
    move/from16 v16, p3

    .line 144
    .local v16, nFindStart:I
    const/4 v4, 0x0

    .line 147
    .local v4, bTimeOut:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    move-object/from16 v78, v0

    if-nez v78, :cond_0

    .line 148
    new-instance v78, Lcom/android/email/mail/MessagingException;

    const-string v79, "Uninitialized. call first init"

    invoke-direct/range {v78 .. v79}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v78

    .line 150
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v78

    move/from16 v0, p3

    move/from16 v1, v78

    if-gt v0, v1, :cond_1

    if-gez p3, :cond_2

    .line 151
    :cond_1
    new-instance v78, Lcom/android/email/mail/MessagingException;

    const-string v79, "invalid agument"

    invoke-direct/range {v78 .. v79}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v78

    .line 154
    :cond_2
    const-string v32, "[\\/\\s\\-]"

    .line 155
    .local v32, strDateSeperate:Ljava/lang/String;
    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    const-string v79, "(?:(?:[0-3]?\\d)|(?:[1-2]\\d\\d\\d))"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, "(?:[0-3]?\\d)"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, "(?:(?:[1-2]\\d\\d\\d)|(?:[0-3]?[\\d]))"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    .line 158
    .local v61, strStandardDate:Ljava/lang/String;
    const/16 v63, 0x0

    .line 159
    .local v63, strUSDate:Ljava/lang/String;
    const/16 v64, 0x0

    .line 160
    .local v64, strUSDateExceptYear:Ljava/lang/String;
    const/16 v65, 0x0

    .line 161
    .local v65, strUSKeyword:Ljava/lang/String;
    const/16 v66, 0x0

    .line 163
    .local v66, strUSTime:Ljava/lang/String;
    const/16 v37, 0x0

    .line 164
    .local v37, strLocalDate:Ljava/lang/String;
    const/16 v44, 0x0

    .line 165
    .local v44, strLocalTime:Ljava/lang/String;
    const/16 v39, 0x0

    .line 167
    .local v39, strLocalKeyword:Ljava/lang/String;
    const/16 v33, 0x0

    .line 168
    .local v33, strGeneralDate:Ljava/lang/String;
    const/16 v34, 0x0

    .line 169
    .local v34, strGeneralDateExceptYear:Ljava/lang/String;
    const/16 v36, 0x0

    .line 170
    .local v36, strGeneralTime:Ljava/lang/String;
    const/16 v35, 0x0

    .line 172
    .local v35, strGeneralKeyword:Ljava/lang/String;
    const-wide/16 v72, 0x0

    .local v72, time:J
    const-wide/16 v74, 0x0

    .line 173
    .local v74, time2:J
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v21

    .line 174
    .local v21, nTextLen:I
    const/4 v15, 0x0

    .local v15, memail:Ljava/util/regex/Matcher;
    const/4 v13, 0x0

    .line 175
    .local v13, matchPostMail:Ljava/util/regex/Matcher;
    const/16 v24, 0x0

    .local v24, patPostDate:Ljava/util/regex/Pattern;
    const/16 v25, 0x0

    .line 176
    .local v25, patPostTime:Ljava/util/regex/Pattern;
    const/4 v12, 0x0

    .line 177
    .local v12, mPhoneOrWebOrEmail:Ljava/lang/String;
    const/16 v22, 0x0

    .line 178
    .local v22, outText:Ljava/lang/String;
    const/16 v56, 0x0

    .line 180
    .local v56, strPhonePattern:Ljava/lang/String;
    new-instance v28, Ljava/lang/StringBuffer;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuffer;-><init>()V

    .line 181
    .local v28, sb:Ljava/lang/StringBuffer;
    new-instance v29, Ljava/lang/StringBuffer;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuffer;-><init>()V

    .line 192
    .local v29, sbTemp:Ljava/lang/StringBuffer;
    const-string v56, "(?:(?:[\\+]|(?:\\&\\#43\\;))[0-9]{1,4}[\\-\\.\\s]*)?(?:[0-9\\s]{1,6}[\\-\\s\\.]?|(?:\\([0-9]{1,4}\\)[\\s]?))?(?:[0-9]{2,4}[\\-\\.\\s]?[0-9]{2,4}[\\-\\.\\s]?[0-9]{2,12})"

    .line 200
    const-string v77, "(?:<[aA][\\s][hH][rR][eE][fF]=[^>]+>)"

    .line 201
    .local v77, urlRefPattern:Ljava/lang/String;
    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v78

    move-object/from16 v1, v77

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, "|(?:<[^>]+>)"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v76

    .line 204
    .local v76, urlPattern:Ljava/lang/String;
    const-string v53, "(?:(?:[a-zA-Z][a-zA-Z]?[0-9][\\-\\s][0-9][a-zA-Z][a-zA-Z])|(?:[a-zA-Z][0-9][a-zA-Z][\\-\\s][0-9][a-zA-Z][0-9])|(?:[\\d]{5}(?:[\\-\\s][\\d]{4})?))"

    .line 205
    .local v53, strLocationPostalCode:Ljava/lang/String;
    const-string v46, "(?:[a-zA-Z\\s]{2,20}(?:\\s|\\,|(?:\\&nbsp;)){1,3}[a-zA-Z]{2,10})"

    .line 206
    .local v46, strLocationCityStates:Ljava/lang/String;
    const-string v47, "(?:[\\s\\,][\\s]?(?:[Uu]nited\\s)?[\\w]+)?"

    .line 207
    .local v47, strLocationCountry:Ljava/lang/String;
    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    const-string v79, "(?:(?:[\\w]?[\\d]{1,4}[\\-\\s](?:\\d[0-9a-zA-Z]{0,3})?)|(?:\\d[0-9a-zA-Z]{0,3}))(?:[\\w\\s#@\\,]{1,40})"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, "(?:\\s|\\,|(?:\\&nbsp;)){1,3}"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    .line 208
    .local v54, strLocationUS:Ljava/lang/String;
    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    const-string v79, "(?:[Pp](?:ost)?[\\s\\.]*[Oo](?:ffice)?[\\s\\.]*(?:[Bb][Oo][Xx])?[\\s]*[0-9]{0,10})(?:(?:\\s|\\,|(?:\\&nbsp;)){1,3}"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, "(?:(?:\\s|\\,|(?:\\&nbsp;)){1,3}"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")?)?"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    .line 209
    .local v55, strLocationUS2:Ljava/lang/String;
    const-string v48, "(?:[\\f\\n\\r\\t\\>][#\\w\\s\\(\\)\\-]{0,30}[\\,\\-]?[\\w\\s\\#\\(\\)\\-]{0,30})?@[\\-0-9]{1,3}[\\.][0-9]{1,7}[\\s\\,]{1,2}[\\-0-9]{1,4}[\\.][0-9]{1,7}"

    .line 211
    .local v48, strLocationGeo:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    move-object/from16 v78, v0

    const v79, 0x7f080021

    invoke-virtual/range {v78 .. v79}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v50

    .line 212
    .local v50, strLocationLocalE:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    move-object/from16 v78, v0

    const v79, 0x7f080022

    invoke-virtual/range {v78 .. v79}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v51

    .line 213
    .local v51, strLocationLocalL:Ljava/lang/String;
    const/16 v49, 0x0

    .line 214
    .local v49, strLocationLocal:Ljava/lang/String;
    const/16 v52, 0x0

    .line 216
    .local v52, strLocationPatern:Ljava/lang/String;
    const-string v78, "z/z"

    move-object/from16 v0, v78

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v78

    if-nez v78, :cond_3

    .line 217
    move-object/from16 v49, v50

    .line 219
    :cond_3
    const-string v78, "z/z"

    move-object/from16 v0, v78

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v78

    if-nez v78, :cond_4

    .line 220
    if-nez v49, :cond_13

    .line 221
    move-object/from16 v49, v51

    .line 225
    :cond_4
    :goto_0
    if-nez v49, :cond_14

    .line 226
    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v78

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, "|"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, "|"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    .line 231
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    move-object/from16 v78, v0

    const v79, 0x7f080014

    invoke-virtual/range {v78 .. v79}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v62

    .line 233
    .local v62, strStandardTime:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    move-object/from16 v78, v0

    const v79, 0x7f080015

    invoke-virtual/range {v78 .. v79}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v67

    .line 234
    .local v67, strUSkeywordT1:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    move-object/from16 v78, v0

    const v79, 0x7f080016

    invoke-virtual/range {v78 .. v79}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v68

    .line 235
    .local v68, strUSkeywordT2:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    move-object/from16 v78, v0

    const v79, 0x7f080017

    invoke-virtual/range {v78 .. v79}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v69

    .line 237
    .local v69, strUSkeywordT3:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    move-object/from16 v78, v0

    const v79, 0x7f080012

    invoke-virtual/range {v78 .. v79}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v64

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    move-object/from16 v78, v0

    const v79, 0x7f080013

    invoke-virtual/range {v78 .. v79}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v63

    .line 239
    move-object/from16 v66, v62

    .line 240
    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    const-string v79, "(?:(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")[\\s\\,]{1,2}(?:(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")[\\s\\,]{1,2})?"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")|(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, "(?:[\\s\\,]{1,2}"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")?)"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v65

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    move-object/from16 v78, v0

    const v79, 0x7f08001a

    invoke-virtual/range {v78 .. v79}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v41

    .line 248
    .local v41, strLocalKeywordT1:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    move-object/from16 v78, v0

    const v79, 0x7f08001c

    invoke-virtual/range {v78 .. v79}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v42

    .line 249
    .local v42, strLocalKeywordT2:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    move-object/from16 v78, v0

    const v79, 0x7f08001b

    invoke-virtual/range {v78 .. v79}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v43

    .line 250
    .local v43, strLocalKeywordT3:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    move-object/from16 v78, v0

    const v79, 0x7f080018

    invoke-virtual/range {v78 .. v79}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 251
    .local v38, strLocalDateRsc:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    move-object/from16 v78, v0

    const v79, 0x7f080019

    invoke-virtual/range {v78 .. v79}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v45

    .line 253
    .local v45, strLocalTimeRsc:Ljava/lang/String;
    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    const-string v79, "(?:(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, "|"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")[\\.]?[\\s\\,]{0,2}(?:(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")?[\\s\\,]{1,2})(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, "|"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, "))|(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")[\\s]?(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, "|"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    .line 258
    .local v40, strLocalKeywordRsc:Ljava/lang/String;
    move-object/from16 v37, v38

    .line 259
    move-object/from16 v44, v45

    .line 260
    const-string v78, "z/z"

    move-object/from16 v0, v78

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v78

    if-eqz v78, :cond_5

    .line 261
    move-object/from16 v43, v69

    .line 262
    :cond_5
    const-string v78, "z/z"

    move-object/from16 v0, v78

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v78

    if-nez v78, :cond_6

    const-string v78, "z/z"

    move-object/from16 v0, v78

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v78

    if-eqz v78, :cond_15

    .line 263
    :cond_6
    const-string v39, "z/z"

    .line 271
    :goto_2
    const-string v78, ""

    move-object/from16 v0, v37

    move-object/from16 v1, v78

    if-eq v0, v1, :cond_7

    const-string v78, "z/z"

    move-object/from16 v0, v78

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v78

    if-eqz v78, :cond_16

    .line 272
    :cond_7
    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    const-string v79, "(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")|(?:(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")[\\s\\,\\.]{0,2})?(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 277
    :goto_3
    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    const-string v79, "(?:(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")[\\s\\,\\.]{0,2})?(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")(?:[\\.\\,\\s]|(?:\\&nbsp;)){1,2}(?:(?:\\&ndash;)|[\\-\\~\u2013])"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 279
    const-string v78, ""

    move-object/from16 v0, v44

    move-object/from16 v1, v78

    if-eq v0, v1, :cond_8

    const-string v78, "z/z"

    move-object/from16 v0, v78

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v78

    if-eqz v78, :cond_17

    .line 280
    :cond_8
    move-object/from16 v36, v62

    .line 284
    :goto_4
    const-string v78, "z/z"

    move-object/from16 v0, v78

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v78

    if-eqz v78, :cond_18

    .line 285
    move-object/from16 v35, v65

    .line 290
    :goto_5
    const/16 v78, 0x1

    move/from16 v0, p2

    move/from16 v1, v78

    if-ne v0, v1, :cond_19

    .line 292
    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    const-string v79, "(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 293
    sget-boolean v78, Lcom/android/email/ViewPatternMatching;->enablePatternLocation:Z

    if-eqz v78, :cond_9

    .line 294
    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    const-string v79, "|(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v78

    move-object/from16 v0, v78

    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 296
    :cond_9
    sget-boolean v78, Lcom/android/email/ViewPatternMatching;->enablePatternCalendar:Z

    if-eqz v78, :cond_a

    .line 297
    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    const-string v79, "|(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")|(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")|(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v78

    move-object/from16 v0, v78

    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 299
    :cond_a
    sget-boolean v78, Lcom/android/email/ViewPatternMatching;->enablePatternCalendarKeyword:Z

    if-eqz v78, :cond_b

    .line 300
    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    const-string v79, "|(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v78

    move-object/from16 v0, v78

    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 302
    :cond_b
    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    const-string v79, "|(?i)(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    sget-object v79, Lcom/android/email/ViewPatternMatching;->OWN_WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual/range {v79 .. v79}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v79

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")|(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    sget-object v79, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual/range {v79 .. v79}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v79

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v78

    move-object/from16 v0, v78

    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 304
    sget-boolean v78, Lcom/android/email/ViewPatternMatching;->enablePatternPhone:Z

    if-eqz v78, :cond_c

    .line 305
    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    const-string v79, "|(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v78

    move-object/from16 v0, v78

    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 327
    :cond_c
    :goto_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v72

    .line 328
    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v15

    .line 330
    const-string v60, ".*(?:(?:\\&ndash;)|[\\-\\~\u2013]).*"

    .line 331
    .local v60, strPostPatternSeparate:Ljava/lang/String;
    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    const-string v79, "(?:(?:\\&nbsp;)|\\s){0,2}(?:(?:\\&ndash;)|[\\-\\~\u2013])[\\s]?(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")?"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, "(?:[\\.\\,\\s]|(?:\\&nbsp;)){0,2}(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    .line 333
    .local v59, strPostGeneralTime:Ljava/lang/String;
    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    const-string v79, "(?:(?:\\&nbsp;)|\\s){0,2}(?:(?:\\&ndash;)|[\\-\\~\u2013])[\\s]?"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    .line 335
    .local v58, strPostGeneralDate:Ljava/lang/String;
    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    const-string v79, "(?:[\\.\\,\\s]|(?:\\&nbsp;)){1,2}(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v78

    invoke-static/range {v78 .. v78}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v24

    .line 336
    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    const-string v79, "(?:[\\.\\,\\s]|(?:\\&nbsp;)){1,2}(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")?"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, "(?:[\\.\\,\\s]|(?:\\&nbsp;)){0,2}(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v78

    invoke-static/range {v78 .. v78}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v25

    .line 341
    const/16 v78, 0x1

    move/from16 v0, p2

    move/from16 v1, v78

    if-ne v0, v1, :cond_f

    .line 342
    const/16 v20, 0x0

    .line 343
    .local v20, nTempPosition:I
    const-string v78, "<body>"

    move-object/from16 v0, p1

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    .line 344
    if-nez v20, :cond_d

    const-string v78, "<Body>"

    move-object/from16 v0, p1

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    .line 345
    :cond_d
    if-nez v20, :cond_e

    const-string v78, "<BODY>"

    move-object/from16 v0, p1

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    .line 346
    :cond_e
    move/from16 v0, v20

    move/from16 v1, v16

    if-le v0, v1, :cond_f

    move/from16 v16, v20

    .line 348
    .end local v20           #nTempPosition:I
    :cond_f
    :goto_7
    invoke-virtual/range {v15 .. v16}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v78

    if-eqz v78, :cond_10

    .line 350
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v14

    .line 352
    .local v14, matchedText:Ljava/lang/String;
    move-object v11, v14

    .line 353
    .local v11, linkText:Ljava/lang/String;
    const/16 v27, 0x0

    .line 355
    .local v27, protoType:Ljava/lang/String;
    const/16 v30, 0x0

    .line 356
    .local v30, stPos:I
    const/16 v19, 0x0

    .line 357
    .local v19, nRemoveCheck:I
    const/4 v3, 0x0

    .line 359
    .local v3, bErr:Z
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->end()I

    move-result v16

    .line 361
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v74

    .line 362
    sub-long v78, v74, v72

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/ViewPatternMatching;->nTimeout:I

    move/from16 v80, v0

    move/from16 v0, v80

    int-to-long v0, v0

    move-wide/from16 v80, v0

    cmp-long v78, v78, v80

    if-lez v78, :cond_1e

    .line 363
    const-string v78, "Email"

    new-instance v79, Ljava/lang/StringBuilder;

    invoke-direct/range {v79 .. v79}, Ljava/lang/StringBuilder;-><init>()V

    const-string v80, "reloadUiFromBody : timeout="

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    move-object/from16 v0, v79

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v79

    invoke-static/range {v78 .. v79}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const/4 v4, 0x1

    .line 365
    move-object/from16 v0, v28

    invoke-virtual {v15, v0, v14}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 366
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuffer;->length()I

    move-result v78

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v79

    sub-int v78, v78, v79

    sput v78, Lcom/android/email/ViewPatternMatching;->mCurrentPos:I

    .line 838
    .end local v3           #bErr:Z
    .end local v11           #linkText:Ljava/lang/String;
    .end local v14           #matchedText:Ljava/lang/String;
    .end local v19           #nRemoveCheck:I
    .end local v27           #protoType:Ljava/lang/String;
    .end local v30           #stPos:I
    :cond_10
    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 839
    const/16 v78, 0x0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuffer;->length()I

    move-result v79

    move-object/from16 v0, v29

    move/from16 v1, v78

    move/from16 v2, v79

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 840
    const-string v78, "Email"

    new-instance v79, Ljava/lang/StringBuilder;

    invoke-direct/range {v79 .. v79}, Ljava/lang/StringBuilder;-><init>()V

    const-string v80, "reloadUiFromBody : time1=["

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v80

    sub-long v80, v80, v72

    invoke-virtual/range {v79 .. v81}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v79

    const-string v80, "]"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    invoke-virtual {v15}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v80

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v79

    invoke-static/range {v78 .. v79}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    const-string v78, "</body></html>"

    move-object/from16 v0, v28

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 843
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    .line 844
    const/16 v78, 0x0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuffer;->length()I

    move-result v79

    move-object/from16 v0, v28

    move/from16 v1, v78

    move/from16 v2, v79

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 845
    if-eqz v4, :cond_11

    sget v78, Lcom/android/email/ViewPatternMatching;->mCurrentPos:I

    move/from16 v0, v78

    move/from16 v1, p3

    if-gt v0, v1, :cond_12

    .line 846
    :cond_11
    const/16 v78, 0x0

    sput v78, Lcom/android/email/ViewPatternMatching;->mCurrentPos:I

    .line 848
    :cond_12
    return-object v22

    .line 223
    .end local v38           #strLocalDateRsc:Ljava/lang/String;
    .end local v40           #strLocalKeywordRsc:Ljava/lang/String;
    .end local v41           #strLocalKeywordT1:Ljava/lang/String;
    .end local v42           #strLocalKeywordT2:Ljava/lang/String;
    .end local v43           #strLocalKeywordT3:Ljava/lang/String;
    .end local v45           #strLocalTimeRsc:Ljava/lang/String;
    .end local v58           #strPostGeneralDate:Ljava/lang/String;
    .end local v59           #strPostGeneralTime:Ljava/lang/String;
    .end local v60           #strPostPatternSeparate:Ljava/lang/String;
    .end local v62           #strStandardTime:Ljava/lang/String;
    .end local v67           #strUSkeywordT1:Ljava/lang/String;
    .end local v68           #strUSkeywordT2:Ljava/lang/String;
    .end local v69           #strUSkeywordT3:Ljava/lang/String;
    :cond_13
    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    const-string v79, "|"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v78

    move-object/from16 v0, v49

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    goto/16 :goto_0

    .line 228
    :cond_14
    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v78

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, "|"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, "|"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, "|"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    goto/16 :goto_1

    .line 265
    .restart local v38       #strLocalDateRsc:Ljava/lang/String;
    .restart local v40       #strLocalKeywordRsc:Ljava/lang/String;
    .restart local v41       #strLocalKeywordT1:Ljava/lang/String;
    .restart local v42       #strLocalKeywordT2:Ljava/lang/String;
    .restart local v43       #strLocalKeywordT3:Ljava/lang/String;
    .restart local v45       #strLocalTimeRsc:Ljava/lang/String;
    .restart local v62       #strStandardTime:Ljava/lang/String;
    .restart local v67       #strUSkeywordT1:Ljava/lang/String;
    .restart local v68       #strUSkeywordT2:Ljava/lang/String;
    .restart local v69       #strUSkeywordT3:Ljava/lang/String;
    :cond_15
    move-object/from16 v39, v40

    goto/16 :goto_2

    .line 274
    :cond_16
    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    const-string v79, "(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")|(?:(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")[\\s\\,\\.]{0,2})?(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")|(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    goto/16 :goto_3

    .line 282
    :cond_17
    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    const-string v79, "(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")|(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    goto/16 :goto_4

    .line 287
    :cond_18
    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v78

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, "|"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    goto/16 :goto_5

    .line 311
    :cond_19
    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    const-string v79, "(?i)(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    sget-object v79, Lcom/android/email/ViewPatternMatching;->OWN_WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual/range {v79 .. v79}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v79

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 312
    sget-boolean v78, Lcom/android/email/ViewPatternMatching;->enablePatternLocation:Z

    if-eqz v78, :cond_1a

    .line 313
    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    const-string v79, "|(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v78

    move-object/from16 v0, v78

    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 314
    :cond_1a
    sget-boolean v78, Lcom/android/email/ViewPatternMatching;->enablePatternCalendar:Z

    if-eqz v78, :cond_1b

    .line 315
    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    const-string v79, "|(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")|(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")|(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v78

    move-object/from16 v0, v78

    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 316
    :cond_1b
    sget-boolean v78, Lcom/android/email/ViewPatternMatching;->enablePatternCalendarKeyword:Z

    if-eqz v78, :cond_1c

    .line 317
    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    const-string v79, "|(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v78

    move-object/from16 v0, v78

    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 318
    :cond_1c
    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    const-string v79, "|(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    sget-object v79, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual/range {v79 .. v79}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v79

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v78

    move-object/from16 v0, v78

    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 319
    sget-boolean v78, Lcom/android/email/ViewPatternMatching;->enablePatternPhone:Z

    if-eqz v78, :cond_1d

    .line 320
    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    const-string v79, "|(?:"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const-string v79, ")"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v78

    move-object/from16 v0, v78

    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 321
    :cond_1d
    const-string v78, "|(?=[\\w]{512,})"

    move-object/from16 v0, v78

    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_6

    .line 372
    .restart local v3       #bErr:Z
    .restart local v11       #linkText:Ljava/lang/String;
    .restart local v14       #matchedText:Ljava/lang/String;
    .restart local v19       #nRemoveCheck:I
    .restart local v27       #protoType:Ljava/lang/String;
    .restart local v30       #stPos:I
    .restart local v58       #strPostGeneralDate:Ljava/lang/String;
    .restart local v59       #strPostGeneralTime:Ljava/lang/String;
    .restart local v60       #strPostPatternSeparate:Ljava/lang/String;
    :cond_1e
    move-object/from16 v0, v77

    invoke-static {v0, v14}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v78

    if-eqz v78, :cond_20

    .line 374
    const/16 v17, 0x0

    .line 375
    .local v17, nLocalFindA:I
    const-string v78, "</a>"

    invoke-virtual {v15}, Ljava/util/regex/Matcher;->end()I

    move-result v79

    move-object/from16 v0, p1

    move-object/from16 v1, v78

    move/from16 v2, v79

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v17

    .line 376
    if-nez v17, :cond_1f

    const-string v78, "</A>"

    invoke-virtual {v15}, Ljava/util/regex/Matcher;->end()I

    move-result v79

    move-object/from16 v0, p1

    move-object/from16 v1, v78

    move/from16 v2, v79

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v17

    .line 377
    :cond_1f
    if-eqz v17, :cond_f

    add-int/lit8 v16, v17, 0x4

    goto/16 :goto_7

    .line 380
    .end local v17           #nLocalFindA:I
    :cond_20
    move-object/from16 v0, v76

    invoke-static {v0, v14}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v78

    if-nez v78, :cond_f

    .line 383
    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    const-string v79, "(?i)"

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    sget-object v79, Lcom/android/email/ViewPatternMatching;->OWN_WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual/range {v79 .. v79}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v79

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v78

    move-object/from16 v0, v78

    invoke-static {v0, v14}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v78

    if-nez v78, :cond_21

    sget-object v78, Lcom/android/email/ViewPatternMatching;->OWN_WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual/range {v78 .. v78}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v78

    move-object/from16 v0, v78

    invoke-static {v0, v14}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v78

    if-eqz v78, :cond_28

    .line 389
    :cond_21
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->end()I

    move-result v7

    .line 391
    .local v7, endPos:I
    add-int/lit8 v78, v7, 0x1

    move/from16 v0, v78

    move/from16 v1, v21

    if-ge v0, v1, :cond_22

    .line 392
    add-int/lit8 v78, v7, 0x1

    :try_start_0
    move-object/from16 v0, p1

    move/from16 v1, v78

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v57

    .line 393
    .local v57, strPost:Ljava/lang/String;
    const-string v78, "[\\.]"

    move-object/from16 v0, v57

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9

    move-result v78

    if-nez v78, :cond_f

    .line 399
    .end local v57           #strPost:Ljava/lang/String;
    :cond_22
    :goto_8
    sget-object v78, Lcom/android/email/ViewPatternMatching;->WEB_URL_PROTOCOL:Ljava/util/regex/Pattern;

    move-object/from16 v0, v78

    invoke-virtual {v0, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v26

    .line 400
    .local v26, proto:Ljava/util/regex/Matcher;
    invoke-virtual/range {v26 .. v26}, Ljava/util/regex/Matcher;->find()Z

    move-result v78

    if-eqz v78, :cond_27

    .line 402
    const-string v27, ""

    .line 784
    .end local v7           #endPos:I
    .end local v26           #proto:Ljava/util/regex/Matcher;
    :cond_23
    :goto_9
    if-eqz v27, :cond_24

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v78

    if-nez v78, :cond_24

    if-eqz v11, :cond_24

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v78

    if-lez v78, :cond_24

    .line 786
    const-string v78, ":"

    move-object/from16 v0, v78

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 787
    .local v10, index:I
    const/16 v78, -0x1

    move/from16 v0, v78

    if-eq v10, v0, :cond_24

    .line 788
    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v79, 0x0

    move/from16 v0, v79

    invoke-virtual {v11, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v79

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual {v11, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v79

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 793
    .end local v10           #index:I
    :cond_24
    if-nez v3, :cond_25

    .line 803
    const-string v78, "<a href=\"%s\">%s</a>"

    const/16 v79, 0x2

    move/from16 v0, v79

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v79, v0

    const/16 v80, 0x0

    new-instance v81, Ljava/lang/StringBuilder;

    invoke-direct/range {v81 .. v81}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v81

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v81

    move-object/from16 v0, v81

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v81

    invoke-virtual/range {v81 .. v81}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v81

    aput-object v81, v79, v80

    const/16 v80, 0x1

    aput-object v14, v79, v80

    invoke-static/range {v78 .. v79}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 805
    .local v8, href:Ljava/lang/String;
    move-object/from16 v0, v28

    invoke-virtual {v15, v0, v8}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 807
    .end local v8           #href:Ljava/lang/String;
    :cond_25
    if-lez v19, :cond_5e

    .line 808
    const/16 v71, 0x0

    .line 809
    .local v71, tempend:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_a
    move/from16 v0, v19

    if-ge v9, v0, :cond_5e

    .line 810
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->find()Z

    move-result v78

    if-eqz v78, :cond_5d

    .line 811
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v14

    .line 812
    const-string v78, "test"

    move-object/from16 v0, v29

    move-object/from16 v1, v78

    invoke-virtual {v15, v0, v1}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 813
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->end()I

    move-result v71

    .line 809
    :cond_26
    :goto_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 404
    .end local v9           #i:I
    .end local v71           #tempend:I
    .restart local v7       #endPos:I
    .restart local v26       #proto:Ljava/util/regex/Matcher;
    :cond_27
    const-string v27, "http://"

    goto/16 :goto_9

    .line 406
    .end local v7           #endPos:I
    .end local v26           #proto:Ljava/util/regex/Matcher;
    :cond_28
    sget-boolean v78, Lcom/android/email/ViewPatternMatching;->enablePatternCalendar:Z

    if-eqz v78, :cond_2b

    move-object/from16 v0, v34

    invoke-static {v0, v14}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v78

    if-eqz v78, :cond_2b

    .line 408
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->end()I

    move-result v30

    .line 409
    add-int/lit8 v7, v30, 0x1e

    .line 410
    .restart local v7       #endPos:I
    move/from16 v0, v21

    if-ge v0, v7, :cond_29

    .line 411
    add-int/lit8 v7, v21, -0x1

    .line 413
    :cond_29
    :try_start_1
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v57

    .line 415
    .restart local v57       #strPost:Ljava/lang/String;
    move-object/from16 v0, v24

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 416
    const/16 v18, 0x0

    .line 417
    .local v18, nRefPos:I
    const-string v78, "&n"

    move-object/from16 v0, v57

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v78

    if-eqz v78, :cond_2a

    const/16 v18, 0x8

    .line 418
    :cond_2a
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v78

    if-eqz v78, :cond_f

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->start()I

    move-result v78

    add-int/lit8 v79, v18, 0x4

    move/from16 v0, v78

    move/from16 v1, v79

    if-ge v0, v1, :cond_f

    .line 419
    add-int/lit8 v19, v19, 0x1

    .line 420
    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v78

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const/16 v79, 0x0

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v80

    move-object/from16 v0, v57

    move/from16 v1, v79

    move/from16 v2, v80

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v79

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 421
    move-object v11, v14

    .line 422
    const-string v27, "calendar:T6:"

    .line 423
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v78

    add-int v16, v30, v78

    goto/16 :goto_9

    .line 427
    .end local v18           #nRefPos:I
    .end local v57           #strPost:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 428
    .local v6, e:Ljava/lang/Exception;
    goto/16 :goto_7

    .line 430
    .end local v6           #e:Ljava/lang/Exception;
    .end local v7           #endPos:I
    :cond_2b
    sget-boolean v78, Lcom/android/email/ViewPatternMatching;->enablePatternCalendar:Z

    if-eqz v78, :cond_3f

    move-object/from16 v0, v33

    invoke-static {v0, v14}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v78

    if-eqz v78, :cond_3f

    .line 432
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v30

    .line 435
    const/16 v78, 0x5

    move/from16 v0, v30

    move/from16 v1, v78

    if-lt v0, v1, :cond_f

    .line 438
    const/16 v78, 0x8

    move/from16 v0, v30

    move/from16 v1, v78

    if-ge v0, v1, :cond_2c

    .line 439
    const/16 v78, 0x0

    const/16 v79, 0x2

    :try_start_2
    move/from16 v0, v78

    move/from16 v1, v79

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v57

    .line 441
    .restart local v57       #strPost:Ljava/lang/String;
    const-string v78, "0(\\s|\\/|\\-)"

    move-object/from16 v0, v57

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v78

    if-nez v78, :cond_f

    const-string v78, "00"

    move-object/from16 v0, v57

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v78

    if-nez v78, :cond_f

    .line 443
    add-int/lit8 v78, v30, -0x2

    move/from16 v0, v78

    move/from16 v1, v30

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v57

    .line 445
    const-string v78, "(\\s|\\/|\\-)0"

    move-object/from16 v0, v57

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v78

    if-nez v78, :cond_f

    const-string v78, "00"

    move-object/from16 v0, v57

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v78

    if-nez v78, :cond_f

    .line 448
    .end local v57           #strPost:Ljava/lang/String;
    :cond_2c
    const/16 v78, 0xa

    move/from16 v0, v30

    move/from16 v1, v78

    if-ge v0, v1, :cond_2e

    .line 449
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->end()I

    move-result v7

    .line 450
    .restart local v7       #endPos:I
    add-int/lit8 v78, v7, 0x1

    move/from16 v0, v78

    move/from16 v1, v21

    if-ge v0, v1, :cond_2d

    .line 451
    add-int/lit8 v78, v7, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v78

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v57

    .line 452
    .restart local v57       #strPost:Ljava/lang/String;
    const-string v78, "\\d"

    move-object/from16 v0, v57

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v78

    if-nez v78, :cond_f

    .line 455
    .end local v57           #strPost:Ljava/lang/String;
    :cond_2d
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    .line 456
    add-int/lit8 v78, v7, -0x1

    const/16 v79, 0x1

    move/from16 v0, v78

    move/from16 v1, v79

    if-le v0, v1, :cond_2e

    .line 457
    add-int/lit8 v78, v7, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v78

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v57

    .line 458
    .restart local v57       #strPost:Ljava/lang/String;
    const-string v78, "\\w"

    move-object/from16 v0, v57

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v78

    if-nez v78, :cond_f

    .line 462
    .end local v7           #endPos:I
    .end local v57           #strPost:Ljava/lang/String;
    :cond_2e
    move-object/from16 v57, v14

    .line 463
    .restart local v57       #strPost:Ljava/lang/String;
    invoke-virtual/range {v57 .. v57}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v78

    if-eqz v78, :cond_31

    .line 464
    const/4 v10, 0x0

    .restart local v10       #index:I
    const/4 v5, 0x0

    .line 465
    .local v5, ct:I
    const/4 v10, 0x0

    :goto_c
    invoke-virtual/range {v57 .. v57}, Ljava/lang/String;->length()I

    move-result v78

    move/from16 v0, v78

    if-ge v10, v0, :cond_30

    .line 466
    move-object/from16 v0, v57

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v78

    const/16 v79, 0x39

    move/from16 v0, v78

    move/from16 v1, v79

    if-gt v0, v1, :cond_2f

    move-object/from16 v0, v57

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v78

    const/16 v79, 0x30

    move/from16 v0, v78

    move/from16 v1, v79

    if-lt v0, v1, :cond_2f

    .line 467
    add-int/lit8 v5, v5, 0x1

    .line 465
    :cond_2f
    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    .line 469
    :cond_30
    const/16 v78, 0x6

    move/from16 v0, v78

    if-lt v5, v0, :cond_f

    .line 471
    .end local v5           #ct:I
    .end local v10           #index:I
    :cond_31
    const-string v78, " 0 "

    move-object/from16 v0, v57

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v78

    if-nez v78, :cond_f

    const-string v78, "/0/"

    move-object/from16 v0, v57

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v78

    if-nez v78, :cond_f

    const-string v78, "-0-"

    move-object/from16 v0, v57

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v78

    if-nez v78, :cond_f

    .line 474
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->end()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    move-result v30

    .line 475
    add-int/lit8 v7, v30, 0x12

    .line 477
    .restart local v7       #endPos:I
    move/from16 v0, v21

    if-ge v0, v7, :cond_32

    .line 478
    add-int/lit8 v7, v21, -0x1

    .line 479
    :cond_32
    :try_start_3
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v57

    .line 480
    const/16 v78, 0x0

    move-object/from16 v0, v57

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v78

    const/16 v79, 0x3a

    move/from16 v0, v78

    move/from16 v1, v79

    if-eq v0, v1, :cond_f

    const/16 v78, 0x0

    move-object/from16 v0, v57

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v78

    const/16 v79, 0x2d

    move/from16 v0, v78

    move/from16 v1, v79

    if-eq v0, v1, :cond_f

    .line 482
    const-string v27, "calendar:T2:"

    .line 484
    move-object/from16 v0, v25

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 485
    const/16 v18, 0x0

    .line 486
    .restart local v18       #nRefPos:I
    const-string v78, "&n"

    move-object/from16 v0, v57

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v78

    if-eqz v78, :cond_33

    const/16 v18, 0x8

    .line 487
    :cond_33
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v78

    if-eqz v78, :cond_3c

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->start()I

    move-result v78

    add-int/lit8 v79, v18, 0x4

    move/from16 v0, v78

    move/from16 v1, v79

    if-ge v0, v1, :cond_3c

    .line 488
    add-int/lit8 v19, v19, 0x1

    .line 489
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v78

    add-int v16, v30, v78

    .line 490
    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v78

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const/16 v79, 0x0

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v80

    move-object/from16 v0, v57

    move/from16 v1, v79

    move/from16 v2, v80

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v79

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 491
    move-object v11, v14

    .line 492
    const-string v27, "calendar:T7:"

    .line 494
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v78

    add-int v30, v30, v78

    .line 495
    add-int/lit8 v7, v30, 0x1e

    .line 496
    move/from16 v0, v21

    if-ge v0, v7, :cond_34

    .line 497
    add-int/lit8 v7, v21, -0x1

    .line 498
    :cond_34
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v57

    .line 499
    const/16 v31, 0x0

    .line 500
    .local v31, strCheck:Ljava/lang/String;
    sub-int v78, v7, v30

    const/16 v79, 0x3

    move/from16 v0, v78

    move/from16 v1, v79

    if-le v0, v1, :cond_35

    .line 501
    const/16 v78, 0x0

    const/16 v79, 0x2

    move-object/from16 v0, v57

    move/from16 v1, v78

    move/from16 v2, v79

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    .line 502
    :cond_35
    const-string v78, "&"

    move-object/from16 v0, v31

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v78

    if-eqz v78, :cond_36

    sub-int v78, v7, v30

    const/16 v79, 0xa

    move/from16 v0, v78

    move/from16 v1, v79

    if-le v0, v1, :cond_36

    .line 503
    const/16 v78, 0x0

    const/16 v79, 0x9

    move-object/from16 v0, v57

    move/from16 v1, v78

    move/from16 v2, v79

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    .line 504
    :cond_36
    if-eqz v31, :cond_23

    move-object/from16 v0, v31

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v78

    if-eqz v78, :cond_23

    .line 505
    const/16 v23, 0x0

    .line 506
    .local v23, patPost3:Ljava/util/regex/Pattern;
    invoke-static/range {v59 .. v59}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v23

    .line 507
    move-object/from16 v0, v23

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 508
    const-string v78, "&n"

    move-object/from16 v0, v57

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v78

    if-eqz v78, :cond_38

    const/16 v18, 0x8

    .line 510
    :goto_d
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v78

    if-eqz v78, :cond_39

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->start()I

    move-result v78

    add-int/lit8 v79, v18, 0x4

    move/from16 v0, v78

    move/from16 v1, v79

    if-ge v0, v1, :cond_39

    .line 511
    add-int/lit8 v19, v19, 0x1

    .line 512
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v78

    add-int v16, v30, v78

    .line 513
    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v78

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const/16 v79, 0x0

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v80

    move-object/from16 v0, v57

    move/from16 v1, v79

    move/from16 v2, v80

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v79

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 514
    move-object v11, v14

    .line 515
    const-string v27, "calendar:T7:"

    .line 516
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v78

    add-int v30, v30, v78

    .line 517
    add-int/lit8 v7, v30, 0x1e

    .line 518
    move/from16 v0, v21

    if-ge v0, v7, :cond_37

    .line 519
    add-int/lit8 v7, v21, -0x1

    .line 520
    :cond_37
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v57

    goto/16 :goto_9

    .line 509
    :cond_38
    const/16 v18, 0x0

    goto :goto_d

    .line 523
    :cond_39
    const/16 v70, 0x0

    .line 524
    .local v70, tempMatched:Ljava/lang/String;
    invoke-static/range {v58 .. v58}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v23

    .line 525
    move-object/from16 v0, v23

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 526
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v78

    if-eqz v78, :cond_23

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->start()I

    move-result v78

    add-int/lit8 v79, v18, 0x4

    move/from16 v0, v78

    move/from16 v1, v79

    if-ge v0, v1, :cond_23

    .line 528
    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v78

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const/16 v79, 0x0

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v80

    move-object/from16 v0, v57

    move/from16 v1, v79

    move/from16 v2, v80

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v79

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    .line 530
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v78

    add-int v30, v30, v78

    .line 531
    add-int/lit8 v7, v30, 0x1e

    .line 532
    move/from16 v0, v21

    if-ge v0, v7, :cond_3a

    .line 533
    add-int/lit8 v7, v21, -0x1

    .line 534
    :cond_3a
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v57

    .line 535
    move-object/from16 v0, v25

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 536
    const-string v78, "&n"

    move-object/from16 v0, v57

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v78

    if-eqz v78, :cond_3b

    const/16 v18, 0x8

    .line 538
    :goto_e
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v78

    if-eqz v78, :cond_23

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->start()I

    move-result v78

    add-int/lit8 v79, v18, 0x4

    move/from16 v0, v78

    move/from16 v1, v79

    if-ge v0, v1, :cond_23

    .line 539
    add-int/lit8 v19, v19, 0x2

    .line 540
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v78

    add-int v16, v30, v78

    .line 541
    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v78

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const/16 v79, 0x0

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v80

    move-object/from16 v0, v57

    move/from16 v1, v79

    move/from16 v2, v80

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v79

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 542
    move-object v11, v14

    .line 543
    const-string v27, "calendar:T3:"

    goto/16 :goto_9

    .line 537
    :cond_3b
    const/16 v18, 0x0

    goto :goto_e

    .line 550
    .end local v23           #patPost3:Ljava/util/regex/Pattern;
    .end local v31           #strCheck:Ljava/lang/String;
    .end local v70           #tempMatched:Ljava/lang/String;
    :cond_3c
    const/16 v23, 0x0

    .line 551
    .restart local v23       #patPost3:Ljava/util/regex/Pattern;
    invoke-static/range {v58 .. v58}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v23

    .line 552
    add-int/lit8 v7, v30, 0x1e

    .line 553
    move/from16 v0, v21

    if-ge v0, v7, :cond_3d

    .line 554
    add-int/lit8 v7, v21, -0x1

    .line 555
    :cond_3d
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v57

    .line 556
    move-object/from16 v0, v23

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 557
    const-string v78, "&n"

    move-object/from16 v0, v57

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v78

    if-eqz v78, :cond_3e

    const/16 v18, 0x8

    .line 559
    :goto_f
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v78

    if-eqz v78, :cond_23

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->start()I

    move-result v78

    add-int/lit8 v79, v18, 0x4

    move/from16 v0, v78

    move/from16 v1, v79

    if-ge v0, v1, :cond_23

    .line 560
    add-int/lit8 v19, v19, 0x1

    .line 561
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v78

    add-int v16, v30, v78

    .line 562
    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v78

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const/16 v79, 0x0

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v80

    move-object/from16 v0, v57

    move/from16 v1, v79

    move/from16 v2, v80

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v79

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 563
    move-object v11, v14

    .line 564
    const-string v27, "calendar:T2:"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    goto/16 :goto_9

    .line 558
    :cond_3e
    const/16 v18, 0x0

    goto :goto_f

    .line 574
    .end local v7           #endPos:I
    .end local v18           #nRefPos:I
    .end local v23           #patPost3:Ljava/util/regex/Pattern;
    .end local v57           #strPost:Ljava/lang/String;
    :cond_3f
    sget-boolean v78, Lcom/android/email/ViewPatternMatching;->enablePatternCalendar:Z

    if-eqz v78, :cond_49

    move-object/from16 v0, v36

    invoke-static {v0, v14}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v78

    if-eqz v78, :cond_49

    .line 576
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->start()I

    move-result v30

    .line 577
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->end()I

    move-result v7

    .line 579
    .restart local v7       #endPos:I
    const/16 v78, 0x2

    move/from16 v0, v30

    move/from16 v1, v78

    if-le v0, v1, :cond_40

    .line 580
    add-int/lit8 v78, v30, -0x1

    :try_start_4
    move-object/from16 v0, p1

    move/from16 v1, v78

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v57

    .line 581
    .restart local v57       #strPost:Ljava/lang/String;
    const-string v78, "[\\w\\d\\-@#:]"

    move-object/from16 v0, v57

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v78

    if-nez v78, :cond_f

    .line 585
    .end local v57           #strPost:Ljava/lang/String;
    :cond_40
    add-int/lit8 v78, v7, 0x2

    move/from16 v0, v78

    move/from16 v1, v21

    if-ge v0, v1, :cond_41

    .line 586
    add-int/lit8 v78, v7, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v78

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v57

    .line 587
    .restart local v57       #strPost:Ljava/lang/String;
    const-string v78, "([\\.:]\\d)|(\\d.)"

    move-object/from16 v0, v57

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    move-result v78

    if-nez v78, :cond_f

    .line 593
    .end local v57           #strPost:Ljava/lang/String;
    :cond_41
    :goto_10
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->end()I

    move-result v30

    .line 594
    add-int/lit8 v7, v30, 0x1e

    .line 595
    move/from16 v0, v21

    if-ge v0, v7, :cond_42

    .line 596
    add-int/lit8 v7, v21, -0x1

    .line 597
    :cond_42
    move-object v11, v14

    .line 598
    const-string v27, "calendar:T1:"

    .line 600
    :try_start_5
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v57

    .line 602
    .restart local v57       #strPost:Ljava/lang/String;
    const/16 v31, 0x0

    .line 603
    .restart local v31       #strCheck:Ljava/lang/String;
    const/16 v18, 0x0

    .line 604
    .restart local v18       #nRefPos:I
    sub-int v78, v7, v30

    const/16 v79, 0x3

    move/from16 v0, v78

    move/from16 v1, v79

    if-le v0, v1, :cond_43

    .line 605
    const/16 v78, 0x0

    const/16 v79, 0x2

    move-object/from16 v0, v57

    move/from16 v1, v78

    move/from16 v2, v79

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    .line 606
    :cond_43
    const-string v78, "&"

    move-object/from16 v0, v31

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v78

    if-eqz v78, :cond_44

    sub-int v78, v7, v30

    const/16 v79, 0xa

    move/from16 v0, v78

    move/from16 v1, v79

    if-le v0, v1, :cond_44

    .line 607
    const/16 v78, 0x0

    const/16 v79, 0x9

    move-object/from16 v0, v57

    move/from16 v1, v78

    move/from16 v2, v79

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    .line 608
    :cond_44
    if-eqz v31, :cond_47

    move-object/from16 v0, v31

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v78

    if-eqz v78, :cond_47

    .line 609
    const/16 v23, 0x0

    .line 610
    .restart local v23       #patPost3:Ljava/util/regex/Pattern;
    const/4 v13, 0x0

    .line 611
    invoke-static/range {v59 .. v59}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v23

    .line 612
    move-object/from16 v0, v23

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 613
    const-string v78, "&n"

    move-object/from16 v0, v57

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v78

    if-eqz v78, :cond_45

    const/16 v18, 0x8

    .line 614
    :cond_45
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v78

    if-eqz v78, :cond_47

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->start()I

    move-result v78

    add-int/lit8 v79, v18, 0x4

    move/from16 v0, v78

    move/from16 v1, v79

    if-ge v0, v1, :cond_47

    .line 615
    add-int/lit8 v19, v19, 0x1

    .line 616
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v78

    add-int v16, v30, v78

    .line 617
    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v78

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const/16 v79, 0x0

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v80

    move-object/from16 v0, v57

    move/from16 v1, v79

    move/from16 v2, v80

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v79

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 618
    move-object v11, v14

    .line 619
    const-string v27, "calendar:T1:"

    .line 620
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v78

    add-int v30, v30, v78

    .line 621
    add-int/lit8 v7, v30, 0x1e

    .line 622
    move/from16 v0, v21

    if-ge v0, v7, :cond_46

    .line 623
    add-int/lit8 v7, v21, -0x1

    .line 624
    :cond_46
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v57

    .line 629
    .end local v23           #patPost3:Ljava/util/regex/Pattern;
    :cond_47
    move-object/from16 v0, v24

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 630
    const-string v78, "&n"

    move-object/from16 v0, v57

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v78

    if-eqz v78, :cond_48

    const/16 v18, 0x8

    .line 632
    :goto_11
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v78

    if-eqz v78, :cond_23

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->start()I

    move-result v78

    add-int/lit8 v79, v18, 0x4

    move/from16 v0, v78

    move/from16 v1, v79

    if-ge v0, v1, :cond_23

    .line 633
    add-int/lit8 v19, v19, 0x1

    .line 634
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v78

    add-int v16, v30, v78

    .line 635
    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v78

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const/16 v79, 0x0

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v80

    move-object/from16 v0, v57

    move/from16 v1, v79

    move/from16 v2, v80

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v79

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 636
    move-object v11, v14

    .line 637
    const-string v27, "calendar:T4:"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_9

    .line 631
    :cond_48
    const/16 v18, 0x0

    goto :goto_11

    .line 643
    .end local v7           #endPos:I
    .end local v18           #nRefPos:I
    .end local v31           #strCheck:Ljava/lang/String;
    .end local v57           #strPost:Ljava/lang/String;
    :cond_49
    sget-boolean v78, Lcom/android/email/ViewPatternMatching;->enablePatternCalendarKeyword:Z

    if-eqz v78, :cond_52

    move-object/from16 v0, v35

    invoke-static {v0, v14}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v78

    if-eqz v78, :cond_52

    .line 646
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->end()I

    move-result v30

    .line 647
    add-int/lit8 v7, v30, 0x12

    .line 648
    .restart local v7       #endPos:I
    move/from16 v0, v21

    if-ge v0, v7, :cond_4a

    .line 649
    add-int/lit8 v7, v21, -0x1

    .line 650
    :cond_4a
    const-string v27, "calendar:T5:"

    .line 651
    move-object v11, v14

    .line 653
    :try_start_6
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v57

    .line 654
    .restart local v57       #strPost:Ljava/lang/String;
    const/16 v31, 0x0

    .line 655
    .restart local v31       #strCheck:Ljava/lang/String;
    const/16 v18, 0x0

    .line 656
    .restart local v18       #nRefPos:I
    sub-int v78, v7, v30

    const/16 v79, 0x3

    move/from16 v0, v78

    move/from16 v1, v79

    if-le v0, v1, :cond_4b

    .line 657
    const/16 v78, 0x0

    const/16 v79, 0x2

    move-object/from16 v0, v57

    move/from16 v1, v78

    move/from16 v2, v79

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    .line 658
    :cond_4b
    const-string v78, "&"

    move-object/from16 v0, v31

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v78

    if-eqz v78, :cond_4c

    sub-int v78, v7, v30

    const/16 v79, 0xa

    move/from16 v0, v78

    move/from16 v1, v79

    if-le v0, v1, :cond_4c

    .line 659
    const/16 v78, 0x0

    const/16 v79, 0x9

    move-object/from16 v0, v57

    move/from16 v1, v78

    move/from16 v2, v79

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    .line 660
    :cond_4c
    if-eqz v31, :cond_51

    move-object/from16 v0, v31

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v78

    if-nez v78, :cond_51

    .line 662
    move-object/from16 v0, v25

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 663
    const-string v78, "&n"

    move-object/from16 v0, v57

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v78

    if-eqz v78, :cond_4d

    const/16 v18, 0x8

    .line 664
    :cond_4d
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v78

    if-eqz v78, :cond_4f

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->start()I

    move-result v78

    add-int/lit8 v79, v18, 0x4

    move/from16 v0, v78

    move/from16 v1, v79

    if-ge v0, v1, :cond_4f

    .line 665
    add-int/lit8 v19, v19, 0x1

    .line 666
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v78

    add-int v16, v30, v78

    .line 667
    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v78

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const/16 v79, 0x0

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v80

    move-object/from16 v0, v57

    move/from16 v1, v79

    move/from16 v2, v80

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v79

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 668
    move-object v11, v14

    .line 669
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v78

    add-int v30, v30, v78

    .line 670
    add-int/lit8 v7, v30, 0x1e

    .line 671
    move/from16 v0, v21

    if-ge v0, v7, :cond_4e

    .line 672
    add-int/lit8 v7, v21, -0x1

    .line 673
    :cond_4e
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v57

    .line 676
    :cond_4f
    const/16 v23, 0x0

    .line 677
    .restart local v23       #patPost3:Ljava/util/regex/Pattern;
    const/4 v13, 0x0

    .line 678
    invoke-static/range {v59 .. v59}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v23

    .line 679
    move-object/from16 v0, v23

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 680
    const-string v78, "&n"

    move-object/from16 v0, v57

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v78

    if-eqz v78, :cond_50

    const/16 v18, 0x8

    .line 682
    :goto_12
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v78

    if-eqz v78, :cond_23

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->start()I

    move-result v78

    add-int/lit8 v79, v18, 0x4

    move/from16 v0, v78

    move/from16 v1, v79

    if-ge v0, v1, :cond_23

    .line 683
    add-int/lit8 v19, v19, 0x1

    .line 684
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v78

    add-int v16, v30, v78

    .line 685
    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v78

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const/16 v79, 0x0

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v80

    move-object/from16 v0, v57

    move/from16 v1, v79

    move/from16 v2, v80

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v79

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 686
    move-object v11, v14

    .line 687
    const-string v27, "calendar:T5:"

    goto/16 :goto_9

    .line 681
    :cond_50
    const/16 v18, 0x0

    goto :goto_12

    .line 691
    .end local v23           #patPost3:Ljava/util/regex/Pattern;
    :cond_51
    const/16 v23, 0x0

    .line 692
    .restart local v23       #patPost3:Ljava/util/regex/Pattern;
    const/4 v13, 0x0

    .line 693
    invoke-static/range {v59 .. v59}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v23

    .line 694
    move-object/from16 v0, v23

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 695
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v78

    if-eqz v78, :cond_23

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->start()I

    move-result v78

    const/16 v79, 0x4

    move/from16 v0, v78

    move/from16 v1, v79

    if-ge v0, v1, :cond_23

    .line 696
    add-int/lit8 v19, v19, 0x1

    .line 697
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v78

    add-int v16, v30, v78

    .line 698
    new-instance v78, Ljava/lang/StringBuilder;

    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v78

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    const/16 v79, 0x0

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v80

    move-object/from16 v0, v57

    move/from16 v1, v79

    move/from16 v2, v80

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v79

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 699
    move-object v11, v14

    .line 700
    const-string v27, "calendar:T5:"
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_9

    .line 706
    .end local v7           #endPos:I
    .end local v18           #nRefPos:I
    .end local v23           #patPost3:Ljava/util/regex/Pattern;
    .end local v31           #strCheck:Ljava/lang/String;
    .end local v57           #strPost:Ljava/lang/String;
    :cond_52
    sget-object v78, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual/range {v78 .. v78}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v78

    move-object/from16 v0, v78

    invoke-static {v0, v14}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v78

    if-eqz v78, :cond_53

    .line 709
    const-string v27, "mailto:"

    goto/16 :goto_9

    .line 710
    :cond_53
    sget-boolean v78, Lcom/android/email/ViewPatternMatching;->enablePatternPhone:Z

    if-eqz v78, :cond_58

    move-object/from16 v0, v56

    invoke-static {v0, v14}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v78

    if-eqz v78, :cond_58

    .line 711
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->start()I

    move-result v30

    .line 712
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->end()I

    move-result v7

    .line 714
    .restart local v7       #endPos:I
    :try_start_7
    const-string v78, ".0."

    move-object/from16 v0, v78

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v78

    if-nez v78, :cond_f

    const/16 v78, 0x0

    move/from16 v0, v78

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v78

    const/16 v79, 0x2d

    move/from16 v0, v78

    move/from16 v1, v79

    if-eq v0, v1, :cond_f

    .line 717
    move-object/from16 v57, v14

    .line 718
    .restart local v57       #strPost:Ljava/lang/String;
    invoke-virtual/range {v57 .. v57}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v78

    move-object/from16 v0, v78

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v78

    if-nez v78, :cond_f

    .line 721
    const/4 v10, 0x0

    .restart local v10       #index:I
    const/4 v5, 0x0

    .line 722
    .restart local v5       #ct:I
    const/4 v10, 0x0

    :goto_13
    invoke-virtual/range {v57 .. v57}, Ljava/lang/String;->length()I

    move-result v78

    move/from16 v0, v78

    if-ge v10, v0, :cond_55

    .line 723
    move-object/from16 v0, v57

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v78

    const/16 v79, 0x39

    move/from16 v0, v78

    move/from16 v1, v79

    if-gt v0, v1, :cond_54

    move-object/from16 v0, v57

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v78

    const/16 v79, 0x30

    move/from16 v0, v78

    move/from16 v1, v79

    if-lt v0, v1, :cond_54

    .line 724
    add-int/lit8 v5, v5, 0x1

    .line 722
    :cond_54
    add-int/lit8 v10, v10, 0x1

    goto :goto_13

    .line 726
    :cond_55
    const/16 v78, 0x7

    move/from16 v0, v78

    if-lt v5, v0, :cond_f

    .line 727
    const/16 v78, 0x2

    move/from16 v0, v30

    move/from16 v1, v78

    if-le v0, v1, :cond_56

    .line 728
    add-int/lit8 v78, v30, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v78

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v57

    .line 732
    const-string v78, "[\\w\\d\\-@#]"

    move-object/from16 v0, v57

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v78

    if-nez v78, :cond_f

    .line 737
    :cond_56
    add-int/lit8 v78, v7, 0x1

    move/from16 v0, v78

    move/from16 v1, v21

    if-ge v0, v1, :cond_57

    .line 738
    add-int/lit8 v78, v7, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v78

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v57

    .line 740
    const-string v78, "\\w|\\d"

    move-object/from16 v0, v57

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v78

    if-nez v78, :cond_f

    .line 743
    const-string v78, "<"

    move-object/from16 v0, v57

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v78

    if-nez v78, :cond_57

    const-string v78, "[\\w\\d\\-:@]"

    move-object/from16 v0, v57

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    move-result v78

    if-nez v78, :cond_f

    .line 751
    .end local v5           #ct:I
    .end local v10           #index:I
    .end local v57           #strPost:Ljava/lang/String;
    :cond_57
    :goto_14
    const-string v27, "tel:"

    goto/16 :goto_9

    .line 752
    .end local v7           #endPos:I
    :cond_58
    move-object/from16 v0, v51

    invoke-static {v0, v14}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v78

    if-eqz v78, :cond_59

    .line 753
    const-string v27, "geo:0,0?q="

    .line 754
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_9

    .line 755
    :cond_59
    move-object/from16 v0, v52

    invoke-static {v0, v14}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v78

    if-eqz v78, :cond_5c

    .line 756
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v78

    const/16 v79, 0x10

    move/from16 v0, v78

    move/from16 v1, v79

    if-lt v0, v1, :cond_f

    .line 757
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->start()I

    move-result v30

    .line 758
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->end()I

    move-result v7

    .line 760
    .restart local v7       #endPos:I
    if-eqz v30, :cond_5a

    const/16 v78, 0x0

    :try_start_8
    move/from16 v0, v78

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v78

    const/16 v79, 0x20

    move/from16 v0, v78

    move/from16 v1, v79

    if-eq v0, v1, :cond_5a

    .line 761
    add-int/lit8 v78, v30, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v78

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v57

    .line 762
    .restart local v57       #strPost:Ljava/lang/String;
    const-string v78, ">"

    move-object/from16 v0, v57

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v78

    if-nez v78, :cond_5a

    const-string v78, "[\\w\\d]"

    move-object/from16 v0, v57

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v78

    if-nez v78, :cond_f

    .line 766
    .end local v57           #strPost:Ljava/lang/String;
    :cond_5a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v78

    add-int/lit8 v78, v78, -0x2

    move/from16 v0, v78

    if-ge v7, v0, :cond_5b

    add-int/lit8 v78, v7, -0x1

    move/from16 v0, v78

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v78

    const/16 v79, 0x20

    move/from16 v0, v78

    move/from16 v1, v79

    if-eq v0, v1, :cond_5b

    .line 767
    add-int/lit8 v78, v7, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v78

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v57

    .line 768
    .restart local v57       #strPost:Ljava/lang/String;
    const-string v78, "<"

    move-object/from16 v0, v57

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v78

    if-nez v78, :cond_5b

    const-string v78, "[\\w\\d]"

    move-object/from16 v0, v57

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    move-result v78

    if-nez v78, :cond_f

    .line 774
    .end local v57           #strPost:Ljava/lang/String;
    :cond_5b
    :goto_15
    const-string v27, "geo:0,0?q="

    .line 775
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_9

    .line 781
    .end local v7           #endPos:I
    :cond_5c
    const/4 v3, 0x1

    goto/16 :goto_9

    .line 815
    .restart local v9       #i:I
    .restart local v71       #tempend:I
    :cond_5d
    move/from16 v0, v71

    move/from16 v1, v16

    if-eq v0, v1, :cond_26

    const/16 v78, 0x5

    move/from16 v0, v16

    move/from16 v1, v78

    if-le v0, v1, :cond_26

    .line 817
    :try_start_9
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    .line 818
    add-int/lit8 v78, v16, -0x5

    move/from16 v0, v78

    invoke-virtual {v15, v0}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v78

    if-eqz v78, :cond_26

    .line 819
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->end()I

    move-result v71

    .line 820
    sub-int v78, v71, v16

    invoke-static/range {v78 .. v78}, Ljava/lang/Math;->abs(I)I

    move-result v78

    const/16 v79, 0x2

    move/from16 v0, v78

    move/from16 v1, v79

    if-ge v0, v1, :cond_26

    .line 821
    const-string v78, "test"

    move-object/from16 v0, v29

    move-object/from16 v1, v78

    invoke-virtual {v15, v0, v1}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 822
    move/from16 v16, v71

    goto/16 :goto_b

    .line 830
    .end local v9           #i:I
    .end local v71           #tempend:I
    :cond_5e
    const/16 v19, 0x0

    .line 831
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuffer;->length()I

    move-result v78

    sput v78, Lcom/android/email/ViewPatternMatching;->mCurrentPos:I

    goto/16 :goto_7

    .line 825
    .restart local v9       #i:I
    .restart local v71       #tempend:I
    :catch_1
    move-exception v78

    goto/16 :goto_b

    .line 772
    .end local v9           #i:I
    .end local v71           #tempend:I
    .restart local v7       #endPos:I
    :catch_2
    move-exception v78

    goto :goto_15

    .line 749
    :catch_3
    move-exception v78

    goto/16 :goto_14

    .line 703
    :catch_4
    move-exception v78

    goto/16 :goto_9

    .line 639
    :catch_5
    move-exception v78

    goto/16 :goto_9

    .line 591
    :catch_6
    move-exception v78

    goto/16 :goto_10

    .line 570
    .end local v7           #endPos:I
    :catch_7
    move-exception v78

    goto/16 :goto_9

    .line 567
    .restart local v7       #endPos:I
    .restart local v57       #strPost:Ljava/lang/String;
    :catch_8
    move-exception v78

    goto/16 :goto_9

    .line 397
    .end local v57           #strPost:Ljava/lang/String;
    :catch_9
    move-exception v78

    goto/16 :goto_8
.end method

.method public pmFindPos()I
    .locals 1

    .prologue
    .line 133
    sget v0, Lcom/android/email/ViewPatternMatching;->mCurrentPos:I

    return v0
.end method

.method public pmInit(Landroid/content/Context;IJ)V
    .locals 3
    .parameter "ct"
    .parameter "nOption"
    .parameter "nLocalTimeOfMessage"

    .prologue
    const/4 v2, 0x1

    .line 105
    iput-object p1, p0, Lcom/android/email/ViewPatternMatching;->mContext:Landroid/content/Context;

    .line 106
    if-gez p2, :cond_0

    const/4 p2, 0x7

    .line 107
    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-ne v0, v2, :cond_1

    .line 108
    sput-boolean v2, Lcom/android/email/ViewPatternMatching;->enablePatternPhone:Z

    .line 109
    :cond_1
    and-int/lit8 v0, p2, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 110
    sput-boolean v2, Lcom/android/email/ViewPatternMatching;->enablePatternCalendar:Z

    .line 111
    :cond_2
    and-int/lit8 v0, p2, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 112
    sput-boolean v2, Lcom/android/email/ViewPatternMatching;->enablePatternCalendarKeyword:Z

    .line 113
    :cond_3
    and-int/lit8 v0, p2, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    .line 114
    sput-boolean v2, Lcom/android/email/ViewPatternMatching;->enablePatternLocation:Z

    .line 115
    :cond_4
    iput-wide p3, p0, Lcom/android/email/ViewPatternMatching;->mTimeOfMessage:J

    .line 116
    const/4 v0, 0x0

    sput v0, Lcom/android/email/ViewPatternMatching;->mCurrentPos:I

    .line 117
    const/16 v0, 0xfa0

    iput v0, p0, Lcom/android/email/ViewPatternMatching;->nTimeout:I

    .line 118
    return-void
.end method

.method public pmSettimeout(I)V
    .locals 0
    .parameter "timeout"

    .prologue
    .line 137
    iput p1, p0, Lcom/android/email/ViewPatternMatching;->nTimeout:I

    .line 138
    return-void
.end method
