.class Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryEntitiesTask;
.super Landroid/os/AsyncTask;
.source "ConfirmAddDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ConfirmAddDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryEntitiesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Intent;",
        "Ljava/lang/Void;",
        "Lcom/android/contacts/model/EntityDeltaList;",
        ">;"
    }
.end annotation


# instance fields
.field private activityTarget:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

.field private mSelection:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 349
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 350
    iput-object p1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryEntitiesTask;->activityTarget:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    .line 351
    return-void
.end method

.method private static queryForContactId(Landroid/content/ContentResolver;J)J
    .locals 9
    .parameter "resolver"
    .parameter "rawContactId"

    .prologue
    .line 393
    const/4 v8, 0x0

    .line 394
    .local v8, contactIdCursor:Landroid/database/Cursor;
    const-wide/16 v6, -0x1

    .line 396
    .local v6, contactId:J
    :try_start_0
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "contact_id"

    aput-object v3, v2, v0

    const-string v3, "_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 400
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    .line 404
    :cond_0
    if-eqz v8, :cond_1

    .line 405
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 408
    :cond_1
    return-wide v6

    .line 404
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 405
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/content/Intent;)Lcom/android/contacts/model/EntityDeltaList;
    .locals 15
    .parameter "params"

    .prologue
    .line 356
    const/4 v10, 0x0

    aget-object v4, p1, v10

    .line 358
    .local v4, intent:Landroid/content/Intent;
    iget-object v10, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryEntitiesTask;->activityTarget:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    invoke-virtual {v10}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 361
    .local v8, resolver:Landroid/content/ContentResolver;
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 362
    .local v3, data:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 363
    .local v0, authority:Ljava/lang/String;
    invoke-virtual {v4, v8}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    .line 365
    .local v5, mimeType:Ljava/lang/String;
    const-string v10, "0"

    iput-object v10, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryEntitiesTask;->mSelection:Ljava/lang/String;

    .line 366
    const/4 v9, 0x0

    .line 367
    .local v9, selectionArg:Ljava/lang/String;
    const-string v10, "com.android.contacts"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 368
    const-string v10, "vnd.android.cursor.item/contact"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 370
    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 371
    .local v1, contactId:J
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    .line 372
    const-string v10, "contact_id=?"

    iput-object v10, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryEntitiesTask;->mSelection:Ljava/lang/String;

    .line 387
    .end local v1           #contactId:J
    :cond_0
    :goto_0
    sget-object v10, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    iget-object v11, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryEntitiesTask;->activityTarget:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    invoke-virtual {v11}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    iget-object v12, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryEntitiesTask;->mSelection:Ljava/lang/String;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v9, v13, v14

    const/4 v14, 0x0

    invoke-static {v10, v11, v12, v13, v14}, Lcom/android/contacts/model/EntityDeltaList;->fromQuery(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/EntityDeltaList;

    move-result-object v10

    return-object v10

    .line 373
    :cond_1
    const-string v10, "vnd.android.cursor.item/raw_contact"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 374
    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    .line 375
    .local v6, rawContactId:J
    invoke-static {v8, v6, v7}, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryEntitiesTask;->queryForContactId(Landroid/content/ContentResolver;J)J

    move-result-wide v1

    .line 376
    .restart local v1       #contactId:J
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    .line 377
    const-string v10, "contact_id=?"

    iput-object v10, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryEntitiesTask;->mSelection:Ljava/lang/String;

    goto :goto_0

    .line 379
    .end local v1           #contactId:J
    .end local v6           #rawContactId:J
    :cond_2
    const-string v10, "contacts"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 380
    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    .line 381
    .restart local v6       #rawContactId:J
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    .line 382
    const-string v10, "raw_contact_id=?"

    iput-object v10, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryEntitiesTask;->mSelection:Ljava/lang/String;

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 344
    check-cast p1, [Landroid/content/Intent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryEntitiesTask;->doInBackground([Landroid/content/Intent;)Lcom/android/contacts/model/EntityDeltaList;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/contacts/model/EntityDeltaList;)V
    .locals 1
    .parameter "entityList"

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryEntitiesTask;->activityTarget:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    :goto_0
    return-void

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryEntitiesTask;->activityTarget:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    invoke-virtual {v0, p1}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->setEntityDeltaList(Lcom/android/contacts/model/EntityDeltaList;)V

    .line 417
    iget-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryEntitiesTask;->activityTarget:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->findEditableRawContact()V

    .line 418
    iget-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryEntitiesTask;->activityTarget:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->parseExtras()V

    .line 419
    iget-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryEntitiesTask;->activityTarget:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    #calls: Lcom/android/contacts/activities/ConfirmAddDetailActivity;->bindEditor()V
    invoke-static {v0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$300(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 344
    check-cast p1, Lcom/android/contacts/model/EntityDeltaList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryEntitiesTask;->onPostExecute(Lcom/android/contacts/model/EntityDeltaList;)V

    return-void
.end method
