.class public Lcom/android/emailcommon/smime/UriSchemaUtils;
.super Ljava/lang/Object;
.source "UriSchemaUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "UriSchemaUtils"

    sput-object v0, Lcom/android/emailcommon/smime/UriSchemaUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static getFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;
    .locals 24
    .parameter "context"
    .parameter "url"
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v18

    .line 40
    .local v18, scheme:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    .line 41
    .local v8, authority:Ljava/lang/String;
    const/4 v12, 0x0

    .line 43
    .local v12, filePath:Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;
    sget-object v2, Lcom/android/emailcommon/smime/UriSchemaUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scheme = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    sget-object v2, Lcom/android/emailcommon/smime/UriSchemaUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "authority = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    if-nez v18, :cond_0

    move-object v13, v12

    .line 126
    .end local v12           #filePath:Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;
    .local v13, filePath:Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;
    :goto_0
    return-object v13

    .line 50
    .end local v13           #filePath:Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;
    .restart local v12       #filePath:Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;
    :cond_0
    const-string v2, "file"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 51
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 52
    .local v16, fileUriSegment:[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    .line 53
    const/4 v2, 0x1

    aget-object v2, v16, v2

    if-eqz v2, :cond_1

    .line 55
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v17

    .line 56
    .local v17, path:Ljava/lang/String;
    new-instance v12, Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;

    .end local v12           #filePath:Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-direct {v12, v0, v2}, Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;-><init>(Ljava/lang/String;Z)V

    .line 57
    .restart local v12       #filePath:Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;
    sget-object v2, Lcom/android/emailcommon/smime/UriSchemaUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filePath = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v12, Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v16           #fileUriSegment:[Ljava/lang/String;
    .end local v17           #path:Ljava/lang/String;
    :cond_1
    :goto_1
    move-object v13, v12

    .line 126
    .end local v12           #filePath:Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;
    .restart local v13       #filePath:Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;
    goto :goto_0

    .line 60
    .end local v13           #filePath:Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;
    .restart local v12       #filePath:Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;
    :cond_2
    const-string v2, "content"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 62
    if-nez v8, :cond_3

    move-object v13, v12

    .line 63
    .end local v12           #filePath:Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;
    .restart local v13       #filePath:Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;
    goto :goto_0

    .line 66
    .end local v13           #filePath:Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;
    .restart local v12       #filePath:Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;
    :cond_3
    const-string v2, "media"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 67
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_data"

    aput-object v3, v4, v2

    .line 70
    .local v4, projection:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 71
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 72
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 73
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 74
    .restart local v17       #path:Ljava/lang/String;
    new-instance v12, Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;

    .end local v12           #filePath:Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-direct {v12, v0, v2}, Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;-><init>(Ljava/lang/String;Z)V

    .line 75
    .restart local v12       #filePath:Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;
    sget-object v2, Lcom/android/emailcommon/smime/UriSchemaUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filePath = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v12, Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .end local v17           #path:Ljava/lang/String;
    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 79
    .end local v4           #projection:[Ljava/lang/String;
    .end local v9           #c:Landroid/database/Cursor;
    :cond_5
    const-string v2, "contact"

    invoke-virtual {v8, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "attachmentprovider"

    invoke-virtual {v8, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    :cond_6
    const/4 v10, 0x0

    .line 82
    .local v10, cacheDir:Ljava/io/File;
    const/16 v21, 0x0

    .line 83
    .local v21, tmpFile:Ljava/io/File;
    const/4 v14, 0x0

    .line 84
    .local v14, fileStream:Ljava/io/FileOutputStream;
    const/16 v19, 0x0

    .line 85
    .local v19, stream:Ljava/io/OutputStream;
    const/16 v23, 0x0

    .line 87
    .local v23, vCard:Ljava/io/InputStream;
    sget-object v2, Lcom/android/emailcommon/smime/UriSchemaUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VCard = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v23

    .line 92
    if-eqz v23, :cond_7

    .line 93
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v10

    .line 94
    if-eqz p2, :cond_8

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    .line 95
    new-instance v22, Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .end local v21           #tmpFile:Ljava/io/File;
    .local v22, tmpFile:Ljava/io/File;
    move-object/from16 v21, v22

    .line 100
    .end local v22           #tmpFile:Ljava/io/File;
    .restart local v21       #tmpFile:Ljava/io/File;
    :goto_2
    new-instance v15, Ljava/io/FileOutputStream;

    move-object/from16 v0, v21

    invoke-direct {v15, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 101
    .end local v14           #fileStream:Ljava/io/FileOutputStream;
    .local v15, fileStream:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v20, Ljava/io/BufferedOutputStream;

    const/16 v2, 0x400

    move-object/from16 v0, v20

    invoke-direct {v0, v15, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 103
    .end local v19           #stream:Ljava/io/OutputStream;
    .local v20, stream:Ljava/io/OutputStream;
    :try_start_2
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 104
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedOutputStream;->flush()V

    .line 105
    new-instance v13, Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v13, v2, v3}, Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;-><init>(Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 106
    .end local v12           #filePath:Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;
    .restart local v13       #filePath:Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;
    :try_start_3
    sget-object v2, Lcom/android/emailcommon/smime/UriSchemaUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filePath = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v13, Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    move-object/from16 v19, v20

    .end local v20           #stream:Ljava/io/OutputStream;
    .restart local v19       #stream:Ljava/io/OutputStream;
    move-object v14, v15

    .end local v15           #fileStream:Ljava/io/FileOutputStream;
    .restart local v14       #fileStream:Ljava/io/FileOutputStream;
    move-object v12, v13

    .line 113
    .end local v13           #filePath:Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;
    .restart local v12       #filePath:Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;
    :cond_7
    if-eqz v19, :cond_1

    .line 114
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedOutputStream;->flush()V

    .line 115
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedOutputStream;->close()V

    goto/16 :goto_1

    .line 97
    :cond_8
    :try_start_4
    const-string v2, "eas_smime_temp_"

    const-string v3, "vcf"

    invoke-static {v2, v3, v10}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v21

    goto :goto_2

    .line 108
    :catch_0
    move-exception v11

    .line 109
    .local v11, e:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    invoke-virtual {v11}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 113
    if-eqz v19, :cond_1

    .line 114
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedOutputStream;->flush()V

    .line 115
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedOutputStream;->close()V

    goto/16 :goto_1

    .line 110
    .end local v11           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v11

    .line 111
    .local v11, e:Ljava/io/IOException;
    :goto_4
    :try_start_6
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 113
    if-eqz v19, :cond_1

    .line 114
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedOutputStream;->flush()V

    .line 115
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedOutputStream;->close()V

    goto/16 :goto_1

    .line 113
    .end local v11           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    :goto_5
    if-eqz v19, :cond_9

    .line 114
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedOutputStream;->flush()V

    .line 115
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedOutputStream;->close()V

    :cond_9
    throw v2

    .line 124
    .end local v10           #cacheDir:Ljava/io/File;
    .end local v14           #fileStream:Ljava/io/FileOutputStream;
    .end local v19           #stream:Ljava/io/OutputStream;
    .end local v21           #tmpFile:Ljava/io/File;
    .end local v23           #vCard:Ljava/io/InputStream;
    :cond_a
    sget-object v2, Lcom/android/emailcommon/smime/UriSchemaUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not supported Uri = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 113
    .restart local v10       #cacheDir:Ljava/io/File;
    .restart local v15       #fileStream:Ljava/io/FileOutputStream;
    .restart local v19       #stream:Ljava/io/OutputStream;
    .restart local v21       #tmpFile:Ljava/io/File;
    .restart local v23       #vCard:Ljava/io/InputStream;
    :catchall_1
    move-exception v2

    move-object v14, v15

    .end local v15           #fileStream:Ljava/io/FileOutputStream;
    .restart local v14       #fileStream:Ljava/io/FileOutputStream;
    goto :goto_5

    .end local v14           #fileStream:Ljava/io/FileOutputStream;
    .end local v19           #stream:Ljava/io/OutputStream;
    .restart local v15       #fileStream:Ljava/io/FileOutputStream;
    .restart local v20       #stream:Ljava/io/OutputStream;
    :catchall_2
    move-exception v2

    move-object/from16 v19, v20

    .end local v20           #stream:Ljava/io/OutputStream;
    .restart local v19       #stream:Ljava/io/OutputStream;
    move-object v14, v15

    .end local v15           #fileStream:Ljava/io/FileOutputStream;
    .restart local v14       #fileStream:Ljava/io/FileOutputStream;
    goto :goto_5

    .end local v12           #filePath:Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;
    .end local v14           #fileStream:Ljava/io/FileOutputStream;
    .end local v19           #stream:Ljava/io/OutputStream;
    .restart local v13       #filePath:Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;
    .restart local v15       #fileStream:Ljava/io/FileOutputStream;
    .restart local v20       #stream:Ljava/io/OutputStream;
    :catchall_3
    move-exception v2

    move-object/from16 v19, v20

    .end local v20           #stream:Ljava/io/OutputStream;
    .restart local v19       #stream:Ljava/io/OutputStream;
    move-object v14, v15

    .end local v15           #fileStream:Ljava/io/FileOutputStream;
    .restart local v14       #fileStream:Ljava/io/FileOutputStream;
    move-object v12, v13

    .end local v13           #filePath:Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;
    .restart local v12       #filePath:Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;
    goto :goto_5

    .line 110
    .end local v14           #fileStream:Ljava/io/FileOutputStream;
    .restart local v15       #fileStream:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v11

    move-object v14, v15

    .end local v15           #fileStream:Ljava/io/FileOutputStream;
    .restart local v14       #fileStream:Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v14           #fileStream:Ljava/io/FileOutputStream;
    .end local v19           #stream:Ljava/io/OutputStream;
    .restart local v15       #fileStream:Ljava/io/FileOutputStream;
    .restart local v20       #stream:Ljava/io/OutputStream;
    :catch_3
    move-exception v11

    move-object/from16 v19, v20

    .end local v20           #stream:Ljava/io/OutputStream;
    .restart local v19       #stream:Ljava/io/OutputStream;
    move-object v14, v15

    .end local v15           #fileStream:Ljava/io/FileOutputStream;
    .restart local v14       #fileStream:Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v12           #filePath:Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;
    .end local v14           #fileStream:Ljava/io/FileOutputStream;
    .end local v19           #stream:Ljava/io/OutputStream;
    .restart local v13       #filePath:Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;
    .restart local v15       #fileStream:Ljava/io/FileOutputStream;
    .restart local v20       #stream:Ljava/io/OutputStream;
    :catch_4
    move-exception v11

    move-object/from16 v19, v20

    .end local v20           #stream:Ljava/io/OutputStream;
    .restart local v19       #stream:Ljava/io/OutputStream;
    move-object v14, v15

    .end local v15           #fileStream:Ljava/io/FileOutputStream;
    .restart local v14       #fileStream:Ljava/io/FileOutputStream;
    move-object v12, v13

    .end local v13           #filePath:Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;
    .restart local v12       #filePath:Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;
    goto :goto_4

    .line 108
    .end local v14           #fileStream:Ljava/io/FileOutputStream;
    .restart local v15       #fileStream:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v11

    move-object v14, v15

    .end local v15           #fileStream:Ljava/io/FileOutputStream;
    .restart local v14       #fileStream:Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v14           #fileStream:Ljava/io/FileOutputStream;
    .end local v19           #stream:Ljava/io/OutputStream;
    .restart local v15       #fileStream:Ljava/io/FileOutputStream;
    .restart local v20       #stream:Ljava/io/OutputStream;
    :catch_6
    move-exception v11

    move-object/from16 v19, v20

    .end local v20           #stream:Ljava/io/OutputStream;
    .restart local v19       #stream:Ljava/io/OutputStream;
    move-object v14, v15

    .end local v15           #fileStream:Ljava/io/FileOutputStream;
    .restart local v14       #fileStream:Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v12           #filePath:Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;
    .end local v14           #fileStream:Ljava/io/FileOutputStream;
    .end local v19           #stream:Ljava/io/OutputStream;
    .restart local v13       #filePath:Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;
    .restart local v15       #fileStream:Ljava/io/FileOutputStream;
    .restart local v20       #stream:Ljava/io/OutputStream;
    :catch_7
    move-exception v11

    move-object/from16 v19, v20

    .end local v20           #stream:Ljava/io/OutputStream;
    .restart local v19       #stream:Ljava/io/OutputStream;
    move-object v14, v15

    .end local v15           #fileStream:Ljava/io/FileOutputStream;
    .restart local v14       #fileStream:Ljava/io/FileOutputStream;
    move-object v12, v13

    .end local v13           #filePath:Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;
    .restart local v12       #filePath:Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;
    goto :goto_3
.end method
