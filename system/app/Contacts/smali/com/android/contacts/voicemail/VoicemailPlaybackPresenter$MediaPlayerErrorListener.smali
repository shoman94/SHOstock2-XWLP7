.class Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$MediaPlayerErrorListener;
.super Ljava/lang/Object;
.source "VoicemailPlaybackPresenter.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaPlayerErrorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;


# direct methods
.method private constructor <init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)V
    .locals 0
    .parameter

    .prologue
    .line 378
    iput-object p1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$MediaPlayerErrorListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 378
    invoke-direct {p0, p1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$MediaPlayerErrorListener;-><init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$MediaPlayerErrorListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    #getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$100(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$MediaPlayerErrorListener$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$MediaPlayerErrorListener$1;-><init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$MediaPlayerErrorListener;)V

    invoke-interface {v0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 387
    const/4 v0, 0x1

    return v0
.end method
