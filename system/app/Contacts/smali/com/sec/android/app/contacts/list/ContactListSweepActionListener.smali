.class public Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;
.super Ljava/lang/Object;
.source "ContactListSweepActionListener.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/contacts/list/DefaultContactListAdapter;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/contacts/list/DefaultContactListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

.field private mPhoneNumber:Ljava/lang/String;

.field private mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView;Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;Lcom/android/contacts/list/DefaultContactListAdapter;)V
    .locals 0
    .parameter "context"
    .parameter "listView"
    .parameter "sweepActionBarCallBack"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sec/android/touchwiz/widget/TwSweepActionListView;",
            "Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, this:Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;,"Lcom/sec/android/app/contacts/list/ContactListSweepActionListener<TT;>;"
    .local p4, adapter:Lcom/android/contacts/list/DefaultContactListAdapter;,"TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    .line 51
    iput-object p3, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    .line 52
    iput-object p4, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mAdapter:Lcom/android/contacts/list/DefaultContactListAdapter;

    .line 53
    return-void
.end method


# virtual methods
.method public onSweepActionCanceled(I)V
    .locals 3
    .parameter "itemIndex"

    .prologue
    .line 57
    .local p0, this:Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;,"Lcom/sec/android/app/contacts/list/ContactListSweepActionListener<TT;>;"
    const-string v0, "ContactListSweepActionListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSweepActionCanceled() / itemIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void
.end method

.method public onSweepActionFired(II)V
    .locals 6
    .parameter "itemIndex"
    .parameter "flickDirection"

    .prologue
    .local p0, this:Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;,"Lcom/sec/android/app/contacts/list/ContactListSweepActionListener<TT;>;"
    const/4 v5, 0x0

    .line 62
    const-string v2, "ContactListSweepActionListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSweepActionFired() / itemIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", flickDirection = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->getHasPhoneNumber()Z

    move-result v2

    if-nez v2, :cond_1

    .line 68
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isActionBarOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    if-nez p2, :cond_2

    .line 77
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    iget-object v4, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 79
    .local v0, callIntent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 80
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 83
    .end local v0           #callIntent:Landroid/content/Intent;
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    const-string v3, "smsto"

    iget-object v4, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 85
    .local v1, messageIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onSweepActionStarted(I)V
    .locals 13
    .parameter "itemIndex"

    .prologue
    .local p0, this:Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;,"Lcom/sec/android/app/contacts/list/ContactListSweepActionListener<TT;>;"
    const/4 v12, 0x2

    const/4 v11, 0x3

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x1

    .line 91
    const-string v0, "ContactListSweepActionListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSweepActionStarted() / itemIndex = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iput-object v3, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mAdapter:Lcom/android/contacts/list/DefaultContactListAdapter;

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/DefaultContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v6

    .line 97
    .local v6, baseUri:Landroid/net/Uri;
    const-string v0, "entities"

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 98
    .local v1, uri:Landroid/net/Uri;
    const-string v0, "ContactListSweepActionListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSweepActionStarted() / uri = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v10

    const-string v4, "data1"

    aput-object v4, v2, v9

    const-string v4, "is_super_primary"

    aput-object v4, v2, v12

    const-string v4, "mimetype"

    aput-object v4, v2, v11

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 113
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_6

    .line 115
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 122
    .local v8, isSuperPrimary:I
    if-eqz v8, :cond_0

    .line 123
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    invoke-virtual {v0, v9}, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->setHasPhoneNumber(Z)V

    .line 132
    .end local v8           #isSuperPrimary:I
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 133
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 135
    :cond_2
    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 136
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    .line 142
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    invoke-virtual {v0, v9}, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->setHasPhoneNumber(Z)V

    .line 148
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 152
    :goto_2
    return-void

    .line 139
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 145
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    invoke-virtual {v0, v10}, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->setHasPhoneNumber(Z)V

    goto :goto_1

    .line 150
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    invoke-virtual {v0, v10}, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->setHasPhoneNumber(Z)V

    goto :goto_2
.end method
