.class public abstract Lcom/android/emailcommon/utility/Utility$ForEachAccount;
.super Landroid/os/AsyncTask;
.source "Utility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/utility/Utility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ForEachAccount"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 1034
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1035
    iput-object p1, p0, Lcom/android/emailcommon/utility/Utility$ForEachAccount;->mContext:Landroid/content/Context;

    .line 1036
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1031
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/emailcommon/utility/Utility$ForEachAccount;->doInBackground([Ljava/lang/Void;)[Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected final varargs doInBackground([Ljava/lang/Void;)[Ljava/lang/Long;
    .locals 8
    .parameter "params"

    .prologue
    const/4 v3, 0x0

    .line 1040
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1041
    .local v7, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/android/emailcommon/utility/Utility$ForEachAccount;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->ID_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1044
    .local v6, c:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1045
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1048
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1050
    sget-object v0, Lcom/android/emailcommon/utility/Utility;->EMPTY_LONGS:[Ljava/lang/Long;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    return-object v0
.end method

.method protected onFinished()V
    .locals 0

    .prologue
    .line 1072
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1031
    check-cast p1, [Ljava/lang/Long;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/emailcommon/utility/Utility$ForEachAccount;->onPostExecute([Ljava/lang/Long;)V

    return-void
.end method

.method protected final onPostExecute([Ljava/lang/Long;)V
    .locals 6
    .parameter "ids"

    .prologue
    .line 1055
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/emailcommon/utility/Utility$ForEachAccount;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1056
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/Long;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1057
    .local v2, id:J
    invoke-virtual {p0, v2, v3}, Lcom/android/emailcommon/utility/Utility$ForEachAccount;->performAction(J)V

    .line 1056
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1060
    .end local v0           #arr$:[Ljava/lang/Long;
    .end local v1           #i$:I
    .end local v2           #id:J
    .end local v4           #len$:I
    :cond_0
    invoke-virtual {p0}, Lcom/android/emailcommon/utility/Utility$ForEachAccount;->onFinished()V

    .line 1061
    return-void
.end method

.method protected abstract performAction(J)V
.end method
