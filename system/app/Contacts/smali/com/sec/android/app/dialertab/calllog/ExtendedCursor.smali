.class public Lcom/sec/android/app/dialertab/calllog/ExtendedCursor;
.super Landroid/database/AbstractCursor;
.source "ExtendedCursor.java"


# instance fields
.field private final mColumnName:Ljava/lang/String;

.field private final mCursor:Landroid/database/Cursor;

.field private final mValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter "cursor"
    .parameter "columnName"
    .parameter "value"

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/ExtendedCursor;->mCursor:Landroid/database/Cursor;

    .line 49
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/ExtendedCursor;->mColumnName:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/sec/android/app/dialertab/calllog/ExtendedCursor;->mValue:Ljava/lang/Object;

    .line 51
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/ExtendedCursor;->mCursor:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    .line 132
    invoke-super {p0}, Landroid/database/AbstractCursor;->close()V

    .line 133
    return-void
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 60
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/ExtendedCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, columnNames:[Ljava/lang/String;
    array-length v2, v0

    .line 62
    .local v2, length:I
    add-int/lit8 v3, v2, 0x1

    new-array v1, v3, [Ljava/lang/String;

    .line 63
    .local v1, extendedColumnNames:[Ljava/lang/String;
    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/ExtendedCursor;->mColumnName:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 65
    return-object v1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/ExtendedCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .parameter "column"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/ExtendedCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/ExtendedCursor;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 113
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/ExtendedCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    goto :goto_0
.end method

.method public getFloat(I)F
    .locals 1
    .parameter "column"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/ExtendedCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/ExtendedCursor;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 105
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/ExtendedCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    goto :goto_0
.end method

.method public getInt(I)I
    .locals 1
    .parameter "column"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/ExtendedCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/ExtendedCursor;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 89
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/ExtendedCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_0
.end method

.method public getLong(I)J
    .locals 2
    .parameter "column"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/ExtendedCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/ExtendedCursor;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 97
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/ExtendedCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getShort(I)S
    .locals 1
    .parameter "column"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/ExtendedCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/ExtendedCursor;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    .line 81
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/ExtendedCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .parameter "column"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/ExtendedCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/ExtendedCursor;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 73
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/ExtendedCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 1
    .parameter "column"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/ExtendedCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/ExtendedCursor;->mValue:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 121
    :goto_0
    return v0

    .line 119
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/ExtendedCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    goto :goto_0
.end method

.method public onMove(II)Z
    .locals 1
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/ExtendedCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/ExtendedCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 138
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/ExtendedCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 148
    return-void
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/ExtendedCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 143
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/ExtendedCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 153
    return-void
.end method
