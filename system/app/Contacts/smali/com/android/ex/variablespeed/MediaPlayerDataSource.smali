.class Lcom/android/ex/variablespeed/MediaPlayerDataSource;
.super Ljava/lang/Object;
.source "MediaPlayerDataSource.java"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPath:Ljava/lang/String;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .parameter "context"
    .parameter "intentUri"

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/ex/variablespeed/MediaPlayerDataSource;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/android/ex/variablespeed/MediaPlayerDataSource;->mUri:Landroid/net/Uri;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/variablespeed/MediaPlayerDataSource;->mPath:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public playNative()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/ex/variablespeed/MediaPlayerDataSource;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/ex/variablespeed/MediaPlayerDataSource;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/ex/variablespeed/MediaPlayerDataSource;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/android/ex/variablespeed/VariableSpeedNative;->playFromContext(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/android/ex/variablespeed/MediaPlayerDataSource;->mPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/ex/variablespeed/VariableSpeedNative;->playUri(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAsSourceFor(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mediaPlayer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/ex/variablespeed/MediaPlayerDataSource;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/ex/variablespeed/MediaPlayerDataSource;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/ex/variablespeed/MediaPlayerDataSource;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/android/ex/variablespeed/MediaPlayerDataSource;->mPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_0
.end method
