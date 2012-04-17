.class public abstract Lgnu/mail/handler/Text;
.super Ljava/lang/Object;
.source "Text.java"

# interfaces
.implements Ljavax/activation/DataContentHandler;


# instance fields
.field protected flavor:Lmyjava/awt/datatransfer/DataFlavor;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljavax/activation/ActivationDataFlavor;

    const-class v1, Ljava/lang/String;

    invoke-direct {v0, v1, p1, p2}, Ljavax/activation/ActivationDataFlavor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lgnu/mail/handler/Text;->flavor:Lmyjava/awt/datatransfer/DataFlavor;

    .line 69
    return-void
.end method

.method protected static getJavaCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 161
    const-string v1, "us-ascii"

    .line 162
    if-eqz p0, :cond_0

    .line 166
    :try_start_0
    new-instance v0, Ljavax/mail/internet/ContentType;

    invoke-direct {v0, p0}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 167
    const-string v2, "charset"

    invoke-virtual {v0, v2}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljavax/mail/internet/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 168
    if-eqz v0, :cond_1

    :goto_0
    move-object v1, v0

    .line 175
    :cond_0
    :goto_1
    invoke-static {v1}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 171
    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getContent(Ljavax/activation/DataSource;)Ljava/lang/Object;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-interface {p1}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 110
    invoke-interface {p1}, Ljavax/activation/DataSource;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-static {v1}, Lgnu/mail/handler/Text;->getJavaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 112
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 113
    const/16 v0, 0x1000

    new-array v0, v0, [C

    .line 114
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 117
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v3

    .line 118
    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    .line 119
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    .line 138
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 139
    check-cast p1, Ljava/lang/String;

    .line 146
    :goto_0
    invoke-static {p2}, Lgnu/mail/handler/Text;->getJavaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p3, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 148
    invoke-virtual {v1, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    .line 150
    return-void

    .line 140
    :cond_0
    instance-of v0, p1, [B

    if-eqz v0, :cond_1

    .line 141
    new-instance v0, Ljava/lang/String;

    check-cast p1, [B

    check-cast p1, [B

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    move-object p1, v0

    goto :goto_0

    .line 142
    :cond_1
    instance-of v0, p1, [C

    if-eqz v0, :cond_2

    .line 143
    new-instance v0, Ljava/lang/String;

    check-cast p1, [C

    check-cast p1, [C

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    move-object p1, v0

    goto :goto_0

    .line 145
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
