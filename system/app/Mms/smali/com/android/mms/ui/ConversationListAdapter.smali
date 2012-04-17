.class public Lcom/android/mms/ui/ConversationListAdapter;
.super Landroid/widget/CursorAdapter;
.source "ConversationListAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;
    }
.end annotation


# static fields
.field private static mCheckedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mFactory:Landroid/view/LayoutInflater;

.field private mFontSize:I

.field private mIsDeleteMode:Z

.field private mIsSplitMode:Z

.field private mOnContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

.field private mSelectedThreadId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 52
    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsDeleteMode:Z

    .line 54
    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsSplitMode:Z

    .line 58
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mSelectedThreadId:J

    .line 60
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mFontSize:I

    .line 64
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mFactory:Landroid/view/LayoutInflater;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    .line 67
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 10
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v9, 0x0

    .line 75
    instance-of v5, p1, Lcom/android/mms/ui/ConversationListItem;

    if-nez v5, :cond_0

    .line 76
    const-string v5, "Mms/ConversationListAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected bound view: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :goto_0
    return-void

    :cond_0
    move-object v3, p1

    .line 79
    check-cast v3, Lcom/android/mms/ui/ConversationListItem;

    .line 80
    .local v3, headerView:Lcom/android/mms/ui/ConversationListItem;
    invoke-static {p2, p3}, Lcom/android/mms/data/Conversation;->from(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/Conversation;

    move-result-object v2

    .line 82
    .local v2, conv:Lcom/android/mms/data/Conversation;
    new-instance v0, Lcom/android/mms/ui/ConversationListItemData;

    invoke-direct {v0, p2, v2}, Lcom/android/mms/ui/ConversationListItemData;-><init>(Landroid/content/Context;Lcom/android/mms/data/Conversation;)V

    .line 83
    .local v0, ch:Lcom/android/mms/ui/ConversationListItemData;
    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListItemData;->updateRecipients()V

    .line 84
    iget-boolean v5, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsDeleteMode:Z

    invoke-virtual {v3, v5}, Lcom/android/mms/ui/ConversationListItem;->setDeleteMode(Z)V

    .line 85
    const/4 v1, 0x0

    .line 86
    .local v1, checked:Z
    iget-boolean v5, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsDeleteMode:Z

    if-eqz v5, :cond_1

    .line 87
    sget-object v5, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 89
    if-nez v1, :cond_1

    .line 90
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListAdapter;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v5, v9}, Lcom/android/mms/ui/ConversationComposer;->setConversationSelectAll(Z)V

    .line 93
    :cond_1
    invoke-virtual {v3, v1}, Lcom/android/mms/ui/ConversationListItem;->setCheckBox(Z)V

    .line 94
    iget v5, p0, Lcom/android/mms/ui/ConversationListAdapter;->mFontSize:I

    invoke-virtual {v3, v5}, Lcom/android/mms/ui/ConversationListItem;->setFontSize(I)V

    .line 95
    invoke-virtual {v3, p2, v0, p3}, Lcom/android/mms/ui/ConversationListItem;->bind(Landroid/content/Context;Lcom/android/mms/ui/ConversationListItemData;Landroid/database/Cursor;)V

    .line 98
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListAdapter;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v5}, Lcom/android/mms/ui/ConversationComposer;->isSplitBarTouch()Z

    move-result v4

    .line 100
    .local v4, touch:Z
    iget-wide v5, p0, Lcom/android/mms/ui/ConversationListAdapter;->mSelectedThreadId:J

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListItemData;->getThreadId()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsDeleteMode:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsSplitMode:Z

    if-eqz v5, :cond_2

    .line 101
    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Lcom/android/mms/ui/ConversationListItem;->setMessagePointer(ZZ)V

    .line 107
    :goto_1
    const-string v5, "Mms/ConversationListAdapter"

    const-string v6, "bind() complete"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_2
    invoke-virtual {v3, v9, v4}, Lcom/android/mms/ui/ConversationListItem;->setMessagePointer(ZZ)V

    goto :goto_1
.end method

.method public clearCheckedList()V
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 167
    return-void
.end method

.method public disableSplitMode()V
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsSplitMode:Z

    .line 155
    return-void
.end method

.method public enableSplitMode()V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsSplitMode:Z

    .line 151
    return-void
.end method

.method public getCheckedCount()I
    .locals 1

    .prologue
    .line 181
    sget-object v0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCheckedList()[Ljava/lang/Long;
    .locals 2

    .prologue
    .line 189
    sget-object v0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    check-cast v0, [Ljava/lang/Long;

    return-object v0
.end method

.method public initListItemSelectedThreadId()V
    .locals 2

    .prologue
    .line 201
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mSelectedThreadId:J

    .line 202
    return-void
.end method

.method public isCheckedThreadId(J)Z
    .locals 2
    .parameter "threadId"

    .prologue
    .line 185
    sget-object v0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mFactory:Landroid/view/LayoutInflater;

    const v1, 0x7f03000c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onContentChanged()V
    .locals 2

    .prologue
    .line 130
    const-string v0, "Mms/ConversationListAdapter"

    const-string v1, "ConversationListAdapter: onContentChanged"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;->onContentChanged(Lcom/android/mms/ui/ConversationListAdapter;)V

    .line 136
    :cond_0
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 111
    move-object v0, p1

    check-cast v0, Lcom/android/mms/ui/ConversationListItem;

    .line 112
    .local v0, headerView:Lcom/android/mms/ui/ConversationListItem;
    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListItem;->unbind()V

    .line 113
    return-void
.end method

.method public reCalulateCheckedThreads()V
    .locals 6

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 209
    .local v1, currentCursor:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    sget-object v4, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 212
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v2, newCheckedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-string v4, "_id"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 217
    .local v0, colId:I
    :cond_2
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 218
    .local v3, threadId:Ljava/lang/Long;
    sget-object v4, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 219
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 223
    sput-object v2, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public refreshFontSize()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMessageFontSizeIndex(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mFontSize:I

    .line 71
    return-void
.end method

.method public setChecked(J)V
    .locals 2
    .parameter "threadId"

    .prologue
    .line 159
    sget-object v0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    :goto_0
    return-void

    .line 162
    :cond_0
    sget-object v0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setDeleteMode(Z)V
    .locals 1
    .parameter "isDeleteMode"

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsDeleteMode:Z

    if-ne v0, p1, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsDeleteMode:Z

    .line 144
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsDeleteMode:Z

    if-eqz v0, :cond_0

    .line 145
    sget-object v0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public setListItemSelected(J)V
    .locals 0
    .parameter "threadId"

    .prologue
    .line 194
    iput-wide p1, p0, Lcom/android/mms/ui/ConversationListAdapter;->mSelectedThreadId:J

    .line 195
    return-void
.end method

.method public setOnContentChangedListener(Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    .line 126
    return-void
.end method

.method public toggleCheckBox(J)Z
    .locals 3
    .parameter "threadId"

    .prologue
    .line 170
    sget-object v1, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 172
    .local v0, checked:Z
    if-eqz v0, :cond_0

    .line 173
    sget-object v1, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 177
    :goto_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 175
    :cond_0
    sget-object v1, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 177
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
