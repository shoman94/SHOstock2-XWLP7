.class public Lcom/android/contacts/list/ProviderStatusLoader;
.super Landroid/database/ContentObserver;
.source "ProviderStatusLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/ProviderStatusLoader$ProviderStatusListener;
    }
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/contacts/list/ProviderStatusLoader$ProviderStatusListener;

.field private mProviderData:Ljava/lang/String;

.field private mProviderStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/list/ProviderStatusLoader;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/list/ProviderStatusLoader;->mProviderStatus:I

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/list/ProviderStatusLoader;->mHandler:Landroid/os/Handler;

    .line 53
    iput-object p1, p0, Lcom/android/contacts/list/ProviderStatusLoader;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/list/ProviderStatusLoader;)Lcom/android/contacts/list/ProviderStatusLoader$ProviderStatusListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/contacts/list/ProviderStatusLoader;->mListener:Lcom/android/contacts/list/ProviderStatusLoader$ProviderStatusListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/contacts/list/ProviderStatusLoader;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Lcom/android/contacts/list/ProviderStatusLoader;->mProviderStatus:I

    return p1
.end method


# virtual methods
.method public getProviderStatus()I
    .locals 2

    .prologue
    .line 57
    iget v0, p0, Lcom/android/contacts/list/ProviderStatusLoader;->mProviderStatus:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/android/contacts/list/ProviderStatusLoader;->loadProviderStatus()V

    .line 61
    :cond_0
    iget v0, p0, Lcom/android/contacts/list/ProviderStatusLoader;->mProviderStatus:I

    return v0
.end method

.method public getProviderStatusData()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    iget v0, p0, Lcom/android/contacts/list/ProviderStatusLoader;->mProviderStatus:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/android/contacts/list/ProviderStatusLoader;->loadProviderStatus()V

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ProviderStatusLoader;->mProviderData:Ljava/lang/String;

    return-object v0
.end method

.method protected loadProviderStatus()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 75
    iput v0, p0, Lcom/android/contacts/list/ProviderStatusLoader;->mProviderStatus:I

    .line 79
    iget-object v0, p0, Lcom/android/contacts/list/ProviderStatusLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$ProviderStatus;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/contacts/list/ProviderStatusLoader;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 81
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 83
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ProviderStatusLoader;->mProviderStatus:I

    .line 85
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ProviderStatusLoader;->mProviderData:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 91
    :cond_1
    return-void

    .line 88
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/contacts/list/ProviderStatusLoader;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/contacts/list/ProviderStatusLoader$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/list/ProviderStatusLoader$1;-><init>(Lcom/android/contacts/list/ProviderStatusLoader;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 117
    return-void
.end method

.method public retryUpgrade()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 123
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 124
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "status"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 125
    iget-object v1, p0, Lcom/android/contacts/list/ProviderStatusLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$ProviderStatus;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 126
    return-void
.end method

.method public setProviderStatusListener(Lcom/android/contacts/list/ProviderStatusLoader$ProviderStatusListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/contacts/list/ProviderStatusLoader;->mListener:Lcom/android/contacts/list/ProviderStatusLoader$ProviderStatusListener;

    .line 96
    iget-object v1, p0, Lcom/android/contacts/list/ProviderStatusLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 97
    .local v0, resolver:Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    .line 98
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/contacts/list/ProviderStatusLoader;->mProviderStatus:I

    .line 99
    sget-object v1, Landroid/provider/ContactsContract$ProviderStatus;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method
