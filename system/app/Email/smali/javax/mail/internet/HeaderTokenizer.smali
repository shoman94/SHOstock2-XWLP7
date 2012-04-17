.class public Ljavax/mail/internet/HeaderTokenizer;
.super Ljava/lang/Object;
.source "HeaderTokenizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/internet/HeaderTokenizer$Token;
    }
.end annotation


# static fields
.field private static final EOF:Ljavax/mail/internet/HeaderTokenizer$Token;


# instance fields
.field private delimiters:Ljava/lang/String;

.field private header:Ljava/lang/String;

.field private maxPos:I

.field private next:I

.field private peek:I

.field private pos:I

.field private skipComments:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 132
    new-instance v0, Ljavax/mail/internet/HeaderTokenizer$Token;

    const/4 v1, -0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljavax/mail/internet/HeaderTokenizer;->EOF:Ljavax/mail/internet/HeaderTokenizer$Token;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 193
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ljavax/mail/internet/HeaderTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 194
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 177
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    .line 159
    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->next:I

    .line 165
    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->peek:I

    .line 178
    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->header:Ljava/lang/String;

    .line 179
    iput-object p2, p0, Ljavax/mail/internet/HeaderTokenizer;->delimiters:Ljava/lang/String;

    .line 180
    iput-boolean p3, p0, Ljavax/mail/internet/HeaderTokenizer;->skipComments:Z

    .line 181
    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->peek:I

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->next:I

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    .line 182
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    .line 183
    return-void

    :cond_0
    move-object v0, p1

    .line 178
    goto :goto_0
.end method

.method private filter(Ljava/lang/String;II)Ljava/lang/String;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 384
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move v3, v1

    move v0, v1

    .line 387
    :goto_0
    if-ge p2, p3, :cond_4

    .line 389
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 390
    const/16 v6, 0xa

    if-ne v5, v6, :cond_0

    if-eqz v3, :cond_0

    move v3, v0

    move v0, v1

    .line 387
    :goto_1
    add-int/lit8 p2, p2, 0x1

    move v7, v0

    move v0, v3

    move v3, v7

    goto :goto_0

    .line 397
    :cond_0
    if-nez v0, :cond_3

    .line 399
    const/16 v3, 0x5c

    if-ne v5, v3, :cond_1

    move v0, v1

    move v3, v2

    .line 401
    goto :goto_1

    .line 403
    :cond_1
    const/16 v3, 0xd

    if-ne v5, v3, :cond_2

    move v3, v0

    move v0, v2

    .line 405
    goto :goto_1

    .line 409
    :cond_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v3, v0

    move v0, v1

    goto :goto_1

    .line 414
    :cond_3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v1

    move v3, v1

    .line 415
    goto :goto_1

    .line 419
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private skipWhitespace()I
    .locals 2

    .prologue
    .line 367
    :goto_0
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-ge v0, v1, :cond_1

    .line 369
    iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->header:Ljava/lang/String;

    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 370
    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 372
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    .line 376
    :goto_1
    return v0

    .line 374
    :cond_0
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    goto :goto_0

    .line 376
    :cond_1
    const/4 v0, -0x4

    goto :goto_1
.end method

.method private token()Ljavax/mail/internet/HeaderTokenizer$Token;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .prologue
    const/4 v9, -0x4

    const/16 v8, 0x28

    const/16 v7, 0x22

    const/16 v6, 0x20

    const/4 v2, 0x1

    .line 251
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-lt v0, v1, :cond_0

    .line 253
    sget-object v0, Ljavax/mail/internet/HeaderTokenizer;->EOF:Ljavax/mail/internet/HeaderTokenizer$Token;

    .line 359
    :goto_0
    return-object v0

    .line 255
    :cond_0
    invoke-direct {p0}, Ljavax/mail/internet/HeaderTokenizer;->skipWhitespace()I

    move-result v0

    if-ne v0, v9, :cond_1

    .line 257
    sget-object v0, Ljavax/mail/internet/HeaderTokenizer;->EOF:Ljavax/mail/internet/HeaderTokenizer$Token;

    goto :goto_0

    .line 260
    :cond_1
    const/4 v1, 0x0

    .line 264
    iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->header:Ljava/lang/String;

    iget v3, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v10, v0

    move v0, v1

    move v1, v10

    :goto_1
    if-ne v1, v8, :cond_b

    .line 266
    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    move v1, v0

    move v0, v2

    .line 268
    :goto_2
    if-lez v0, :cond_6

    iget v4, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    iget v5, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-ge v4, v5, :cond_6

    .line 270
    iget-object v4, p0, Ljavax/mail/internet/HeaderTokenizer;->header:Ljava/lang/String;

    iget v5, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 271
    const/16 v5, 0x5c

    if-ne v4, v5, :cond_3

    .line 273
    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    move v1, v2

    .line 288
    :cond_2
    :goto_3
    iget v4, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    goto :goto_2

    .line 276
    :cond_3
    const/16 v5, 0xd

    if-ne v4, v5, :cond_4

    move v1, v2

    .line 278
    goto :goto_3

    .line 280
    :cond_4
    if-ne v4, v8, :cond_5

    .line 282
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 284
    :cond_5
    const/16 v5, 0x29

    if-ne v4, v5, :cond_2

    .line 286
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 291
    :cond_6
    if-eqz v0, :cond_7

    .line 293
    new-instance v0, Ljavax/mail/internet/ParseException;

    const-string v1, "Illegal comment"

    invoke-direct {v0, v1}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_7
    iget-boolean v0, p0, Ljavax/mail/internet/HeaderTokenizer;->skipComments:Z

    if-nez v0, :cond_9

    .line 298
    if-eqz v1, :cond_8

    iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->header:Ljava/lang/String;

    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v3, v1}, Ljavax/mail/internet/HeaderTokenizer;->filter(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 301
    :goto_4
    new-instance v1, Ljavax/mail/internet/HeaderTokenizer$Token;

    const/4 v2, -0x3

    invoke-direct {v1, v2, v0}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 298
    :cond_8
    iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->header:Ljava/lang/String;

    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 304
    :cond_9
    invoke-direct {p0}, Ljavax/mail/internet/HeaderTokenizer;->skipWhitespace()I

    move-result v0

    if-ne v0, v9, :cond_a

    .line 306
    sget-object v0, Ljavax/mail/internet/HeaderTokenizer;->EOF:Ljavax/mail/internet/HeaderTokenizer$Token;

    goto/16 :goto_0

    .line 264
    :cond_a
    iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->header:Ljava/lang/String;

    iget v3, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v10, v0

    move v0, v1

    move v1, v10

    goto :goto_1

    .line 311
    :cond_b
    if-ne v1, v7, :cond_11

    .line 313
    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    .line 314
    :goto_5
    iget v3, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    iget v4, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-ge v3, v4, :cond_10

    .line 316
    iget-object v3, p0, Ljavax/mail/internet/HeaderTokenizer;->header:Ljava/lang/String;

    iget v4, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 317
    const/16 v4, 0x5c

    if-ne v3, v4, :cond_d

    .line 319
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    move v0, v2

    .line 334
    :cond_c
    :goto_6
    iget v3, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    goto :goto_5

    .line 322
    :cond_d
    const/16 v4, 0xd

    if-ne v3, v4, :cond_e

    move v0, v2

    .line 324
    goto :goto_6

    .line 326
    :cond_e
    if-ne v3, v7, :cond_c

    .line 328
    iget v2, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    .line 329
    if-eqz v0, :cond_f

    iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->header:Ljava/lang/String;

    iget v2, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v0, v1, v2}, Ljavax/mail/internet/HeaderTokenizer;->filter(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 332
    :goto_7
    new-instance v1, Ljavax/mail/internet/HeaderTokenizer$Token;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v0}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 329
    :cond_f
    iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->header:Ljava/lang/String;

    iget v2, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 336
    :cond_10
    new-instance v0, Ljavax/mail/internet/ParseException;

    const-string v1, "Illegal quoted string"

    invoke-direct {v0, v1}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 340
    :cond_11
    if-lt v1, v6, :cond_12

    const/16 v0, 0x7f

    if-ge v1, v0, :cond_12

    iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->delimiters:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_13

    .line 342
    :cond_12
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    .line 343
    new-array v2, v2, [C

    const/4 v0, 0x0

    aput-char v1, v2, v0

    .line 344
    new-instance v0, Ljavax/mail/internet/HeaderTokenizer$Token;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v0, v1, v3}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 348
    :cond_13
    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    .line 349
    :goto_8
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    iget v2, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-ge v0, v2, :cond_14

    .line 351
    iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->header:Ljava/lang/String;

    iget v2, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 352
    if-lt v0, v6, :cond_14

    const/16 v2, 0x7f

    if-ge v0, v2, :cond_14

    if-eq v0, v8, :cond_14

    if-eq v0, v6, :cond_14

    if-eq v0, v7, :cond_14

    iget-object v2, p0, Ljavax/mail/internet/HeaderTokenizer;->delimiters:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_15

    .line 359
    :cond_14
    new-instance v0, Ljavax/mail/internet/HeaderTokenizer$Token;

    const/4 v2, -0x1

    iget-object v3, p0, Ljavax/mail/internet/HeaderTokenizer;->header:Ljava/lang/String;

    iget v4, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 357
    :cond_15
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    goto :goto_8
.end method


# virtual methods
.method public getRemainder()Ljava/lang/String;
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->header:Ljava/lang/String;

    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->next:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljavax/mail/internet/HeaderTokenizer$Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .prologue
    .line 214
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->next:I

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    .line 215
    invoke-direct {p0}, Ljavax/mail/internet/HeaderTokenizer;->token()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v0

    .line 216
    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->pos:I

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->next:I

    .line 217
    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->next:I

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->peek:I

    .line 218
    return-object v0
.end method
