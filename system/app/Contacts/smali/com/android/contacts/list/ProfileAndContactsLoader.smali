.class public Lcom/android/contacts/list/ProfileAndContactsLoader;
.super Landroid/content/CursorLoader;
.source "ProfileAndContactsLoader.java"


# instance fields
.field private mLoadProfile:Z

.field private mProjection:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method private loadProfile()Landroid/database/MatrixCursor;
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 74
    invoke-virtual {p0}, Lcom/android/contacts/list/ProfileAndContactsLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/list/ProfileAndContactsLoader;->mProjection:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 77
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v8, Landroid/database/MatrixCursor;

    iget-object v0, p0, Lcom/android/contacts/list/ProfileAndContactsLoader;->mProjection:[Ljava/lang/String;

    invoke-direct {v8, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 78
    .local v8, matrix:Landroid/database/MatrixCursor;
    iget-object v0, p0, Lcom/android/contacts/list/ProfileAndContactsLoader;->mProjection:[Ljava/lang/String;

    array-length v0, v0

    new-array v9, v0, [Ljava/lang/Object;

    .line 79
    .local v9, row:[Ljava/lang/Object;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    array-length v0, v9

    if-ge v7, v0, :cond_0

    .line 81
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v7

    .line 80
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 83
    :cond_0
    invoke-virtual {v8, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 87
    .end local v7           #i:I
    .end local v8           #matrix:Landroid/database/MatrixCursor;
    .end local v9           #row:[Ljava/lang/Object;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v8       #matrix:Landroid/database/MatrixCursor;
    .restart local v9       #row:[Ljava/lang/Object;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-object v8
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 4

    .prologue
    .line 55
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 56
    .local v1, cursors:Ljava/util/List;,"Ljava/util/List<Landroid/database/Cursor;>;"
    iget-boolean v2, p0, Lcom/android/contacts/list/ProfileAndContactsLoader;->mLoadProfile:Z

    if-eqz v2, :cond_0

    .line 57
    invoke-direct {p0}, Lcom/android/contacts/list/ProfileAndContactsLoader;->loadProfile()Landroid/database/MatrixCursor;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_0
    invoke-super {p0}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    .line 60
    .local v0, contactsCursor:Landroid/database/Cursor;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    new-instance v3, Lcom/android/contacts/list/ProfileAndContactsLoader$1;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/database/Cursor;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/database/Cursor;

    invoke-direct {v3, p0, v2, v0}, Lcom/android/contacts/list/ProfileAndContactsLoader$1;-><init>(Lcom/android/contacts/list/ProfileAndContactsLoader;[Landroid/database/Cursor;Landroid/database/Cursor;)V

    return-object v3
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/android/contacts/list/ProfileAndContactsLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public setLoadProfile(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/contacts/list/ProfileAndContactsLoader;->mLoadProfile:Z

    .line 45
    return-void
.end method

.method public setProjection([Ljava/lang/String;)V
    .locals 0
    .parameter "projection"

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 49
    iput-object p1, p0, Lcom/android/contacts/list/ProfileAndContactsLoader;->mProjection:[Ljava/lang/String;

    .line 50
    return-void
.end method
