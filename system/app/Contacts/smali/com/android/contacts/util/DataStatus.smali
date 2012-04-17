.class public Lcom/android/contacts/util/DataStatus;
.super Ljava/lang/Object;
.source "DataStatus.java"


# instance fields
.field private mIconRes:I

.field private mLabelRes:I

.field private mPresence:I

.field private mResPackage:Ljava/lang/String;

.field private mStatus:Ljava/lang/String;

.field private mTimestamp:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v2, p0, Lcom/android/contacts/util/DataStatus;->mPresence:I

    .line 36
    iput-object v3, p0, Lcom/android/contacts/util/DataStatus;->mStatus:Ljava/lang/String;

    .line 37
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/util/DataStatus;->mTimestamp:J

    .line 39
    iput-object v3, p0, Lcom/android/contacts/util/DataStatus;->mResPackage:Ljava/lang/String;

    .line 40
    iput v2, p0, Lcom/android/contacts/util/DataStatus;->mIconRes:I

    .line 41
    iput v2, p0, Lcom/android/contacts/util/DataStatus;->mLabelRes:I

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 4
    .parameter "cursor"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v2, p0, Lcom/android/contacts/util/DataStatus;->mPresence:I

    .line 36
    iput-object v3, p0, Lcom/android/contacts/util/DataStatus;->mStatus:Ljava/lang/String;

    .line 37
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/util/DataStatus;->mTimestamp:J

    .line 39
    iput-object v3, p0, Lcom/android/contacts/util/DataStatus;->mResPackage:Ljava/lang/String;

    .line 40
    iput v2, p0, Lcom/android/contacts/util/DataStatus;->mIconRes:I

    .line 41
    iput v2, p0, Lcom/android/contacts/util/DataStatus;->mLabelRes:I

    .line 48
    invoke-direct {p0, p1}, Lcom/android/contacts/util/DataStatus;->fromCursor(Landroid/database/Cursor;)V

    .line 49
    return-void
.end method

.method private fromCursor(Landroid/database/Cursor;)V
    .locals 4
    .parameter "cursor"

    .prologue
    const/4 v3, -0x1

    .line 77
    const-string v0, "mode"

    invoke-static {p1, v0, v3}, Lcom/android/contacts/util/DataStatus;->getInt(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/util/DataStatus;->mPresence:I

    .line 78
    const-string v0, "status"

    invoke-static {p1, v0}, Lcom/android/contacts/util/DataStatus;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/util/DataStatus;->mStatus:Ljava/lang/String;

    .line 79
    const-string v0, "status_ts"

    const-wide/16 v1, -0x1

    invoke-static {p1, v0, v1, v2}, Lcom/android/contacts/util/DataStatus;->getLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/util/DataStatus;->mTimestamp:J

    .line 80
    const-string v0, "status_res_package"

    invoke-static {p1, v0}, Lcom/android/contacts/util/DataStatus;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/util/DataStatus;->mResPackage:Ljava/lang/String;

    .line 81
    const-string v0, "status_icon"

    invoke-static {p1, v0, v3}, Lcom/android/contacts/util/DataStatus;->getInt(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/util/DataStatus;->mIconRes:I

    .line 82
    const-string v0, "status_label"

    invoke-static {p1, v0, v3}, Lcom/android/contacts/util/DataStatus;->getInt(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/util/DataStatus;->mLabelRes:I

    .line 83
    return-void
.end method

.method private static getInt(Landroid/database/Cursor;Ljava/lang/String;I)I
    .locals 2
    .parameter "cursor"
    .parameter "columnName"
    .parameter "missingValue"

    .prologue
    .line 153
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 154
    .local v0, columnIndex:I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local p2
    :goto_0
    return p2

    .restart local p2
    :cond_0
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    goto :goto_0
.end method

.method private static getLong(Landroid/database/Cursor;Ljava/lang/String;J)J
    .locals 2
    .parameter "cursor"
    .parameter "columnName"
    .parameter "missingValue"

    .prologue
    .line 158
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 159
    .local v0, columnIndex:I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local p2
    :goto_0
    return-wide p2

    .restart local p2
    :cond_0
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    goto :goto_0
.end method

.method private static getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "cursor"
    .parameter "columnName"

    .prologue
    .line 145
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isNull(Landroid/database/Cursor;Ljava/lang/String;)Z
    .locals 1
    .parameter "cursor"
    .parameter "columnName"

    .prologue
    .line 163
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getPresence()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/android/contacts/util/DataStatus;->mPresence:I

    return v0
.end method

.method public getStatus()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/contacts/util/DataStatus;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestampLabel(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 12
    .parameter "context"

    .prologue
    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 108
    .local v8, pm:Landroid/content/pm/PackageManager;
    iget-object v0, p0, Lcom/android/contacts/util/DataStatus;->mResPackage:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/util/DataStatus;->mResPackage:Ljava/lang/String;

    .line 110
    :cond_0
    iget-wide v0, p0, Lcom/android/contacts/util/DataStatus;->mTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    const/4 v11, 0x1

    .line 111
    .local v11, validTimestamp:Z
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/util/DataStatus;->mResPackage:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/contacts/util/DataStatus;->mLabelRes:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    const/4 v10, 0x1

    .line 113
    .local v10, validLabel:Z
    :goto_1
    if-eqz v11, :cond_4

    iget-wide v0, p0, Lcom/android/contacts/util/DataStatus;->mTimestamp:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    const/high16 v6, 0x4

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v9

    .line 116
    .local v9, timeClause:Ljava/lang/CharSequence;
    :goto_2
    if-eqz v10, :cond_5

    iget-object v0, p0, Lcom/android/contacts/util/DataStatus;->mResPackage:Ljava/lang/String;

    iget v1, p0, Lcom/android/contacts/util/DataStatus;->mLabelRes:I

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v1, v2}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 119
    .local v7, labelClause:Ljava/lang/CharSequence;
    :goto_3
    if-eqz v11, :cond_6

    if-eqz v10, :cond_6

    .line 120
    const v0, 0x7f0a0191

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v9, v1, v2

    const/4 v2, 0x1

    aput-object v7, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 130
    .end local v9           #timeClause:Ljava/lang/CharSequence;
    :cond_1
    :goto_4
    return-object v9

    .line 110
    .end local v7           #labelClause:Ljava/lang/CharSequence;
    .end local v10           #validLabel:Z
    .end local v11           #validTimestamp:Z
    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    .line 111
    .restart local v11       #validTimestamp:Z
    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .line 113
    .restart local v10       #validLabel:Z
    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    .line 116
    .restart local v9       #timeClause:Ljava/lang/CharSequence;
    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    .line 123
    .restart local v7       #labelClause:Ljava/lang/CharSequence;
    :cond_6
    if-eqz v10, :cond_7

    .line 124
    const v0, 0x7f0a0190

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v7, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    .line 127
    :cond_7
    if-nez v11, :cond_1

    .line 130
    const/4 v9, 0x0

    goto :goto_4
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/contacts/util/DataStatus;->mStatus:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public possibleUpdate(Landroid/database/Cursor;)V
    .locals 7
    .parameter "cursor"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 56
    const-string v6, "status"

    invoke-static {p1, v6}, Lcom/android/contacts/util/DataStatus;->isNull(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    move v0, v4

    .line 57
    .local v0, hasStatus:Z
    :goto_0
    const-string v6, "status_ts"

    invoke-static {p1, v6}, Lcom/android/contacts/util/DataStatus;->isNull(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    move v1, v4

    .line 61
    .local v1, hasTimestamp:Z
    :goto_1
    if-nez v0, :cond_3

    .line 74
    :cond_0
    :goto_2
    return-void

    .end local v0           #hasStatus:Z
    .end local v1           #hasTimestamp:Z
    :cond_1
    move v0, v5

    .line 56
    goto :goto_0

    .restart local v0       #hasStatus:Z
    :cond_2
    move v1, v5

    .line 57
    goto :goto_1

    .line 62
    .restart local v1       #hasTimestamp:Z
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/util/DataStatus;->isValid()Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v1, :cond_0

    .line 64
    :cond_4
    if-eqz v1, :cond_5

    .line 66
    const-string v4, "status_ts"

    const-wide/16 v5, -0x1

    invoke-static {p1, v4, v5, v6}, Lcom/android/contacts/util/DataStatus;->getLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v2

    .line 67
    .local v2, newTimestamp:J
    iget-wide v4, p0, Lcom/android/contacts/util/DataStatus;->mTimestamp:J

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    .line 69
    iput-wide v2, p0, Lcom/android/contacts/util/DataStatus;->mTimestamp:J

    .line 73
    .end local v2           #newTimestamp:J
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/contacts/util/DataStatus;->fromCursor(Landroid/database/Cursor;)V

    goto :goto_2
.end method
