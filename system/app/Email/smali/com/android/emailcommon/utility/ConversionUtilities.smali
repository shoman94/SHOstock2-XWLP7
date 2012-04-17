.class public Lcom/android/emailcommon/utility/ConversionUtilities;
.super Ljava/lang/Object;
.source "ConversionUtilities.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 1
    .parameter "sb"
    .parameter "newText"

    .prologue
    .line 47
    if-nez p1, :cond_0

    .line 57
    :goto_0
    return-object p0

    .line 49
    :cond_0
    if-nez p0, :cond_1

    .line 50
    new-instance p0, Ljava/lang/StringBuffer;

    .end local p0
    invoke-direct {p0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .restart local p0
    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 53
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 55
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static updateBodyFields(Ljava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Body;Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/util/ArrayList;)Z
    .locals 20
    .parameter "overflowMsg"
    .parameter "body"
    .parameter "localMessage"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/emailcommon/provider/EmailContent$Body;",
            "Lcom/android/emailcommon/provider/EmailContent$Message;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/Part;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 66
    .local p3, viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent$Body;->mMessageKey:J

    .line 68
    const/4 v10, 0x0

    .line 69
    .local v10, sbHtml:Ljava/lang/StringBuffer;
    const/4 v13, 0x0

    .line 70
    .local v13, sbText:Ljava/lang/StringBuffer;
    const/4 v11, 0x0

    .line 71
    .local v11, sbHtmlReply:Ljava/lang/StringBuffer;
    const/4 v14, 0x0

    .line 72
    .local v14, sbTextReply:Ljava/lang/StringBuffer;
    const/4 v12, 0x0

    .line 74
    .local v12, sbIntroText:Ljava/lang/StringBuffer;
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/emailcommon/mail/Part;

    .line 75
    .local v16, viewable:Lcom/android/emailcommon/mail/Part;
    const/4 v15, 0x0

    .line 76
    .local v15, text:Ljava/lang/String;
    const-string v17, "X-Android-Body-Quoted-Part"

    invoke-interface/range {v16 .. v17}, Lcom/android/emailcommon/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 77
    .local v9, replyTags:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 78
    .local v8, replyTag:Ljava/lang/String;
    if-eqz v9, :cond_0

    array-length v0, v9

    move/from16 v17, v0

    if-lez v17, :cond_0

    .line 79
    const/16 v17, 0x0

    aget-object v8, v9, v17

    .line 82
    :cond_0
    const-string v17, "text/html"

    invoke-interface/range {v16 .. v16}, Lcom/android/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    .line 85
    .local v4, isHtml:Z
    :try_start_0
    invoke-static/range {v16 .. v16}, Lcom/android/emailcommon/internet/MimeUtility;->getTextFromPart(Lcom/android/emailcommon/mail/Part;)Ljava/lang/String;

    move-result-object v15

    .line 86
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v17

    const/high16 v18, 0xc

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1

    .line 88
    if-eqz v4, :cond_3

    .line 89
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    const/high16 v19, 0xc

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "<BR><BR>...<BR><BR>"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "<BR>"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 96
    :cond_1
    :goto_1
    if-eqz v8, :cond_7

    .line 97
    const-string v17, "quoted-reply"

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    .line 98
    .local v7, isQuotedReply:Z
    const-string v17, "quoted-forward"

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    .line 99
    .local v5, isQuotedForward:Z
    const-string v17, "quoted-intro"

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    .line 101
    .local v6, isQuotedIntro:Z
    if-nez v7, :cond_2

    if-eqz v5, :cond_6

    .line 102
    :cond_2
    if-eqz v4, :cond_4

    .line 103
    invoke-static {v11, v15}, Lcom/android/emailcommon/utility/ConversionUtilities;->appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 108
    :goto_2
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, -0x4

    move/from16 v0, v17

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 109
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    move/from16 v18, v0

    if-eqz v7, :cond_5

    const/16 v17, 0x1

    :goto_3
    or-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    goto/16 :goto_0

    .line 91
    .end local v5           #isQuotedForward:Z
    .end local v6           #isQuotedIntro:Z
    .end local v7           #isQuotedReply:Z
    :cond_3
    :try_start_1
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    const/high16 v19, 0xc

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n\r\n\r...\n\r\n\r"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n\r"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v15

    goto :goto_1

    .line 105
    .restart local v5       #isQuotedForward:Z
    .restart local v6       #isQuotedIntro:Z
    .restart local v7       #isQuotedReply:Z
    :cond_4
    invoke-static {v14, v15}, Lcom/android/emailcommon/utility/ConversionUtilities;->appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    goto :goto_2

    .line 109
    :cond_5
    const/16 v17, 0x2

    goto :goto_3

    .line 113
    :cond_6
    if-eqz v6, :cond_7

    .line 114
    invoke-static {v12, v15}, Lcom/android/emailcommon/utility/ConversionUtilities;->appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    .line 115
    goto/16 :goto_0

    .line 120
    .end local v5           #isQuotedForward:Z
    .end local v6           #isQuotedIntro:Z
    .end local v7           #isQuotedReply:Z
    :cond_7
    if-eqz v4, :cond_8

    .line 121
    invoke-static {v10, v15}, Lcom/android/emailcommon/utility/ConversionUtilities;->appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    goto/16 :goto_0

    .line 123
    :cond_8
    invoke-static {v13, v15}, Lcom/android/emailcommon/utility/ConversionUtilities;->appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    goto/16 :goto_0

    .line 128
    .end local v4           #isHtml:Z
    .end local v8           #replyTag:Ljava/lang/String;
    .end local v9           #replyTags:[Ljava/lang/String;
    .end local v15           #text:Ljava/lang/String;
    .end local v16           #viewable:Lcom/android/emailcommon/mail/Part;
    :cond_9
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_a

    .line 129
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    .line 130
    .restart local v15       #text:Ljava/lang/String;
    move-object/from16 v0, p1

    iput-object v15, v0, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    .line 131
    invoke-static {v15}, Lcom/android/emailcommon/mail/Snippet;->fromPlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    .line 133
    .end local v15           #text:Ljava/lang/String;
    :cond_a
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_b

    .line 134
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    .line 135
    .restart local v15       #text:Ljava/lang/String;
    move-object/from16 v0, p1

    iput-object v15, v0, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    .line 136
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_b

    .line 137
    invoke-static {v15}, Lcom/android/emailcommon/mail/Snippet;->fromHtmlText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    .line 140
    .end local v15           #text:Ljava/lang/String;
    :cond_b
    if-eqz v11, :cond_c

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v17

    if-eqz v17, :cond_c

    .line 141
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlReply:Ljava/lang/String;

    .line 143
    :cond_c
    if-eqz v14, :cond_d

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->length()I

    move-result v17

    if-eqz v17, :cond_d

    .line 144
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextReply:Ljava/lang/String;

    .line 146
    :cond_d
    if-eqz v12, :cond_e

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->length()I

    move-result v17

    if-eqz v17, :cond_e

    .line 147
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Body;->mIntroText:Ljava/lang/String;

    .line 149
    :cond_e
    const/16 v17, 0x1

    return v17

    .line 93
    .restart local v4       #isHtml:Z
    .restart local v8       #replyTag:Ljava/lang/String;
    .restart local v9       #replyTags:[Ljava/lang/String;
    .restart local v15       #text:Ljava/lang/String;
    .restart local v16       #viewable:Lcom/android/emailcommon/mail/Part;
    :catch_0
    move-exception v17

    goto/16 :goto_1
.end method
