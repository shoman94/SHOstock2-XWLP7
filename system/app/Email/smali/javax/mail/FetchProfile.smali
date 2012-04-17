.class public Ljavax/mail/FetchProfile;
.super Ljava/lang/Object;
.source "FetchProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/FetchProfile$Item;
    }
.end annotation


# instance fields
.field private headers:Ljava/util/ArrayList;

.field private items:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object v0, p0, Ljavax/mail/FetchProfile;->items:Ljava/util/ArrayList;

    .line 78
    iput-object v0, p0, Ljavax/mail/FetchProfile;->headers:Ljava/util/ArrayList;

    .line 85
    return-void
.end method


# virtual methods
.method public add(Ljavax/mail/FetchProfile$Item;)V
    .locals 2
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Ljavax/mail/FetchProfile;->items:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljavax/mail/FetchProfile;->items:Ljava/util/ArrayList;

    .line 96
    :cond_0
    iget-object v1, p0, Ljavax/mail/FetchProfile;->items:Ljava/util/ArrayList;

    monitor-enter v1

    .line 98
    :try_start_0
    iget-object v0, p0, Ljavax/mail/FetchProfile;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    monitor-exit v1

    .line 100
    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public contains(Ljavax/mail/FetchProfile$Item;)Z
    .locals 1
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Ljavax/mail/FetchProfile;->items:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/mail/FetchProfile;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeaderNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 155
    iget-object v0, p0, Ljavax/mail/FetchProfile;->headers:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 157
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 163
    :goto_0
    return-object v0

    .line 159
    :cond_0
    iget-object v1, p0, Ljavax/mail/FetchProfile;->headers:Ljava/util/ArrayList;

    monitor-enter v1

    .line 161
    :try_start_0
    iget-object v0, p0, Ljavax/mail/FetchProfile;->headers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 162
    iget-object v2, p0, Ljavax/mail/FetchProfile;->headers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 163
    monitor-exit v1

    goto :goto_0

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getItems()[Ljavax/mail/FetchProfile$Item;
    .locals 3

    .prologue
    .line 138
    iget-object v0, p0, Ljavax/mail/FetchProfile;->items:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 140
    const/4 v0, 0x0

    new-array v0, v0, [Ljavax/mail/FetchProfile$Item;

    .line 146
    :goto_0
    return-object v0

    .line 142
    :cond_0
    iget-object v1, p0, Ljavax/mail/FetchProfile;->items:Ljava/util/ArrayList;

    monitor-enter v1

    .line 144
    :try_start_0
    iget-object v0, p0, Ljavax/mail/FetchProfile;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljavax/mail/FetchProfile$Item;

    .line 145
    iget-object v2, p0, Ljavax/mail/FetchProfile;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 146
    monitor-exit v1

    goto :goto_0

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
