.class public Lmyorg/bouncycastle/mail/smime/handlers/multipart_signed;
.super Ljava/lang/Object;
.source "multipart_signed.java"

# interfaces
.implements Ljavax/activation/DataContentHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmyorg/bouncycastle/mail/smime/handlers/multipart_signed$LineOutputStream;
    }
.end annotation


# static fields
.field private static final ADF:Ljavax/activation/ActivationDataFlavor;

.field private static final DFS:[Lmyjava/awt/datatransfer/DataFlavor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 23
    new-instance v0, Ljavax/activation/ActivationDataFlavor;

    const-class v1, Ljavax/mail/internet/MimeMultipart;

    const-string v2, "multipart/signed"

    const-string v3, "Multipart Signed"

    invoke-direct {v0, v1, v2, v3}, Ljavax/activation/ActivationDataFlavor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/mail/smime/handlers/multipart_signed;->ADF:Ljavax/activation/ActivationDataFlavor;

    .line 26
    const/4 v0, 0x1

    new-array v0, v0, [Lmyjava/awt/datatransfer/DataFlavor;

    const/4 v1, 0x0

    sget-object v2, Lmyorg/bouncycastle/mail/smime/handlers/multipart_signed;->ADF:Ljavax/activation/ActivationDataFlavor;

    aput-object v2, v0, v1

    sput-object v0, Lmyorg/bouncycastle/mail/smime/handlers/multipart_signed;->DFS:[Lmyjava/awt/datatransfer/DataFlavor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 185
    return-void
.end method

.method private outputBodyPart(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 9
    .parameter "out"
    .parameter "bodyPart"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    instance-of v7, p2, Ljavax/mail/Multipart;

    if-eqz v7, :cond_1

    move-object v6, p2

    .line 87
    check-cast v6, Ljavax/mail/Multipart;

    .line 88
    .local v6, mp:Ljavax/mail/Multipart;
    new-instance v1, Ljavax/mail/internet/ContentType;

    invoke-virtual {v6}, Ljavax/mail/Multipart;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 89
    .local v1, contentType:Ljavax/mail/internet/ContentType;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "--"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "boundary"

    invoke-virtual {v1, v8}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, boundary:Ljava/lang/String;
    new-instance v4, Lmyorg/bouncycastle/mail/smime/handlers/multipart_signed$LineOutputStream;

    invoke-direct {v4, p1}, Lmyorg/bouncycastle/mail/smime/handlers/multipart_signed$LineOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 93
    .local v4, lOut:Lmyorg/bouncycastle/mail/smime/handlers/multipart_signed$LineOutputStream;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v6}, Ljavax/mail/Multipart;->getCount()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 94
    invoke-virtual {v4, v0}, Lmyorg/bouncycastle/mail/smime/handlers/multipart_signed$LineOutputStream;->writeln(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v6, v3}, Ljavax/mail/Multipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v7

    invoke-direct {p0, p1, v7}, Lmyorg/bouncycastle/mail/smime/handlers/multipart_signed;->outputBodyPart(Ljava/io/OutputStream;Ljava/lang/Object;)V

    .line 96
    invoke-virtual {v4}, Lmyorg/bouncycastle/mail/smime/handlers/multipart_signed$LineOutputStream;->writeln()V

    .line 93
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 99
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "--"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lmyorg/bouncycastle/mail/smime/handlers/multipart_signed$LineOutputStream;->writeln(Ljava/lang/String;)V

    .line 132
    .end local v0           #boundary:Ljava/lang/String;
    .end local v1           #contentType:Ljavax/mail/internet/ContentType;
    .end local v3           #i:I
    .end local v4           #lOut:Lmyorg/bouncycastle/mail/smime/handlers/multipart_signed$LineOutputStream;
    .end local v6           #mp:Ljavax/mail/Multipart;
    :goto_1
    return-void

    :cond_1
    move-object v5, p2

    .line 103
    check-cast v5, Ljavax/mail/internet/MimeBodyPart;

    .line 107
    .local v5, mimePart:Ljavax/mail/internet/MimeBodyPart;
    invoke-virtual {v5}, Ljavax/mail/internet/MimeBodyPart;->getContentType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "multipart"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 112
    invoke-virtual {v5}, Ljavax/mail/internet/MimeBodyPart;->getContent()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/mail/Multipart;

    .line 113
    .restart local v6       #mp:Ljavax/mail/Multipart;
    new-instance v1, Ljavax/mail/internet/ContentType;

    invoke-virtual {v6}, Ljavax/mail/Multipart;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 114
    .restart local v1       #contentType:Ljavax/mail/internet/ContentType;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "--"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "boundary"

    invoke-virtual {v1, v8}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    .restart local v0       #boundary:Ljava/lang/String;
    new-instance v4, Lmyorg/bouncycastle/mail/smime/handlers/multipart_signed$LineOutputStream;

    invoke-direct {v4, p1}, Lmyorg/bouncycastle/mail/smime/handlers/multipart_signed$LineOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 118
    .restart local v4       #lOut:Lmyorg/bouncycastle/mail/smime/handlers/multipart_signed$LineOutputStream;
    invoke-virtual {v5}, Ljavax/mail/internet/MimeBodyPart;->getAllHeaderLines()Ljava/util/Enumeration;

    move-result-object v2

    .line 119
    .local v2, headers:Ljava/util/Enumeration;
    :goto_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 120
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Lmyorg/bouncycastle/mail/smime/handlers/multipart_signed$LineOutputStream;->writeln(Ljava/lang/String;)V

    goto :goto_2

    .line 123
    :cond_2
    invoke-virtual {v4}, Lmyorg/bouncycastle/mail/smime/handlers/multipart_signed$LineOutputStream;->writeln()V

    .line 125
    invoke-static {v4, v5, v0}, Lmyorg/bouncycastle/mail/smime/handlers/multipart_signed;->outputPreamble(Lmyorg/bouncycastle/mail/smime/handlers/multipart_signed$LineOutputStream;Ljavax/mail/internet/MimeBodyPart;Ljava/lang/String;)V

    .line 127
    invoke-direct {p0, p1, v6}, Lmyorg/bouncycastle/mail/smime/handlers/multipart_signed;->outputBodyPart(Ljava/io/OutputStream;Ljava/lang/Object;)V

    goto :goto_1

    .line 131
    .end local v0           #boundary:Ljava/lang/String;
    .end local v1           #contentType:Ljavax/mail/internet/ContentType;
    .end local v2           #headers:Ljava/util/Enumeration;
    .end local v4           #lOut:Lmyorg/bouncycastle/mail/smime/handlers/multipart_signed$LineOutputStream;
    .end local v6           #mp:Ljavax/mail/Multipart;
    :cond_3
    invoke-virtual {v5, p1}, Ljavax/mail/internet/MimeBodyPart;->writeTo(Ljava/io/OutputStream;)V

    goto :goto_1
.end method

.method static outputPreamble(Lmyorg/bouncycastle/mail/smime/handlers/multipart_signed$LineOutputStream;Ljavax/mail/internet/MimeBodyPart;Ljava/lang/String;)V
    .locals 5
    .parameter "lOut"
    .parameter "part"
    .parameter "boundary"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    :try_start_0
    invoke-virtual {p1}, Ljavax/mail/internet/MimeBodyPart;->getRawInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 150
    .local v1, in:Ljava/io/InputStream;
    :goto_0
    invoke-static {v1}, Lmyorg/bouncycastle/mail/smime/handlers/multipart_signed;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .local v2, line:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 151
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 158
    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 160
    if-nez v2, :cond_1

    .line 161
    new-instance v3, Ljavax/mail/MessagingException;

    const-string v4, "no boundary found"

    invoke-direct {v3, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 144
    .end local v1           #in:Ljava/io/InputStream;
    .end local v2           #line:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 163
    :cond_1
    return-void

    .line 155
    .restart local v1       #in:Ljava/io/InputStream;
    .restart local v2       #line:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v2}, Lmyorg/bouncycastle/mail/smime/handlers/multipart_signed$LineOutputStream;->writeln(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static readLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 172
    .local v0, b:Ljava/lang/StringBuffer;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .local v1, ch:I
    if-ltz v1, :cond_1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    .line 173
    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    .line 174
    int-to-char v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 178
    :cond_1
    if-gez v1, :cond_2

    .line 179
    const/4 v2, 0x0

    .line 182
    :goto_1
    return-object v2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method


# virtual methods
.method public getContent(Ljavax/activation/DataSource;)Ljava/lang/Object;
    .locals 2
    .parameter "ds"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    :try_start_0
    new-instance v1, Ljavax/mail/internet/MimeMultipart;

    invoke-direct {v1, p1}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljavax/activation/DataSource;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    return-object v1

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, ex:Ljavax/mail/MessagingException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public writeTo(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 8
    .parameter "obj"
    .parameter "_mimeType"
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    instance-of v5, p1, Ljavax/mail/internet/MimeMultipart;

    if-eqz v5, :cond_1

    .line 54
    :try_start_0
    invoke-direct {p0, p3, p1}, Lmyorg/bouncycastle/mail/smime/handlers/multipart_signed;->outputBodyPart(Ljava/io/OutputStream;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 55
    .restart local p1
    :catch_0
    move-exception v1

    .line 56
    .local v1, ex:Ljavax/mail/MessagingException;
    new-instance v5, Ljava/io/IOException;

    invoke-virtual {v1}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 58
    .end local v1           #ex:Ljavax/mail/MessagingException;
    :cond_1
    instance-of v5, p1, [B

    if-eqz v5, :cond_2

    .line 59
    check-cast p1, [B

    .end local p1
    check-cast p1, [B

    invoke-virtual {p3, p1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 60
    .restart local p1
    :cond_2
    instance-of v5, p1, Ljava/io/InputStream;

    if-eqz v5, :cond_4

    move-object v2, p1

    .line 62
    check-cast v2, Ljava/io/InputStream;

    .line 64
    .local v2, in:Ljava/io/InputStream;
    instance-of v5, v2, Ljava/io/BufferedInputStream;

    if-nez v5, :cond_3

    .line 65
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v2           #in:Ljava/io/InputStream;
    .local v3, in:Ljava/io/InputStream;
    move-object v2, v3

    .line 68
    .end local v3           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    :cond_3
    :goto_1
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, b:I
    if-ltz v0, :cond_0

    .line 69
    invoke-virtual {p3, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    .line 71
    .end local v0           #b:I
    .end local v2           #in:Ljava/io/InputStream;
    :cond_4
    instance-of v5, p1, Lmyorg/bouncycastle/mail/smime/SMIMEStreamingProcessor;

    if-eqz v5, :cond_5

    move-object v4, p1

    .line 72
    check-cast v4, Lmyorg/bouncycastle/mail/smime/SMIMEStreamingProcessor;

    .line 74
    .local v4, processor:Lmyorg/bouncycastle/mail/smime/SMIMEStreamingProcessor;
    invoke-interface {v4, p3}, Lmyorg/bouncycastle/mail/smime/SMIMEStreamingProcessor;->write(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 76
    .end local v4           #processor:Lmyorg/bouncycastle/mail/smime/SMIMEStreamingProcessor;
    :cond_5
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unknown object in writeTo "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
.end method
