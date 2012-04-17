.class Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;
.super Ljava/lang/Object;
.source "MimeMessage.java"

# interfaces
.implements Lorg/apache/james/mime4j/ContentHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/internet/MimeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MimeMessageBuilder"
.end annotation


# instance fields
.field private stack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/emailcommon/internet/MimeMessage;


# direct methods
.method public constructor <init>(Lcom/android/emailcommon/internet/MimeMessage;)V
    .locals 1
    .parameter

    .prologue
    .line 653
    iput-object p1, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->this$0:Lcom/android/emailcommon/internet/MimeMessage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 651
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    .line 654
    return-void
.end method

.method private convert2utf8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "str"
    .parameter "charset"

    .prologue
    .line 678
    const/4 v0, 0x0

    .line 681
    .local v0, after:Ljava/lang/String;
    :try_start_0
    const-string v7, "8859_1"

    invoke-virtual {p1, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 682
    .local v2, b:[B
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 684
    .local v3, decoder:Ljava/nio/charset/CharsetDecoder;
    :try_start_1
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v6

    .line 685
    .local v6, r:Ljava/nio/CharBuffer;
    invoke-virtual {v6}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    move-object v1, v0

    .line 698
    .end local v0           #after:Ljava/lang/String;
    .end local v2           #b:[B
    .end local v3           #decoder:Ljava/nio/charset/CharsetDecoder;
    .end local v6           #r:Ljava/nio/CharBuffer;
    :goto_0
    return-object v1

    .line 689
    .restart local v0       #after:Ljava/lang/String;
    .restart local v2       #b:[B
    .restart local v3       #decoder:Ljava/nio/charset/CharsetDecoder;
    :catch_0
    move-exception v4

    .line 690
    .local v4, e:Ljava/nio/charset/CharacterCodingException;
    :try_start_2
    new-instance v1, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v1, v2, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    .end local v0           #after:Ljava/lang/String;
    .local v1, after:Ljava/lang/String;
    move-object v0, v1

    .line 693
    .end local v1           #after:Ljava/lang/String;
    .restart local v0       #after:Ljava/lang/String;
    goto :goto_0

    .line 695
    .end local v2           #b:[B
    .end local v3           #decoder:Ljava/nio/charset/CharsetDecoder;
    .end local v4           #e:Ljava/nio/charset/CharacterCodingException;
    :catch_1
    move-exception v5

    .line 696
    .local v5, e1:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v5}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v1, v0

    .line 698
    .local v1, after:Ljava/lang/Object;
    goto :goto_0
.end method

.method private expect(Ljava/lang/Class;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 702
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 703
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal stack error: Expected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' found \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 706
    :cond_0
    return-void
.end method


# virtual methods
.method public body(Lorg/apache/james/mime4j/BodyDescriptor;Ljava/io/InputStream;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 951
    const-class v0, Lcom/android/emailcommon/mail/Part;

    invoke-direct {p0, v0}, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 952
    invoke-virtual {p1}, Lorg/apache/james/mime4j/BodyDescriptor;->getTransferEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/emailcommon/internet/MimeUtility;->decodeBody(Ljava/io/InputStream;Ljava/lang/String;)Lcom/android/emailcommon/mail/Body;

    move-result-object v1

    .line 954
    :try_start_0
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/mail/Part;

    invoke-interface {v0, v1}, Lcom/android/emailcommon/mail/Part;->setBody(Lcom/android/emailcommon/mail/Body;)V
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 958
    return-void

    .line 955
    :catch_0
    move-exception v0

    .line 956
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public endBodyPart()V
    .locals 1

    .prologue
    .line 977
    const-class v0, Lcom/android/emailcommon/mail/BodyPart;

    invoke-direct {p0, v0}, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 978
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 979
    return-void
.end method

.method public endHeader()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v8, 0x2

    .line 896
    const-class v0, Lcom/android/emailcommon/mail/Part;

    invoke-direct {p0, v0}, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 897
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/mail/Part;

    .line 898
    instance-of v3, v0, Lcom/android/emailcommon/mail/Message;

    if-eqz v3, :cond_0

    .line 900
    if-nez v0, :cond_1

    .line 935
    :cond_0
    :goto_0
    return-void

    .line 901
    :cond_1
    :try_start_0
    const-string v3, "Content-Type"

    invoke-interface {v0, v3}, Lcom/android/emailcommon/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    .line 902
    if-eqz v3, :cond_0

    const-string v4, "charset"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 905
    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 906
    array-length v5, v4

    :goto_1
    if-ge v2, v5, :cond_5

    aget-object v6, v4, v2

    .line 907
    const-string v7, "charset"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 908
    const-string v2, "="

    const/4 v4, 0x2

    invoke-virtual {v6, v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 909
    array-length v4, v2

    if-ge v4, v8, :cond_3

    .line 911
    const-string v2, ":"

    const/4 v4, 0x2

    invoke-virtual {v6, v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 912
    array-length v4, v2

    if-ne v4, v8, :cond_5

    .line 913
    const/4 v4, 0x1

    aget-object v2, v2, v4

    const-string v4, "\""

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 921
    :goto_2
    if-eqz v2, :cond_2

    .line 922
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/james/mime4j/util/CharsetUtil;->toJavaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 924
    :cond_2
    if-nez v1, :cond_0

    if-eqz v2, :cond_0

    .line 925
    const-string v1, "charset"

    const-string v4, "MBP; charset"

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 926
    const-string v3, "UTF-8"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 927
    const-string v2, "Content-Type"

    invoke-interface {v0, v2, v1}, Lcom/android/emailcommon/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 930
    :catch_0
    move-exception v0

    goto :goto_0

    .line 916
    :cond_3
    const/4 v4, 0x1

    aget-object v2, v2, v4

    const-string v4, "\""

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_2

    .line 906
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    move-object v2, v1

    goto :goto_2
.end method

.method public endMessage()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x2

    .line 726
    const-class v0, Lcom/android/emailcommon/internet/MimeMessage;

    invoke-direct {p0, v0}, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 727
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/mail/Part;

    .line 728
    instance-of v1, v0, Lcom/android/emailcommon/mail/Message;

    if-eqz v1, :cond_0

    .line 730
    :try_start_0
    const-string v1, "Content-Type"

    invoke-interface {v0, v1}, Lcom/android/emailcommon/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 879
    :cond_0
    :goto_0
    return-void

    .line 732
    :cond_1
    const-string v1, "Content-Type"

    invoke-interface {v0, v1}, Lcom/android/emailcommon/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v1, v1, v3

    .line 733
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content type : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    if-eqz v1, :cond_0

    .line 735
    const-string v3, "charset"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "MBP"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 743
    const-string v3, "="

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 744
    array-length v4, v3

    if-ge v4, v6, :cond_5

    .line 746
    const-string v3, ":"

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-object v1, v2

    .line 750
    :goto_1
    if-eqz v1, :cond_2

    .line 751
    invoke-static {v1}, Lorg/apache/james/mime4j/util/CharsetUtil;->toJavaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 753
    :cond_2
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "org charset : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",javacharset="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    if-nez v2, :cond_9

    .line 765
    :goto_2
    const-string v2, "From"

    invoke-interface {v0, v2}, Lcom/android/emailcommon/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 774
    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 776
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 777
    const-string v3, "From"

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-direct {p0, v2, v1}, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->convert2utf8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Lcom/android/emailcommon/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    :cond_3
    const-string v2, "To"

    invoke-interface {v0, v2}, Lcom/android/emailcommon/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 796
    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    .line 798
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 799
    const-string v3, "To"

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-direct {p0, v2, v1}, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->convert2utf8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Lcom/android/emailcommon/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    :cond_4
    const-string v2, "CC"

    invoke-interface {v0, v2}, Lcom/android/emailcommon/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 816
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 818
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 819
    const-string v3, "CC"

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-direct {p0, v2, v1}, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->convert2utf8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/android/emailcommon/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 871
    :catch_0
    move-exception v0

    .line 873
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 748
    :cond_5
    const/4 v1, 0x1

    :try_start_1
    aget-object v1, v3, v1

    const-string v3, "\""

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 841
    :cond_6
    const-string v1, "From"

    invoke-interface {v0, v1}, Lcom/android/emailcommon/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 842
    if-eqz v1, :cond_7

    .line 843
    const/4 v2, 0x0

    aget-object v2, v1, v2

    const-string v3, "=?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 844
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->chardet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 845
    if-eqz v2, :cond_7

    .line 846
    const-string v3, "From"

    const/4 v4, 0x0

    aget-object v1, v1, v4

    invoke-direct {p0, v1, v2}, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->convert2utf8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/android/emailcommon/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    :cond_7
    const-string v1, "To"

    invoke-interface {v0, v1}, Lcom/android/emailcommon/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 853
    if-eqz v1, :cond_8

    .line 854
    const/4 v2, 0x0

    aget-object v2, v1, v2

    const-string v3, "=?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 855
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->chardet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 856
    if-eqz v2, :cond_8

    .line 857
    const-string v3, "To"

    const/4 v4, 0x0

    aget-object v1, v1, v4

    invoke-direct {p0, v1, v2}, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->convert2utf8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/android/emailcommon/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    :cond_8
    const-string v1, "CC"

    invoke-interface {v0, v1}, Lcom/android/emailcommon/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 862
    if-eqz v1, :cond_0

    .line 863
    const/4 v2, 0x0

    aget-object v2, v1, v2

    const-string v3, "=?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 864
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->chardet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 865
    if-eqz v2, :cond_0

    .line 866
    const-string v3, "CC"

    const/4 v4, 0x0

    aget-object v1, v1, v4

    invoke-direct {p0, v1, v2}, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->convert2utf8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/android/emailcommon/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_9
    move-object v1, v2

    goto/16 :goto_2
.end method

.method public endMultipart()V
    .locals 1

    .prologue
    .line 961
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 962
    return-void
.end method

.method public epilogue(Ljava/io/InputStream;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 982
    const-class v0, Lcom/android/emailcommon/internet/MimeMultipart;

    invoke-direct {p0, v0}, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 983
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 985
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 986
    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 989
    :cond_0
    return-void
.end method

.method public field(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 886
    const-class v0, Lcom/android/emailcommon/mail/Part;

    invoke-direct {p0, v0}, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 888
    :try_start_0
    const-string v0, ":"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 889
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/mail/Part;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/emailcommon/mail/Part;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 893
    return-void

    .line 890
    :catch_0
    move-exception v0

    .line 891
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public preamble(Ljava/io/InputStream;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 992
    const-class v0, Lcom/android/emailcommon/internet/MimeMultipart;

    invoke-direct {p0, v0}, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 993
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 995
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 996
    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 999
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/internet/MimeMultipart;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/internet/MimeMultipart;->setPreamble(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1003
    return-void

    .line 1000
    :catch_0
    move-exception v0

    .line 1001
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public raw(Ljava/io/InputStream;)V
    .locals 2
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1006
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startBodyPart()V
    .locals 2

    .prologue
    .line 965
    const-class v0, Lcom/android/emailcommon/internet/MimeMultipart;

    invoke-direct {p0, v0}, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 968
    :try_start_0
    new-instance v1, Lcom/android/emailcommon/internet/MimeBodyPart;

    invoke-direct {v1}, Lcom/android/emailcommon/internet/MimeBodyPart;-><init>()V

    .line 969
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/internet/MimeMultipart;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/internet/MimeMultipart;->addBodyPart(Lcom/android/emailcommon/mail/BodyPart;)V

    .line 970
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 974
    return-void

    .line 971
    :catch_0
    move-exception v0

    .line 972
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public startHeader()V
    .locals 1

    .prologue
    .line 882
    const-class v0, Lcom/android/emailcommon/mail/Part;

    invoke-direct {p0, v0}, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 883
    return-void
.end method

.method public startMessage()V
    .locals 2

    .prologue
    .line 709
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->this$0:Lcom/android/emailcommon/internet/MimeMessage;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    :goto_0
    return-void

    .line 712
    :cond_0
    const-class v0, Lcom/android/emailcommon/mail/Part;

    invoke-direct {p0, v0}, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 714
    :try_start_0
    new-instance v1, Lcom/android/emailcommon/internet/MimeMessage;

    invoke-direct {v1}, Lcom/android/emailcommon/internet/MimeMessage;-><init>()V

    .line 715
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/mail/Part;

    invoke-interface {v0, v1}, Lcom/android/emailcommon/mail/Part;->setBody(Lcom/android/emailcommon/mail/Body;)V

    .line 716
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 717
    :catch_0
    move-exception v0

    .line 718
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public startMultipart(Lorg/apache/james/mime4j/BodyDescriptor;)V
    .locals 3
    .parameter

    .prologue
    .line 938
    const-class v0, Lcom/android/emailcommon/mail/Part;

    invoke-direct {p0, v0}, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 940
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/mail/Part;

    .line 942
    :try_start_0
    new-instance v1, Lcom/android/emailcommon/internet/MimeMultipart;

    invoke-interface {v0}, Lcom/android/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/emailcommon/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    .line 943
    invoke-interface {v0, v1}, Lcom/android/emailcommon/mail/Part;->setBody(Lcom/android/emailcommon/mail/Body;)V

    .line 944
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 948
    return-void

    .line 945
    :catch_0
    move-exception v0

    .line 946
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
