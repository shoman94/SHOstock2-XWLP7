.class public Lcom/android/contacts/util/ContactBadgeUtil;
.super Ljava/lang/Object;
.source "ContactBadgeUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSocialDate(Lcom/android/contacts/util/StreamItemEntry;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 19
    .parameter "streamItem"
    .parameter "context"

    .prologue
    .line 43
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/util/StreamItemEntry;->getTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    .line 44
    .local v17, statusTimestamp:Ljava/lang/Long;
    if-eqz v17, :cond_1

    .line 47
    const/high16 v7, 0x4

    .line 49
    .local v7, flags:I
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0xea60

    invoke-static/range {v1 .. v7}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v18

    .line 57
    .end local v7           #flags:I
    .local v18, timestampDisplayValue:Ljava/lang/CharSequence;
    :goto_0
    const/4 v11, 0x0

    .line 59
    .local v11, labelDisplayValue:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/util/StreamItemEntry;->getLabelRes()Ljava/lang/String;

    move-result-object v15

    .line 60
    .local v15, statusLabelRes:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/util/StreamItemEntry;->getResPackage()Ljava/lang/String;

    move-result-object v16

    .line 63
    .local v16, statusResPackage:Ljava/lang/String;
    move-object/from16 v10, v16

    .line 64
    .local v10, identiferPackage:Ljava/lang/String;
    if-eqz v15, :cond_0

    .line 66
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 69
    .local v14, resources:Landroid/content/res/Resources;
    const-string v10, "android"

    .line 81
    :goto_1
    if-eqz v14, :cond_0

    .line 82
    const-string v1, "string"

    invoke-virtual {v14, v15, v1, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 84
    .local v13, resId:I
    if-nez v13, :cond_3

    .line 85
    const-string v1, "ContactBadgeUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Contact status update resource not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .end local v13           #resId:I
    .end local v14           #resources:Landroid/content/res/Resources;
    :cond_0
    :goto_2
    if-eqz v18, :cond_4

    if-eqz v11, :cond_4

    .line 95
    const v1, 0x7f0a0191

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v18, v2, v3

    const/4 v3, 0x1

    aput-object v11, v2, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 107
    .local v8, attribution:Ljava/lang/CharSequence;
    :goto_3
    return-object v8

    .line 53
    .end local v8           #attribution:Ljava/lang/CharSequence;
    .end local v10           #identiferPackage:Ljava/lang/String;
    .end local v11           #labelDisplayValue:Ljava/lang/String;
    .end local v15           #statusLabelRes:Ljava/lang/String;
    .end local v16           #statusResPackage:Ljava/lang/String;
    .end local v18           #timestampDisplayValue:Ljava/lang/CharSequence;
    :cond_1
    const/16 v18, 0x0

    .restart local v18       #timestampDisplayValue:Ljava/lang/CharSequence;
    goto :goto_0

    .line 71
    .restart local v10       #identiferPackage:Ljava/lang/String;
    .restart local v11       #labelDisplayValue:Ljava/lang/String;
    .restart local v15       #statusLabelRes:Ljava/lang/String;
    .restart local v16       #statusResPackage:Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 73
    .local v12, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .restart local v14       #resources:Landroid/content/res/Resources;
    goto :goto_1

    .line 74
    .end local v14           #resources:Landroid/content/res/Resources;
    :catch_0
    move-exception v9

    .line 75
    .local v9, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "ContactBadgeUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Contact status update resource package not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v14, 0x0

    .restart local v14       #resources:Landroid/content/res/Resources;
    goto :goto_1

    .line 88
    .end local v9           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v12           #pm:Landroid/content/pm/PackageManager;
    .restart local v13       #resId:I
    :cond_3
    invoke-virtual {v14, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    .line 98
    .end local v13           #resId:I
    .end local v14           #resources:Landroid/content/res/Resources;
    :cond_4
    if-nez v18, :cond_5

    if-eqz v11, :cond_5

    .line 99
    const v1, 0x7f0a0190

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v11, v2, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .restart local v8       #attribution:Ljava/lang/CharSequence;
    goto :goto_3

    .line 102
    .end local v8           #attribution:Ljava/lang/CharSequence;
    :cond_5
    if-eqz v18, :cond_6

    .line 103
    move-object/from16 v8, v18

    .restart local v8       #attribution:Ljava/lang/CharSequence;
    goto :goto_3

    .line 105
    .end local v8           #attribution:Ljava/lang/CharSequence;
    :cond_6
    const/4 v8, 0x0

    .restart local v8       #attribution:Ljava/lang/CharSequence;
    goto :goto_3
.end method

.method public static loadDefaultAvatarPhoto(Landroid/content/Context;ZZJ)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "context"
    .parameter "hires"
    .parameter "darkTheme"
    .parameter "contactId"

    .prologue
    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1, p2, p3, p4}, Lcom/android/contacts/ContactPhotoManager;->getDefaultAvatarResId(ZZJ)I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
