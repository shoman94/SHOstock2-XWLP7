.class public Lcom/android/mms/model/MediaModelFactory;
.super Ljava/lang/Object;
.source "MediaModelFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createEmptyTextModel(Landroid/content/Context;Lcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;)Lcom/android/mms/model/MediaModel;
    .locals 7
    .parameter "context"
    .parameter "wrapper"
    .parameter "regionModel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 240
    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/mms/model/TextModel;

    const-string v2, "text/plain"

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/mms/model/TextModel;

    const-string v1, "text/plain"

    invoke-direct {v0, p0, v1, v3, p2}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    goto :goto_0
.end method

.method public static escapeXML(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 206
    const-string v0, "&lt;"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&gt;"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static findPart(Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;
    .locals 20
    .parameter "pb"
    .parameter "src"

    .prologue
    .line 64
    const/4 v15, 0x0

    .line 65
    .local v15, part:Lcom/google/android/mms/pdu/PduPart;
    const/4 v8, 0x0

    .line 66
    .local v8, index:I
    const/4 v5, 0x0

    .line 67
    .local v5, extention:Ljava/lang/String;
    const/4 v11, 0x0

    .line 68
    .local v11, mimeType:Ljava/lang/String;
    const/4 v14, 0x0

    .line 69
    .local v14, newSrc:Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v4, extensionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 72
    invoke-static/range {p1 .. p1}, Lcom/android/mms/model/MediaModelFactory;->escapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 73
    const-string v18, "cid:"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 74
    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    const-string v19, "<"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string v19, "cid:"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string v19, ">"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentId(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v15

    .line 100
    :cond_0
    :goto_0
    if-nez v15, :cond_4

    .line 102
    invoke-static {}, Lcom/android/mms/util/MessageMimeTypeMap;->getSingleton()Lcom/android/mms/util/MessageMimeTypeMap;

    move-result-object v12

    .line 103
    .local v12, mimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;
    if-eqz p1, :cond_1

    .line 104
    const/16 v18, 0x2e

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 105
    add-int/lit8 v18, v8, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 107
    :cond_1
    invoke-virtual {v12, v5}, Lcom/android/mms/util/MessageMimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 108
    if-eqz v11, :cond_4

    .line 109
    invoke-virtual {v12, v11}, Lcom/android/mms/util/MessageMimeTypeMap;->getExtensionListFromMimeType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 110
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 112
    .local v3, arrayListSize:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v3, :cond_4

    .line 113
    if-eqz p1, :cond_2

    .line 114
    const/16 v18, 0x0

    add-int/lit8 v19, v8, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 116
    :cond_2
    const-string v18, "cid:"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 117
    const-string v18, "cid:"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 121
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentLocation(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v15

    .line 122
    if-eqz v15, :cond_10

    .line 131
    .end local v3           #arrayListSize:I
    .end local v7           #i:I
    .end local v12           #mimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;
    :cond_4
    if-nez v15, :cond_7

    .line 132
    const/4 v10, -0x1

    .line 133
    .local v10, mediaSrcIndex:I
    if-eqz p1, :cond_5

    .line 134
    const/16 v18, 0x2e

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    .line 135
    :cond_5
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v10, v0, :cond_7

    .line 136
    const/4 v9, 0x0

    .line 137
    .local v9, mediaSrc:Ljava/lang/String;
    if-eqz p1, :cond_6

    .line 138
    const/16 v18, 0x0

    const/16 v19, 0x2e

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 139
    :cond_6
    if-eqz v9, :cond_7

    .line 140
    const-string v18, "cid:"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 141
    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    const-string v19, "<"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string v19, "cid:"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string v19, ">"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentId(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v15

    .line 165
    .end local v9           #mediaSrc:Ljava/lang/String;
    .end local v10           #mediaSrcIndex:I
    :cond_7
    :goto_3
    if-nez v15, :cond_b

    .line 166
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v16

    .line 167
    .local v16, partsNum:I
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_4
    move/from16 v0, v16

    if-ge v7, v0, :cond_b

    .line 168
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v17

    .line 169
    .local v17, tmpPart:Lcom/google/android/mms/pdu/PduPart;
    if-eqz v17, :cond_15

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v18

    if-eqz v18, :cond_15

    .line 170
    new-instance v6, Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    .line 171
    .local v6, fileName:Ljava/lang/String;
    const/4 v13, 0x0

    .line 172
    .local v13, newFileName:Ljava/lang/String;
    const/16 v18, 0x2e

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v18

    if-lez v18, :cond_8

    .line 173
    const/16 v18, 0x0

    const/16 v19, 0x2e

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v13

    .end local v13           #newFileName:Ljava/lang/String;
    check-cast v13, Ljava/lang/String;

    .line 175
    .restart local v13       #newFileName:Ljava/lang/String;
    :cond_8
    move-object/from16 v9, p1

    .line 176
    .restart local v9       #mediaSrc:Ljava/lang/String;
    if-eqz p1, :cond_15

    .line 177
    const/16 v18, 0x2e

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_13

    .line 178
    const/16 v18, 0x0

    const/16 v19, 0x2e

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 179
    const-string v18, "cid:"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_9

    const-string v18, "Cid:"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 180
    :cond_9
    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 187
    :cond_a
    :goto_5
    if-eqz v13, :cond_15

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_15

    .line 188
    move-object/from16 v15, v17

    .line 197
    .end local v6           #fileName:Ljava/lang/String;
    .end local v7           #i:I
    .end local v9           #mediaSrc:Ljava/lang/String;
    .end local v13           #newFileName:Ljava/lang/String;
    .end local v16           #partsNum:I
    .end local v17           #tmpPart:Lcom/google/android/mms/pdu/PduPart;
    :cond_b
    if-eqz v15, :cond_16

    .line 198
    return-object v15

    .line 75
    :cond_c
    const-string v18, "Cid:"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 76
    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    const-string v19, "<"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string v19, "Cid:"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string v19, ">"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentId(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v15

    goto/16 :goto_0

    .line 78
    :cond_d
    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    const-string v19, "<"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string v19, ">"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentId(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v15

    .line 79
    if-nez v15, :cond_e

    .line 80
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduBody;->getPartByName(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v15

    .line 82
    :cond_e
    if-nez v15, :cond_0

    .line 83
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduBody;->getPartByFileName(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v15

    .line 84
    if-nez v15, :cond_0

    .line 85
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentLocation(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v15

    .line 87
    if-nez v15, :cond_0

    .line 88
    const/16 v18, 0x2e

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 89
    add-int/lit8 v18, v8, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 90
    const/16 v18, 0x0

    add-int/lit8 v19, v8, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 91
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentLocation(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v15

    goto/16 :goto_0

    .line 118
    .restart local v3       #arrayListSize:I
    .restart local v7       #i:I
    .restart local v12       #mimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;
    :cond_f
    const-string v18, "Cid:"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 119
    const-string v18, "Cid:"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_2

    .line 112
    :cond_10
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 143
    .end local v3           #arrayListSize:I
    .end local v7           #i:I
    .end local v12           #mimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;
    .restart local v9       #mediaSrc:Ljava/lang/String;
    .restart local v10       #mediaSrcIndex:I
    :cond_11
    const-string v18, "Cid:"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_12

    .line 144
    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    const-string v19, "<"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string v19, "Cid:"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string v19, ">"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentId(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v15

    goto/16 :goto_3

    .line 148
    :cond_12
    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    const-string v19, "<"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string v19, ">"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentId(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v15

    .line 149
    if-nez v15, :cond_7

    .line 150
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/google/android/mms/pdu/PduBody;->getPartByName(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v15

    .line 151
    if-nez v15, :cond_7

    .line 152
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/google/android/mms/pdu/PduBody;->getPartByFileName(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v15

    .line 153
    if-nez v15, :cond_7

    .line 154
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentLocation(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v15

    goto/16 :goto_3

    .line 183
    .end local v10           #mediaSrcIndex:I
    .restart local v6       #fileName:Ljava/lang/String;
    .restart local v7       #i:I
    .restart local v13       #newFileName:Ljava/lang/String;
    .restart local v16       #partsNum:I
    .restart local v17       #tmpPart:Lcom/google/android/mms/pdu/PduPart;
    :cond_13
    const-string v18, "cid:"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_14

    const-string v18, "Cid:"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 184
    :cond_14
    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_5

    .line 167
    .end local v6           #fileName:Ljava/lang/String;
    .end local v9           #mediaSrc:Ljava/lang/String;
    .end local v13           #newFileName:Ljava/lang/String;
    :cond_15
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4

    .line 201
    .end local v7           #i:I
    .end local v16           #partsNum:I
    .end local v17           #tmpPart:Lcom/google/android/mms/pdu/PduPart;
    :cond_16
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string v19, "No part found for the model."

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18
.end method

.method private static getGenericMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/google/android/mms/pdu/PduPart;Lcom/android/mms/model/RegionModel;I)Lcom/android/mms/model/MediaModel;
    .locals 22
    .parameter "context"
    .parameter "tag"
    .parameter "src"
    .parameter "sme"
    .parameter "part"
    .parameter "regionModel"
    .parameter "parDuration"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 248
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v16

    .line 249
    .local v16, bytes:[B
    if-nez v16, :cond_0

    .line 250
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "Content-Type of the part may not be null."

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 253
    :cond_0
    new-instance v4, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    .line 254
    .local v4, contentType:Ljava/lang/String;
    const/4 v2, 0x0

    .line 255
    .local v2, media:Lcom/android/mms/model/MediaModel;
    invoke-static {v4}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 259
    new-instance v7, Lcom/android/mms/drm/DrmWrapper;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v7, v4, v0, v1}, Lcom/android/mms/drm/DrmWrapper;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/google/android/mms/pdu/PduPart;)V

    .line 260
    .local v7, wrapper:Lcom/android/mms/drm/DrmWrapper;
    const-string v3, "text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 261
    new-instance v2, Lcom/android/mms/model/TextModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v6

    move-object/from16 v3, p0

    move-object/from16 v5, p2

    move-object/from16 v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;)V

    .line 323
    .end local v7           #wrapper:Lcom/android/mms/drm/DrmWrapper;
    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    :goto_0
    const/4 v15, 0x0

    .line 324
    .local v15, begin:I
    invoke-interface/range {p3 .. p3}, Lorg/w3c/dom/smil/SMILMediaElement;->getBegin()Lorg/w3c/dom/smil/TimeList;

    move-result-object v20

    .line 325
    .local v20, tl:Lorg/w3c/dom/smil/TimeList;
    if-eqz v20, :cond_1

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/smil/TimeList;->getLength()I

    move-result v3

    if-lez v3, :cond_1

    .line 327
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v19

    .line 328
    .local v19, t:Lorg/w3c/dom/smil/Time;
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v5

    const-wide v8, 0x408f400000000000L

    mul-double/2addr v5, v8

    double-to-int v15, v5

    .line 330
    .end local v19           #t:Lorg/w3c/dom/smil/Time;
    :cond_1
    invoke-virtual {v2, v15}, Lcom/android/mms/model/MediaModel;->setBegin(I)V

    .line 333
    invoke-interface/range {p3 .. p3}, Lorg/w3c/dom/smil/SMILMediaElement;->getDur()F

    move-result v3

    const/high16 v5, 0x447a

    mul-float/2addr v3, v5

    float-to-int v0, v3

    move/from16 v18, v0

    .line 334
    .local v18, duration:I
    if-gtz v18, :cond_3

    .line 335
    invoke-interface/range {p3 .. p3}, Lorg/w3c/dom/smil/SMILMediaElement;->getEnd()Lorg/w3c/dom/smil/TimeList;

    move-result-object v20

    .line 336
    if-eqz v20, :cond_3

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/smil/TimeList;->getLength()I

    move-result v3

    if-lez v3, :cond_3

    .line 338
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v19

    .line 339
    .restart local v19       #t:Lorg/w3c/dom/smil/Time;
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/smil/Time;->getTimeType()I

    move-result v3

    if-eqz v3, :cond_3

    .line 340
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v5

    const-wide v8, 0x408f400000000000L

    mul-double/2addr v5, v8

    double-to-int v3, v5

    sub-int v18, v3, v15

    .line 342
    if-nez v18, :cond_3

    instance-of v3, v2, Lcom/android/mms/model/AudioModel;

    if-nez v3, :cond_2

    instance-of v3, v2, Lcom/android/mms/model/VideoModel;

    if-eqz v3, :cond_3

    .line 344
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result v3

    mul-int/lit16 v0, v3, 0x3e8

    move/from16 v18, v0

    .line 345
    const-string v3, "Mms:app"

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 346
    const-string v3, "Mms/media"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MediaModelFactory] compute new duration for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", duration="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    .end local v19           #t:Lorg/w3c/dom/smil/Time;
    :cond_3
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v21

    .line 355
    .local v21, type:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 356
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getDrmObject()Lcom/android/mms/drm/DrmWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/drm/DrmWrapper;->getContentType()Ljava/lang/String;

    move-result-object v21

    .line 358
    :cond_4
    instance-of v3, v2, Lcom/android/mms/model/ImageModel;

    if-eqz v3, :cond_5

    const-string v3, "image/gif"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 359
    move/from16 v18, p6

    .line 362
    :cond_5
    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/mms/model/MediaModel;->setDuration(I)V

    .line 365
    invoke-interface/range {p3 .. p3}, Lorg/w3c/dom/smil/SMILMediaElement;->getFill()S

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/mms/model/MediaModel;->setFill(S)V

    .line 366
    return-object v2

    .line 263
    .end local v15           #begin:I
    .end local v18           #duration:I
    .end local v20           #tl:Lorg/w3c/dom/smil/TimeList;
    .end local v21           #type:Ljava/lang/String;
    .restart local v7       #wrapper:Lcom/android/mms/drm/DrmWrapper;
    :cond_6
    const-string v3, "img"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 264
    new-instance v2, Lcom/android/mms/model/ImageModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    move-object v8, v2

    move-object/from16 v9, p0

    move-object v10, v4

    move-object/from16 v11, p2

    move-object v12, v7

    move-object/from16 v13, p5

    move/from16 v14, p6

    invoke-direct/range {v8 .. v14}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;I)V

    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 265
    :cond_7
    const-string v3, "video"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 266
    new-instance v2, Lcom/android/mms/model/VideoModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    move-object v8, v2

    move-object/from16 v9, p0

    move-object v10, v4

    move-object/from16 v11, p2

    move-object v12, v7

    move-object/from16 v13, p5

    invoke-direct/range {v8 .. v13}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;)V

    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 267
    :cond_8
    const-string v3, "audio"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 268
    new-instance v2, Lcom/android/mms/model/AudioModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v2, v0, v4, v1, v7}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;)V

    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 269
    :cond_9
    const-string v3, "ref"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 270
    invoke-virtual {v7}, Lcom/android/mms/drm/DrmWrapper;->getContentType()Ljava/lang/String;

    move-result-object v17

    .line 271
    .local v17, drmContentType:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/ContentType;->isTextType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 272
    new-instance v2, Lcom/android/mms/model/TextModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v6

    move-object/from16 v3, p0

    move-object/from16 v5, p2

    move-object/from16 v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;)V

    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 274
    :cond_a
    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 275
    new-instance v2, Lcom/android/mms/model/ImageModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    move-object v8, v2

    move-object/from16 v9, p0

    move-object v10, v4

    move-object/from16 v11, p2

    move-object v12, v7

    move-object/from16 v13, p5

    move/from16 v14, p6

    invoke-direct/range {v8 .. v14}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;I)V

    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 277
    :cond_b
    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 278
    new-instance v2, Lcom/android/mms/model/VideoModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    move-object v8, v2

    move-object/from16 v9, p0

    move-object v10, v4

    move-object/from16 v11, p2

    move-object v12, v7

    move-object/from16 v13, p5

    invoke-direct/range {v8 .. v13}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;)V

    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 279
    :cond_c
    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 280
    new-instance v2, Lcom/android/mms/model/AudioModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v2, v0, v4, v1, v7}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;)V

    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 282
    :cond_d
    const-string v3, "Mms/media"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MediaModelFactory] getGenericMediaModel Unsupported Content-Type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-static {v0, v7, v1}, Lcom/android/mms/model/MediaModelFactory;->createEmptyTextModel(Landroid/content/Context;Lcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;)Lcom/android/mms/model/MediaModel;

    move-result-object v2

    goto/16 :goto_0

    .line 287
    .end local v17           #drmContentType:Ljava/lang/String;
    :cond_e
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported TAG: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 290
    .end local v7           #wrapper:Lcom/android/mms/drm/DrmWrapper;
    :cond_f
    const-string v3, "text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 291
    new-instance v2, Lcom/android/mms/model/TextModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v12

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v13

    move-object v8, v2

    move-object/from16 v9, p0

    move-object v10, v4

    move-object/from16 v11, p2

    move-object/from16 v14, p5

    invoke-direct/range {v8 .. v14}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[BLcom/android/mms/model/RegionModel;)V

    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 293
    :cond_10
    const-string v3, "img"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 294
    new-instance v2, Lcom/android/mms/model/ImageModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v12

    move-object v8, v2

    move-object/from16 v9, p0

    move-object v10, v4

    move-object/from16 v11, p2

    move-object/from16 v13, p5

    move/from16 v14, p6

    invoke-direct/range {v8 .. v14}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;I)V

    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 296
    :cond_11
    const-string v3, "video"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 297
    new-instance v2, Lcom/android/mms/model/VideoModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v12

    move-object v8, v2

    move-object/from16 v9, p0

    move-object v10, v4

    move-object/from16 v11, p2

    move-object/from16 v13, p5

    invoke-direct/range {v8 .. v13}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 298
    :cond_12
    const-string v3, "audio"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 299
    new-instance v2, Lcom/android/mms/model/AudioModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v2, v0, v4, v1, v3}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 300
    :cond_13
    const-string v3, "ref"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 301
    invoke-static {v4}, Lcom/google/android/mms/ContentType;->isTextType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 302
    new-instance v2, Lcom/android/mms/model/TextModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v12

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v13

    move-object v8, v2

    move-object/from16 v9, p0

    move-object v10, v4

    move-object/from16 v11, p2

    move-object/from16 v14, p5

    invoke-direct/range {v8 .. v14}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[BLcom/android/mms/model/RegionModel;)V

    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 304
    :cond_14
    invoke-static {v4}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 305
    new-instance v2, Lcom/android/mms/model/ImageModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v12

    move-object v8, v2

    move-object/from16 v9, p0

    move-object v10, v4

    move-object/from16 v11, p2

    move-object/from16 v13, p5

    move/from16 v14, p6

    invoke-direct/range {v8 .. v14}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;I)V

    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 307
    :cond_15
    invoke-static {v4}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 308
    new-instance v2, Lcom/android/mms/model/VideoModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v12

    move-object v8, v2

    move-object/from16 v9, p0

    move-object v10, v4

    move-object/from16 v11, p2

    move-object/from16 v13, p5

    invoke-direct/range {v8 .. v13}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 310
    :cond_16
    invoke-static {v4}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 311
    new-instance v2, Lcom/android/mms/model/AudioModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v2, v0, v4, v1, v3}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    goto/16 :goto_0

    .line 313
    :cond_17
    const-string v3, "Mms/media"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MediaModelFactory] getGenericMediaModel Unsupported Content-Type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-static {v0, v3, v1}, Lcom/android/mms/model/MediaModelFactory;->createEmptyTextModel(Landroid/content/Context;Lcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;)Lcom/android/mms/model/MediaModel;

    move-result-object v2

    goto/16 :goto_0

    .line 318
    :cond_18
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported TAG: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static getMediaModel(Landroid/content/Context;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/android/mms/model/LayoutModel;Lcom/google/android/mms/pdu/PduBody;I)Lcom/android/mms/model/MediaModel;
    .locals 14
    .parameter "context"
    .parameter "sme"
    .parameter "layouts"
    .parameter "pb"
    .parameter "parDuration"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-interface {p1}, Lorg/w3c/dom/smil/SMILMediaElement;->getTagName()Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, tag:Ljava/lang/String;
    invoke-interface {p1}, Lorg/w3c/dom/smil/SMILMediaElement;->getSrc()Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, src:Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-static {v0, v3}, Lcom/android/mms/model/MediaModelFactory;->findPart(Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v6

    .line 55
    .local v6, part:Lcom/google/android/mms/pdu/PduPart;
    instance-of v1, p1, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    if-eqz v1, :cond_0

    move-object v4, p1

    .line 56
    check-cast v4, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    move-object v1, p0

    move-object/from16 v5, p2

    move/from16 v7, p4

    invoke-static/range {v1 .. v7}, Lcom/android/mms/model/MediaModelFactory;->getRegionMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILRegionMediaElement;Lcom/android/mms/model/LayoutModel;Lcom/google/android/mms/pdu/PduPart;I)Lcom/android/mms/model/MediaModel;

    move-result-object v1

    .line 59
    :goto_0
    return-object v1

    :cond_0
    const/4 v12, 0x0

    move-object v7, p0

    move-object v8, v2

    move-object v9, v3

    move-object v10, p1

    move-object v11, v6

    move/from16 v13, p4

    invoke-static/range {v7 .. v13}, Lcom/android/mms/model/MediaModelFactory;->getGenericMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/google/android/mms/pdu/PduPart;Lcom/android/mms/model/RegionModel;I)Lcom/android/mms/model/MediaModel;

    move-result-object v1

    goto :goto_0
.end method

.method private static getRegionMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILRegionMediaElement;Lcom/android/mms/model/LayoutModel;Lcom/google/android/mms/pdu/PduPart;I)Lcom/android/mms/model/MediaModel;
    .locals 9
    .parameter "context"
    .parameter "tag"
    .parameter "src"
    .parameter "srme"
    .parameter "layouts"
    .parameter "part"
    .parameter "parDuration"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 212
    invoke-interface {p3}, Lorg/w3c/dom/smil/SMILRegionMediaElement;->getRegion()Lorg/w3c/dom/smil/SMILRegionElement;

    move-result-object v8

    .line 213
    .local v8, sre:Lorg/w3c/dom/smil/SMILRegionElement;
    if-eqz v8, :cond_0

    .line 214
    invoke-interface {v8}, Lorg/w3c/dom/smil/SMILRegionElement;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/android/mms/model/LayoutModel;->findRegionById(Ljava/lang/String;)Lcom/android/mms/model/RegionModel;

    move-result-object v5

    .line 215
    .local v5, region:Lcom/android/mms/model/RegionModel;
    if-eqz v5, :cond_2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move v6, p6

    .line 216
    invoke-static/range {v0 .. v6}, Lcom/android/mms/model/MediaModelFactory;->getGenericMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/google/android/mms/pdu/PduPart;Lcom/android/mms/model/RegionModel;I)Lcom/android/mms/model/MediaModel;

    move-result-object v0

    .line 229
    :goto_0
    return-object v0

    .line 219
    .end local v5           #region:Lcom/android/mms/model/RegionModel;
    :cond_0
    const/4 v7, 0x0

    .line 221
    .local v7, rId:Ljava/lang/String;
    const-string v0, "text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    const-string v7, "Text"

    .line 227
    :goto_1
    invoke-virtual {p4, v7}, Lcom/android/mms/model/LayoutModel;->findRegionById(Ljava/lang/String;)Lcom/android/mms/model/RegionModel;

    move-result-object v5

    .line 228
    .restart local v5       #region:Lcom/android/mms/model/RegionModel;
    if-eqz v5, :cond_2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move v6, p6

    .line 229
    invoke-static/range {v0 .. v6}, Lcom/android/mms/model/MediaModelFactory;->getGenericMediaModel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/google/android/mms/pdu/PduPart;Lcom/android/mms/model/RegionModel;I)Lcom/android/mms/model/MediaModel;

    move-result-object v0

    goto :goto_0

    .line 224
    .end local v5           #region:Lcom/android/mms/model/RegionModel;
    :cond_1
    const-string v7, "Image"

    goto :goto_1

    .line 233
    .end local v7           #rId:Ljava/lang/String;
    .restart local v5       #region:Lcom/android/mms/model/RegionModel;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Region not found or bad region ID."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
