.class final Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$ActivityReference;
.super Ljava/lang/Object;
.source "VoicemailPlaybackFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActivityReference"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;


# direct methods
.method private constructor <init>(Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$ActivityReference;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$ActivityReference;-><init>(Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;)V

    return-void
.end method


# virtual methods
.method public final get()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$ActivityReference;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;

    invoke-virtual {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method
