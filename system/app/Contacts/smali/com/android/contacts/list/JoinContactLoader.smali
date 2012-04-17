.class public Lcom/android/contacts/list/JoinContactLoader;
.super Landroid/content/CursorLoader;
.source "JoinContactLoader.java"


# instance fields
.field private mLoadSuggestionsAndAllContacts:Z

.field private mProjection:[Ljava/lang/String;

.field private mSuggestionUri:Landroid/net/Uri;

.field private mSuggestionsCursor:Landroid/database/MatrixCursor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 36
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method private loadSuggestions()Landroid/database/MatrixCursor;
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 76
    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/JoinContactLoader;->mSuggestionUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/list/JoinContactLoader;->mProjection:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 79
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v8, Landroid/database/MatrixCursor;

    iget-object v0, p0, Lcom/android/contacts/list/JoinContactLoader;->mProjection:[Ljava/lang/String;

    invoke-direct {v8, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 80
    .local v8, matrix:Landroid/database/MatrixCursor;
    iget-object v0, p0, Lcom/android/contacts/list/JoinContactLoader;->mProjection:[Ljava/lang/String;

    array-length v0, v0

    new-array v9, v0, [Ljava/lang/Object;

    .line 81
    .local v9, row:[Ljava/lang/Object;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    array-length v0, v9

    if-ge v7, v0, :cond_0

    .line 83
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v7

    .line 82
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 85
    :cond_0
    invoke-virtual {v8, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 89
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
.method public getSuggestionsCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/contacts/list/JoinContactLoader;->mSuggestionsCursor:Landroid/database/MatrixCursor;

    return-object v0
.end method

.method public loadInBackground()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/contacts/list/JoinContactLoader;->loadSuggestions()Landroid/database/MatrixCursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/JoinContactLoader;->mSuggestionsCursor:Landroid/database/MatrixCursor;

    .line 62
    iget-boolean v0, p0, Lcom/android/contacts/list/JoinContactLoader;->mLoadSuggestionsAndAllContacts:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/JoinContactLoader;->mSuggestionsCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v0}, Landroid/database/MatrixCursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const-string v0, "0"

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/JoinContactLoader;->setSelection(Ljava/lang/String;)V

    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/JoinContactLoader;->setSelectionArgs([Ljava/lang/String;)V

    .line 69
    :cond_0
    invoke-super {p0}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public setLoadSuggestionsAndAllContacts(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/contacts/list/JoinContactLoader;->mLoadSuggestionsAndAllContacts:Z

    .line 41
    return-void
.end method

.method public setProjection([Ljava/lang/String;)V
    .locals 0
    .parameter "projection"

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lcom/android/contacts/list/JoinContactLoader;->mProjection:[Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setSuggestionUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/contacts/list/JoinContactLoader;->mSuggestionUri:Landroid/net/Uri;

    .line 45
    return-void
.end method
