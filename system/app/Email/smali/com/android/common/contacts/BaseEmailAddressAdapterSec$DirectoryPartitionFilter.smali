.class final Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;
.super Landroid/widget/Filter;
.source "BaseEmailAddressAdapterSec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/contacts/BaseEmailAddressAdapterSec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DirectoryPartitionFilter"
.end annotation


# instance fields
.field private final mDirectoryId:J

.field private mLimit:I

.field private final mPartitionIndex:I

.field final synthetic this$0:Lcom/android/common/contacts/BaseEmailAddressAdapterSec;


# direct methods
.method public constructor <init>(Lcom/android/common/contacts/BaseEmailAddressAdapterSec;IJ)V
    .locals 0
    .parameter
    .parameter "partitionIndex"
    .parameter "directoryId"

    .prologue
    .line 367
    iput-object p1, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapterSec;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 368
    iput p2, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;->mPartitionIndex:I

    .line 369
    iput-wide p3, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;->mDirectoryId:J

    .line 370
    return-void
.end method


# virtual methods
.method public declared-synchronized getLimit()I
    .locals 1

    .prologue
    .line 377
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;->mLimit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 10
    .parameter "constraint"

    .prologue
    const/4 v5, 0x0

    .line 382
    new-instance v7, Landroid/widget/Filter$FilterResults;

    invoke-direct {v7}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 383
    .local v7, results:Landroid/widget/Filter$FilterResults;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 384
    const/4 v1, 0x0

    .line 385
    .local v1, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 386
    .local v6, cursor:Landroid/database/Cursor;
    sget-boolean v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->ExpandResultMaxAndShowMoreMode:Z

    if-eqz v0, :cond_1

    .line 388
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "directory"

    iget-wide v3, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;->mDirectoryId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "limit"

    invoke-virtual {p0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;->getLimit()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 395
    iget-object v0, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapterSec;

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$EmailQuery1;->PROJECTION:[Ljava/lang/String;

    const-string v3, "startindex"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;->getLimit()I

    move-result v9

    add-int/lit8 v9, v9, -0x14

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 414
    :goto_0
    iput-object v6, v7, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 416
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_0
    return-object v7

    .line 402
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_1
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "directory"

    iget-wide v3, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;->mDirectoryId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "limit"

    invoke-virtual {p0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;->getLimit()I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 409
    iget-object v0, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapterSec;

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$EmailQuery;->PROJECTION:[Ljava/lang/String;

    move-object v3, v5

    move-object v4, v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 3
    .parameter "constraint"
    .parameter "results"

    .prologue
    .line 421
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Landroid/database/Cursor;

    .line 422
    .local v0, cursor:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapterSec;

    iget v2, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;->mPartitionIndex:I

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->onPartitionLoadFinished(Ljava/lang/CharSequence;ILandroid/database/Cursor;)V

    .line 423
    iget-object v1, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapterSec;

    invoke-virtual {v1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getCount()I

    move-result v1

    iput v1, p2, Landroid/widget/Filter$FilterResults;->count:I

    .line 424
    return-void
.end method

.method public declared-synchronized setLimit(I)V
    .locals 1
    .parameter "limit"

    .prologue
    .line 373
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;->mLimit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    monitor-exit p0

    return-void

    .line 373
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
