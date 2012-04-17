.class Lcom/android/email/provider/ContentCacheLru$1;
.super Landroid/util/LruCache;
.source "ContentCacheLru.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/provider/ContentCacheLru;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/provider/ContentCacheLru;


# direct methods
.method constructor <init>(Lcom/android/email/provider/ContentCacheLru;I)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 408
    iput-object p1, p0, Lcom/android/email/provider/ContentCacheLru$1;->this$0:Lcom/android/email/provider/ContentCacheLru;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 408
    check-cast p2, Ljava/lang/String;

    .end local p2
    check-cast p3, Landroid/database/Cursor;

    .end local p3
    check-cast p4, Landroid/database/Cursor;

    .end local p4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/email/provider/ContentCacheLru$1;->entryRemoved(ZLjava/lang/String;Landroid/database/Cursor;Landroid/database/Cursor;)V

    return-void
.end method

.method protected entryRemoved(ZLjava/lang/String;Landroid/database/Cursor;Landroid/database/Cursor;)V
    .locals 1
    .parameter "evicted"
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 413
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/email/provider/ContentCacheLru;->sActiveCursors:Lcom/android/email/provider/ContentCacheLru$CounterMap;

    invoke-virtual {v0, p3}, Lcom/android/email/provider/ContentCacheLru$CounterMap;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 414
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 416
    :cond_0
    return-void
.end method
