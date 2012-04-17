.class public abstract Lcom/android/contacts/widget/PinnedHeaderListAdapter;
.super Lcom/android/common/widget/CompositeCursorAdapter;
.source "PinnedHeaderListAdapter.java"

# interfaces
.implements Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeaderAdapter;


# instance fields
.field private mHeaderVisibility:[Z

.field private mPinnedPartitionHeadersEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;-><init>(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "initialCapacity"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/common/widget/CompositeCursorAdapter;-><init>(Landroid/content/Context;I)V

    .line 41
    return-void
.end method


# virtual methods
.method public configurePinnedHeaders(Lcom/android/contacts/widget/PinnedHeaderListView;)V
    .locals 16
    .parameter "listView"

    .prologue
    .line 91
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/contacts/widget/PinnedHeaderListAdapter;->mPinnedPartitionHeadersEnabled:Z

    if-nez v15, :cond_1

    .line 162
    :cond_0
    return-void

    .line 95
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/widget/PinnedHeaderListAdapter;->getPartitionCount()I

    move-result v12

    .line 98
    .local v12, size:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/widget/PinnedHeaderListAdapter;->mHeaderVisibility:[Z

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/widget/PinnedHeaderListAdapter;->mHeaderVisibility:[Z

    array-length v15, v15

    if-eq v15, v12, :cond_3

    .line 99
    :cond_2
    new-array v15, v12, [Z

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/contacts/widget/PinnedHeaderListAdapter;->mHeaderVisibility:[Z

    .line 101
    :cond_3
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v12, :cond_5

    .line 102
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/widget/PinnedHeaderListAdapter;->isPinnedPartitionHeaderVisible(I)Z

    move-result v14

    .line 103
    .local v14, visible:Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/widget/PinnedHeaderListAdapter;->mHeaderVisibility:[Z

    aput-boolean v14, v15, v6

    .line 104
    if-nez v14, :cond_4

    .line 105
    const/4 v15, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v15}, Lcom/android/contacts/widget/PinnedHeaderListView;->setHeaderInvisible(IZ)V

    .line 101
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 109
    .end local v14           #visible:Z
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/widget/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v4

    .line 112
    .local v4, headerViewsCount:I
    const/4 v9, -0x1

    .line 113
    .local v9, maxTopHeader:I
    const/4 v13, 0x0

    .line 114
    .local v13, topHeaderHeight:I
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v12, :cond_6

    .line 115
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/widget/PinnedHeaderListAdapter;->mHeaderVisibility:[Z

    aget-boolean v15, v15, v6

    if-eqz v15, :cond_b

    .line 116
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/android/contacts/widget/PinnedHeaderListView;->getPositionAt(I)I

    move-result v15

    sub-int v11, v15, v4

    .line 117
    .local v11, position:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/contacts/widget/PinnedHeaderListAdapter;->getPartitionForPosition(I)I

    move-result v10

    .line 118
    .local v10, partition:I
    if-le v6, v10, :cond_a

    .line 129
    .end local v10           #partition:I
    .end local v11           #position:I
    :cond_6
    move v8, v12

    .line 130
    .local v8, maxBottomHeader:I
    const/4 v2, 0x0

    .line 131
    .local v2, bottomHeaderHeight:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/widget/PinnedHeaderListView;->getHeight()I

    move-result v7

    .line 132
    .local v7, listHeight:I
    move v6, v12

    :cond_7
    :goto_2
    add-int/lit8 v6, v6, -0x1

    if-le v6, v9, :cond_8

    .line 133
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/widget/PinnedHeaderListAdapter;->mHeaderVisibility:[Z

    aget-boolean v15, v15, v6

    if-eqz v15, :cond_7

    .line 134
    sub-int v15, v7, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/android/contacts/widget/PinnedHeaderListView;->getPositionAt(I)I

    move-result v15

    sub-int v11, v15, v4

    .line 136
    .restart local v11       #position:I
    if-gez v11, :cond_c

    .line 157
    .end local v11           #position:I
    :cond_8
    add-int/lit8 v6, v9, 0x1

    :goto_3
    if-ge v6, v8, :cond_0

    .line 158
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/widget/PinnedHeaderListAdapter;->mHeaderVisibility:[Z

    aget-boolean v15, v15, v6

    if-eqz v15, :cond_9

    .line 159
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/widget/PinnedHeaderListAdapter;->isPartitionEmpty(I)Z

    move-result v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v15}, Lcom/android/contacts/widget/PinnedHeaderListView;->setHeaderInvisible(IZ)V

    .line 157
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 122
    .end local v2           #bottomHeaderHeight:I
    .end local v7           #listHeight:I
    .end local v8           #maxBottomHeader:I
    .restart local v10       #partition:I
    .restart local v11       #position:I
    :cond_a
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v13, v15}, Lcom/android/contacts/widget/PinnedHeaderListView;->setHeaderPinnedAtTop(IIZ)V

    .line 123
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/android/contacts/widget/PinnedHeaderListView;->getPinnedHeaderHeight(I)I

    move-result v15

    add-int/2addr v13, v15

    .line 124
    move v9, v6

    .line 114
    .end local v10           #partition:I
    .end local v11           #position:I
    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 140
    .restart local v2       #bottomHeaderHeight:I
    .restart local v7       #listHeight:I
    .restart local v8       #maxBottomHeader:I
    .restart local v11       #position:I
    :cond_c
    add-int/lit8 v15, v11, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/contacts/widget/PinnedHeaderListAdapter;->getPartitionForPosition(I)I

    move-result v10

    .line 141
    .restart local v10       #partition:I
    const/4 v15, -0x1

    if-eq v10, v15, :cond_8

    if-le v6, v10, :cond_8

    .line 145
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/android/contacts/widget/PinnedHeaderListView;->getPinnedHeaderHeight(I)I

    move-result v5

    .line 146
    .local v5, height:I
    add-int/2addr v2, v5

    .line 149
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/widget/PinnedHeaderListAdapter;->getPositionForPartition(I)I

    move-result v3

    .line 150
    .local v3, firstPositionForPartition:I
    if-ge v11, v3, :cond_d

    const/4 v1, 0x1

    .line 151
    .local v1, animate:Z
    :goto_4
    sub-int v15, v7, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v15, v1}, Lcom/android/contacts/widget/PinnedHeaderListView;->setHeaderPinnedAtBottom(IIZ)V

    .line 152
    move v8, v6

    .line 153
    goto :goto_2

    .line 150
    .end local v1           #animate:Z
    :cond_d
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public getPinnedHeaderCount()I
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/contacts/widget/PinnedHeaderListAdapter;->mPinnedPartitionHeadersEnabled:Z

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/android/contacts/widget/PinnedHeaderListAdapter;->getPartitionCount()I

    move-result v0

    .line 55
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPinnedHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "partition"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/contacts/widget/PinnedHeaderListAdapter;->hasHeader(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 70
    const/4 v1, 0x0

    .line 71
    .local v1, view:Landroid/view/View;
    if-eqz p2, :cond_0

    .line 72
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 73
    .local v0, headerType:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_0

    .line 74
    move-object v1, p2

    .line 77
    .end local v0           #headerType:Ljava/lang/Integer;
    :cond_0
    if-nez v1, :cond_1

    .line 78
    invoke-virtual {p0}, Lcom/android/contacts/widget/PinnedHeaderListAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3, p1, v2, p3}, Lcom/android/contacts/widget/PinnedHeaderListAdapter;->newHeaderView(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 79
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 80
    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 81
    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 83
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/contacts/widget/PinnedHeaderListAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/contacts/widget/PinnedHeaderListAdapter;->bindHeaderView(Landroid/view/View;ILandroid/database/Cursor;)V

    .line 86
    .end local v1           #view:Landroid/view/View;
    :goto_0
    return-object v1

    :cond_2
    move-object v1, v2

    goto :goto_0
.end method

.method public getPinnedPartitionHeadersEnabled()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/contacts/widget/PinnedHeaderListAdapter;->mPinnedPartitionHeadersEnabled:Z

    return v0
.end method

.method public getScrollPositionForHeader(I)I
    .locals 1
    .parameter "viewIndex"

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Lcom/android/contacts/widget/PinnedHeaderListAdapter;->getPositionForPartition(I)I

    move-result v0

    return v0
.end method

.method protected isPinnedPartitionHeaderVisible(I)Z
    .locals 1
    .parameter "partition"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/contacts/widget/PinnedHeaderListAdapter;->mPinnedPartitionHeadersEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/contacts/widget/PinnedHeaderListAdapter;->hasHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/contacts/widget/PinnedHeaderListAdapter;->isPartitionEmpty(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPinnedPartitionHeadersEnabled(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/contacts/widget/PinnedHeaderListAdapter;->mPinnedPartitionHeadersEnabled:Z

    .line 49
    return-void
.end method
