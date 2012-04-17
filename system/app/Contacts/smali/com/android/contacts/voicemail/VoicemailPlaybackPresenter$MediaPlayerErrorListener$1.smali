.class Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$MediaPlayerErrorListener$1;
.super Ljava/lang/Object;
.source "VoicemailPlaybackPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$MediaPlayerErrorListener;->onError(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$MediaPlayerErrorListener;


# direct methods
.method constructor <init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$MediaPlayerErrorListener;)V
    .locals 0
    .parameter

    .prologue
    .line 381
    iput-object p1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$MediaPlayerErrorListener$1;->this$1:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$MediaPlayerErrorListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$MediaPlayerErrorListener$1;->this$1:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$MediaPlayerErrorListener;

    iget-object v0, v0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$MediaPlayerErrorListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "MediaPlayer error listener invoked"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #calls: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->handleError(Ljava/lang/Exception;)V
    invoke-static {v0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$1300(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;Ljava/lang/Exception;)V

    .line 385
    return-void
.end method
