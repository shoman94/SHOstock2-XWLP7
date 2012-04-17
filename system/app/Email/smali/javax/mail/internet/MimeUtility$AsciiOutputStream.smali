.class Ljavax/mail/internet/MimeUtility$AsciiOutputStream;
.super Ljava/io/OutputStream;
.source "MimeUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/mail/internet/MimeUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AsciiOutputStream"
.end annotation


# instance fields
.field private asciiCount:I

.field private eolCheckFailed:Z

.field private eolStrict:Z

.field private islong:Z

.field private last:I

.field private len:I

.field private nonAsciiCount:I

.field private ret:I

.field private strict:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1093
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 1084
    iput v1, p0, Ljavax/mail/internet/MimeUtility$AsciiOutputStream;->asciiCount:I

    .line 1085
    iput v1, p0, Ljavax/mail/internet/MimeUtility$AsciiOutputStream;->nonAsciiCount:I

    .line 1088
    const/4 v0, -0x1

    iput v0, p0, Ljavax/mail/internet/MimeUtility$AsciiOutputStream;->last:I

    .line 1089
    iput-boolean v1, p0, Ljavax/mail/internet/MimeUtility$AsciiOutputStream;->islong:Z

    .line 1090
    iput-boolean v1, p0, Ljavax/mail/internet/MimeUtility$AsciiOutputStream;->eolCheckFailed:Z

    .line 1094
    iput-boolean p1, p0, Ljavax/mail/internet/MimeUtility$AsciiOutputStream;->strict:Z

    .line 1095
    iput-boolean p2, p0, Ljavax/mail/internet/MimeUtility$AsciiOutputStream;->eolStrict:Z

    .line 1096
    return-void
.end method

.method private final check(I)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0xd

    const/16 v2, 0xa

    .line 1124
    and-int/lit16 v0, p1, 0xff

    .line 1125
    iget-boolean v1, p0, Ljavax/mail/internet/MimeUtility$AsciiOutputStream;->eolStrict:Z

    if-eqz v1, :cond_2

    .line 1127
    iget v1, p0, Ljavax/mail/internet/MimeUtility$AsciiOutputStream;->last:I

    if-ne v1, v3, :cond_0

    if-ne v0, v2, :cond_1

    :cond_0
    iget v1, p0, Ljavax/mail/internet/MimeUtility$AsciiOutputStream;->last:I

    if-eq v1, v3, :cond_2

    if-ne v0, v2, :cond_2

    .line 1129
    :cond_1
    iput-boolean v4, p0, Ljavax/mail/internet/MimeUtility$AsciiOutputStream;->eolCheckFailed:Z

    .line 1132
    :cond_2
    if-eq v0, v3, :cond_3

    if-ne v0, v2, :cond_5

    .line 1134
    :cond_3
    const/4 v1, 0x0

    iput v1, p0, Ljavax/mail/internet/MimeUtility$AsciiOutputStream;->len:I

    .line 1144
    :cond_4
    :goto_0
    const/16 v1, 0x7f

    if-le v0, v1, :cond_6

    .line 1146
    iget v1, p0, Ljavax/mail/internet/MimeUtility$AsciiOutputStream;->nonAsciiCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljavax/mail/internet/MimeUtility$AsciiOutputStream;->nonAsciiCount:I

    .line 1147
    iget-boolean v1, p0, Ljavax/mail/internet/MimeUtility$AsciiOutputStream;->strict:Z

    if-eqz v1, :cond_7

    .line 1149
    const/4 v0, 0x3

    iput v0, p0, Ljavax/mail/internet/MimeUtility$AsciiOutputStream;->ret:I

    .line 1150
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 1138
    :cond_5
    iget v1, p0, Ljavax/mail/internet/MimeUtility$AsciiOutputStream;->len:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljavax/mail/internet/MimeUtility$AsciiOutputStream;->len:I

    .line 1139
    iget v1, p0, Ljavax/mail/internet/MimeUtility$AsciiOutputStream;->len:I

    const/16 v2, 0x3e6

    if-le v1, v2, :cond_4

    .line 1141
    iput-boolean v4, p0, Ljavax/mail/internet/MimeUtility$AsciiOutputStream;->islong:Z

    goto :goto_0

    .line 1155
    :cond_6
    iget v1, p0, Ljavax/mail/internet/MimeUtility$AsciiOutputStream;->asciiCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljavax/mail/internet/MimeUtility$AsciiOutputStream;->asciiCount:I

    .line 1157
    :cond_7
    iput v0, p0, Ljavax/mail/internet/MimeUtility$AsciiOutputStream;->last:I

    .line 1158
    return-void
.end method


# virtual methods
.method status()I
    .locals 4

    .prologue
    const/4 v1, 0x3

    const/4 v0, 0x2

    .line 1162
    iget v2, p0, Ljavax/mail/internet/MimeUtility$AsciiOutputStream;->ret:I

    if-eqz v2, :cond_1

    .line 1164
    iget v0, p0, Ljavax/mail/internet/MimeUtility$AsciiOutputStream;->ret:I

    .line 1174
    :cond_0
    :goto_0
    return v0

    .line 1166
    :cond_1
    iget-boolean v2, p0, Ljavax/mail/internet/MimeUtility$AsciiOutputStream;->eolCheckFailed:Z

    if-eqz v2, :cond_2

    move v0, v1

    .line 1168
    goto :goto_0

    .line 1170
    :cond_2
    iget v2, p0, Ljavax/mail/internet/MimeUtility$AsciiOutputStream;->nonAsciiCount:I

    if-nez v2, :cond_3

    .line 1172
    iget-boolean v1, p0, Ljavax/mail/internet/MimeUtility$AsciiOutputStream;->islong:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 1174
    :cond_3
    iget v2, p0, Ljavax/mail/internet/MimeUtility$AsciiOutputStream;->asciiCount:I

    iget v3, p0, Ljavax/mail/internet/MimeUtility$AsciiOutputStream;->nonAsciiCount:I

    if-le v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public write(I)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1101
    invoke-direct {p0, p1}, Ljavax/mail/internet/MimeUtility$AsciiOutputStream;->check(I)V

    .line 1102
    return-void
.end method

.method public write([B)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1107
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljavax/mail/internet/MimeUtility$AsciiOutputStream;->write([BII)V

    .line 1108
    return-void
.end method

.method public write([BII)V
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
    .line 1113
    add-int v0, p3, p2

    .line 1114
    :goto_0
    if-ge p2, v0, :cond_0

    .line 1116
    aget-byte v1, p1, p2

    invoke-direct {p0, v1}, Ljavax/mail/internet/MimeUtility$AsciiOutputStream;->check(I)V

    .line 1114
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1119
    :cond_0
    return-void
.end method
