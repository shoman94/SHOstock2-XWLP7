.class Lcom/android/contacts/list/ContactBrowseListFragment$ContactUriQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ContactBrowseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/ContactBrowseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactUriQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/ContactBrowseListFragment;


# direct methods
.method public constructor <init>(Lcom/android/contacts/list/ContactBrowseListFragment;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/contacts/list/ContactBrowseListFragment$ContactUriQueryHandler;->this$0:Lcom/android/contacts/list/ContactBrowseListFragment;

    .line 103
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 104
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 6
    .parameter "token"
    .parameter "cookie"
    .parameter "data"

    .prologue
    .line 113
    const-wide/16 v0, 0x0

    .line 114
    .local v0, contactId:J
    const/4 v2, 0x0

    .line 115
    .local v2, lookupKey:Ljava/lang/String;
    if-eqz p3, :cond_1

    .line 116
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 117
    const/4 v4, 0x0

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 118
    const/4 v4, 0x1

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 120
    :cond_0
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 123
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/list/ContactBrowseListFragment$ContactUriQueryHandler;->this$0:Lcom/android/contacts/list/ContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/android/contacts/list/ContactBrowseListFragment;->access$000(Lcom/android/contacts/list/ContactBrowseListFragment;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 135
    :goto_0
    return-void

    .line 128
    :cond_2
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-eqz v4, :cond_3

    if-eqz v2, :cond_3

    .line 129
    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 134
    .local v3, uri:Landroid/net/Uri;
    :goto_1
    iget-object v4, p0, Lcom/android/contacts/list/ContactBrowseListFragment$ContactUriQueryHandler;->this$0:Lcom/android/contacts/list/ContactBrowseListFragment;

    invoke-virtual {v4, v3}, Lcom/android/contacts/list/ContactBrowseListFragment;->onContactUriQueryFinished(Landroid/net/Uri;)V

    goto :goto_0

    .line 131
    .end local v3           #uri:Landroid/net/Uri;
    :cond_3
    const/4 v3, 0x0

    .restart local v3       #uri:Landroid/net/Uri;
    goto :goto_1
.end method

.method public runQuery()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 107
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment$ContactUriQueryHandler;->this$0:Lcom/android/contacts/list/ContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/contacts/list/ContactBrowseListFragment;->access$000(Lcom/android/contacts/list/ContactBrowseListFragment;)Landroid/net/Uri;

    move-result-object v2

    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment$ContactUriQueryHandler;->this$0:Lcom/android/contacts/list/ContactBrowseListFragment;

    #getter for: Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/contacts/list/ContactBrowseListFragment;->access$000(Lcom/android/contacts/list/ContactBrowseListFragment;)Landroid/net/Uri;

    move-result-object v3

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v4, v1

    const/4 v0, 0x1

    const-string v6, "lookup"

    aput-object v6, v4, v0

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/list/ContactBrowseListFragment$ContactUriQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method
