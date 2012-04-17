.class public Lcom/android/email/mail/internet/EmailHtmlUtil;
.super Ljava/lang/Object;
.source "EmailHtmlUtil.java"


# static fields
.field private static final PLAIN_TEXT_TO_ESCAPE:Ljava/util/regex/Pattern;

.field static out:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "[<>&]| {2,}|\r?\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/email/mail/internet/EmailHtmlUtil;->PLAIN_TEXT_TO_ESCAPE:Ljava/util/regex/Pattern;

    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/mail/internet/EmailHtmlUtil;->out:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "text"

    .prologue
    const/16 v9, 0x20

    .line 41
    sget-object v5, Lcom/android/email/mail/internet/EmailHtmlUtil;->PLAIN_TEXT_TO_ESCAPE:Ljava/util/regex/Pattern;

    .line 42
    .local v5, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 44
    .local v3, match:Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 46
    sget-object v7, Lcom/android/email/mail/internet/EmailHtmlUtil;->out:Ljava/lang/StringBuilder;

    if-nez v7, :cond_0

    .line 47
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v7, Lcom/android/email/mail/internet/EmailHtmlUtil;->out:Ljava/lang/StringBuilder;

    .line 48
    :cond_0
    const/4 v1, 0x0

    .line 50
    .local v1, end:I
    :cond_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    .line 51
    .local v6, start:I
    sget-object v7, Lcom/android/email/mail/internet/EmailHtmlUtil;->out:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .line 53
    invoke-virtual {p0, v6}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 54
    .local v0, c:I
    if-ne v0, v9, :cond_5

    .line 56
    const/4 v2, 0x1

    .local v2, i:I
    sub-int v4, v1, v6

    .local v4, n:I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 57
    sget-object v7, Lcom/android/email/mail/internet/EmailHtmlUtil;->out:Ljava/lang/StringBuilder;

    const-string v8, "&nbsp;"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59
    :cond_2
    sget-object v7, Lcom/android/email/mail/internet/EmailHtmlUtil;->out:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    .end local v2           #i:I
    .end local v4           #n:I
    :cond_3
    :goto_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-nez v7, :cond_1

    .line 70
    sget-object v7, Lcom/android/email/mail/internet/EmailHtmlUtil;->out:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    sget-object v7, Lcom/android/email/mail/internet/EmailHtmlUtil;->out:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 73
    sget-object v7, Lcom/android/email/mail/internet/EmailHtmlUtil;->out:Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    sget-object v9, Lcom/android/email/mail/internet/EmailHtmlUtil;->out:Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 75
    .end local v0           #c:I
    .end local v1           #end:I
    .end local v6           #start:I
    :cond_4
    return-object p0

    .line 60
    .restart local v0       #c:I
    .restart local v1       #end:I
    .restart local v6       #start:I
    :cond_5
    const/16 v7, 0xd

    if-eq v0, v7, :cond_6

    const/16 v7, 0xa

    if-ne v0, v7, :cond_7

    .line 61
    :cond_6
    sget-object v7, Lcom/android/email/mail/internet/EmailHtmlUtil;->out:Ljava/lang/StringBuilder;

    const-string v8, "<br>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 62
    :cond_7
    const/16 v7, 0x3c

    if-ne v0, v7, :cond_8

    .line 63
    sget-object v7, Lcom/android/email/mail/internet/EmailHtmlUtil;->out:Ljava/lang/StringBuilder;

    const-string v8, "&lt;"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 64
    :cond_8
    const/16 v7, 0x3e

    if-ne v0, v7, :cond_9

    .line 65
    sget-object v7, Lcom/android/email/mail/internet/EmailHtmlUtil;->out:Ljava/lang/StringBuilder;

    const-string v8, "&gt;"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 66
    :cond_9
    const/16 v7, 0x26

    if-ne v0, v7, :cond_3

    .line 67
    sget-object v7, Lcom/android/email/mail/internet/EmailHtmlUtil;->out:Ljava/lang/StringBuilder;

    const-string v8, "&amp;"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
