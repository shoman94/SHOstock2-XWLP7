.class Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;
.super Ljava/io/FilterOutputStream;
.source "SMIMEUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/mail/smime/SMIMEUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LineOutputStream"
.end annotation


# static fields
.field private static newline:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 86
    const/4 v0, 0x2

    new-array v0, v0, [B

    sput-object v0, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;->newline:[B

    .line 87
    sget-object v0, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;->newline:[B

    const/4 v1, 0x0

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    .line 88
    sget-object v0, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;->newline:[B

    const/4 v1, 0x1

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .parameter "outputstream"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 65
    return-void
.end method

.method private static getBytes(Ljava/lang/String;)[B
    .locals 6
    .parameter "s"

    .prologue
    .line 92
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 93
    .local v1, ac:[C
    array-length v2, v1

    .line 94
    .local v2, i:I
    new-array v0, v2, [B

    .line 95
    .local v0, abyte0:[B
    const/4 v3, 0x0

    .local v3, j:I
    move v4, v3

    .line 97
    .end local v3           #j:I
    .local v4, j:I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 98
    add-int/lit8 v3, v4, 0x1

    .end local v4           #j:I
    .restart local v3       #j:I
    aget-char v5, v1, v4

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    move v4, v3

    .end local v3           #j:I
    .restart local v4       #j:I
    goto :goto_0

    .line 101
    :cond_0
    return-object v0
.end method


# virtual methods
.method public writeln()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 79
    :try_start_0
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    sget-object v2, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;->newline:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, exception:Ljava/lang/Exception;
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "IOException"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public writeln(Ljava/lang/String;)V
    .locals 4
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 69
    :try_start_0
    invoke-static {p1}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 70
    .local v0, abyte0:[B
    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 71
    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    sget-object v3, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;->newline:[B

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    return-void

    .line 72
    .end local v0           #abyte0:[B
    :catch_0
    move-exception v1

    .line 73
    .local v1, exception:Ljava/lang/Exception;
    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "IOException"

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method
