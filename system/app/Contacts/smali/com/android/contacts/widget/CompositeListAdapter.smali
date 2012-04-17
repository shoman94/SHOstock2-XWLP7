.class public Lcom/android/contacts/widget/CompositeListAdapter;
.super Landroid/widget/BaseAdapter;
.source "CompositeListAdapter.java"


# instance fields
.field private mAdapters:[Landroid/widget/ListAdapter;

.field private mAllItemsEnabled:Z

.field private mCacheValid:Z

.field private mCount:I

.field private mCounts:[I

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mSize:I

.field private mViewTypeCount:I

.field private mViewTypeCounts:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/contacts/widget/CompositeListAdapter;-><init>(I)V

    .line 61
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .parameter "initialCapacity"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x2

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 38
    iput v0, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mSize:I

    .line 39
    iput v0, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCount:I

    .line 40
    iput v0, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mViewTypeCount:I

    .line 41
    iput-boolean v2, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAllItemsEnabled:Z

    .line 42
    iput-boolean v2, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCacheValid:Z

    .line 44
    new-instance v0, Lcom/android/contacts/widget/CompositeListAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/widget/CompositeListAdapter$1;-><init>(Lcom/android/contacts/widget/CompositeListAdapter;)V

    iput-object v0, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 64
    new-array v0, v1, [Landroid/widget/ListAdapter;

    iput-object v0, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    .line 65
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    .line 66
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mViewTypeCounts:[I

    .line 67
    return-void
.end method


# virtual methods
.method addAdapter(Landroid/widget/ListAdapter;)V
    .locals 9
    .parameter "adapter"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 71
    iget v6, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mSize:I

    iget-object v7, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    array-length v7, v7

    if-lt v6, v7, :cond_0

    .line 72
    iget v6, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mSize:I

    add-int/lit8 v2, v6, 0x2

    .line 73
    .local v2, newCapacity:I
    new-array v1, v2, [Landroid/widget/ListAdapter;

    .line 74
    .local v1, newAdapters:[Landroid/widget/ListAdapter;
    iget-object v6, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    iget v7, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mSize:I

    invoke-static {v6, v8, v1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    iput-object v1, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    .line 77
    new-array v3, v2, [I

    .line 78
    .local v3, newCounts:[I
    iget-object v6, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    iget v7, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mSize:I

    invoke-static {v6, v8, v3, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    iput-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    .line 81
    new-array v4, v2, [I

    .line 82
    .local v4, newViewTypeCounts:[I
    iget-object v6, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mViewTypeCounts:[I

    iget v7, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mSize:I

    invoke-static {v6, v8, v4, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    iput-object v4, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mViewTypeCounts:[I

    .line 86
    .end local v1           #newAdapters:[Landroid/widget/ListAdapter;
    .end local v2           #newCapacity:I
    .end local v3           #newCounts:[I
    .end local v4           #newViewTypeCounts:[I
    :cond_0
    iget-object v6, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v6}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 88
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 89
    .local v0, count:I
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v5

    .line 91
    .local v5, viewTypeCount:I
    iget-object v6, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    iget v7, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mSize:I

    aput-object p1, v6, v7

    .line 92
    iget-object v6, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    iget v7, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mSize:I

    aput v0, v6, v7

    .line 93
    iget v6, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCount:I

    add-int/2addr v6, v0

    iput v6, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCount:I

    .line 94
    iget-boolean v6, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAllItemsEnabled:Z

    invoke-interface {p1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v7

    and-int/2addr v6, v7

    iput-boolean v6, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAllItemsEnabled:Z

    .line 95
    iget-object v6, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mViewTypeCounts:[I

    iget v7, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mSize:I

    aput v5, v6, v7

    .line 96
    iget v6, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mViewTypeCount:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mViewTypeCount:I

    .line 97
    iget v6, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mSize:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mSize:I

    .line 99
    invoke-virtual {p0}, Lcom/android/contacts/widget/CompositeListAdapter;->notifyDataChanged()V

    .line 100
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/android/contacts/widget/CompositeListAdapter;->ensureCacheValid()V

    .line 207
    iget-boolean v0, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAllItemsEnabled:Z

    return v0
.end method

.method protected ensureCacheValid()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 115
    iget-boolean v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCacheValid:Z

    if-eqz v3, :cond_0

    .line 132
    :goto_0
    return-void

    .line 119
    :cond_0
    iput v4, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCount:I

    .line 120
    iput-boolean v5, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAllItemsEnabled:Z

    .line 121
    iput v4, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mViewTypeCount:I

    .line 122
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mSize:I

    if-ge v1, v3, :cond_1

    .line 123
    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    aget-object v3, v3, v1

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 124
    .local v0, count:I
    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    aget-object v3, v3, v1

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    .line 125
    .local v2, viewTypeCount:I
    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    aput v0, v3, v1

    .line 126
    iget v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCount:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCount:I

    .line 127
    iget-boolean v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAllItemsEnabled:Z

    iget-object v4, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    aget-object v4, v4, v1

    invoke-interface {v4}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v4

    and-int/2addr v3, v4

    iput-boolean v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAllItemsEnabled:Z

    .line 128
    iget v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mViewTypeCount:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mViewTypeCount:I

    .line 122
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 131
    .end local v0           #count:I
    .end local v2           #viewTypeCount:I
    :cond_1
    iput-boolean v5, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCacheValid:Z

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/android/contacts/widget/CompositeListAdapter;->ensureCacheValid()V

    .line 136
    iget v0, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCount:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 5
    .parameter "position"

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/android/contacts/widget/CompositeListAdapter;->ensureCacheValid()V

    .line 141
    const/4 v2, 0x0

    .line 142
    .local v2, start:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 143
    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    aget v3, v3, v1

    add-int v0, v2, v3

    .line 144
    .local v0, end:I
    if-lt p1, v2, :cond_0

    if-ge p1, v0, :cond_0

    .line 145
    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    aget-object v3, v3, v1

    sub-int v4, p1, v2

    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 147
    :cond_0
    move v2, v0

    .line 142
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    .end local v0           #end:I
    :cond_1
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v3, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v3
.end method

.method public getItemId(I)J
    .locals 5
    .parameter "position"

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/android/contacts/widget/CompositeListAdapter;->ensureCacheValid()V

    .line 155
    const/4 v2, 0x0

    .line 156
    .local v2, start:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 157
    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    aget v3, v3, v1

    add-int v0, v2, v3

    .line 158
    .local v0, end:I
    if-lt p1, v2, :cond_0

    if-ge p1, v0, :cond_0

    .line 159
    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    aget-object v3, v3, v1

    sub-int v4, p1, v2

    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    return-wide v3

    .line 161
    :cond_0
    move v2, v0

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    .end local v0           #end:I
    :cond_1
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v3, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v3
.end method

.method public getItemViewType(I)I
    .locals 6
    .parameter "position"

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/android/contacts/widget/CompositeListAdapter;->ensureCacheValid()V

    .line 176
    const/4 v2, 0x0

    .line 177
    .local v2, start:I
    const/4 v3, 0x0

    .line 178
    .local v3, viewTypeOffset:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 179
    iget-object v4, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    aget v4, v4, v1

    add-int v0, v2, v4

    .line 180
    .local v0, end:I
    if-lt p1, v2, :cond_0

    if-ge p1, v0, :cond_0

    .line 181
    iget-object v4, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    aget-object v4, v4, v1

    sub-int v5, p1, v2

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v4

    add-int/2addr v4, v3

    return v4

    .line 183
    :cond_0
    iget-object v4, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mViewTypeCounts:[I

    aget v4, v4, v1

    add-int/2addr v3, v4

    .line 184
    move v2, v0

    .line 178
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 187
    .end local v0           #end:I
    :cond_1
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v4
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/android/contacts/widget/CompositeListAdapter;->ensureCacheValid()V

    .line 192
    const/4 v2, 0x0

    .line 193
    .local v2, start:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 194
    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    aget v3, v3, v1

    add-int v0, v2, v3

    .line 195
    .local v0, end:I
    if-lt p1, v2, :cond_0

    if-ge p1, v0, :cond_0

    .line 196
    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    aget-object v3, v3, v1

    sub-int v4, p1, v2

    invoke-interface {v3, v4, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    return-object v3

    .line 198
    :cond_0
    move v2, v0

    .line 193
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 201
    .end local v0           #end:I
    :cond_1
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v3, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v3
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/android/contacts/widget/CompositeListAdapter;->ensureCacheValid()V

    .line 170
    iget v0, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mViewTypeCount:I

    return v0
.end method

.method protected invalidate()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCacheValid:Z

    .line 112
    return-void
.end method

.method public isEnabled(I)Z
    .locals 5
    .parameter "position"

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/android/contacts/widget/CompositeListAdapter;->ensureCacheValid()V

    .line 213
    const/4 v2, 0x0

    .line 214
    .local v2, start:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 215
    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    aget v3, v3, v1

    add-int v0, v2, v3

    .line 216
    .local v0, end:I
    if-lt p1, v2, :cond_2

    if-ge p1, v0, :cond_2

    .line 217
    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    aget-object v3, v3, v1

    invoke-interface {v3}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    aget-object v3, v3, v1

    sub-int v4, p1, v2

    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 220
    :cond_2
    move v2, v0

    .line 214
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 223
    .end local v0           #end:I
    :cond_3
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v3, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v3
.end method

.method protected notifyDataChanged()V
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/android/contacts/widget/CompositeListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/android/contacts/widget/CompositeListAdapter;->notifyDataSetChanged()V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/widget/CompositeListAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
