.class public Lcom/android/contacts/test/InjectedServices;
.super Ljava/lang/Object;
.source "InjectedServices.java"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSystemServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/contacts/test/InjectedServices;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/contacts/test/InjectedServices;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/contacts/test/InjectedServices;->mSystemServices:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/contacts/test/InjectedServices;->mSystemServices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContentResolver(Landroid/content/ContentResolver;)V
    .locals 0
    .parameter "contentResolver"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/contacts/test/InjectedServices;->mContentResolver:Landroid/content/ContentResolver;

    .line 41
    return-void
.end method

.method public setSharedPreferences(Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter "sharedPreferences"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/contacts/test/InjectedServices;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 50
    return-void
.end method

.method public setSystemService(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "name"
    .parameter "service"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/contacts/test/InjectedServices;->mSystemServices:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 59
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/test/InjectedServices;->mSystemServices:Ljava/util/HashMap;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/test/InjectedServices;->mSystemServices:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method
