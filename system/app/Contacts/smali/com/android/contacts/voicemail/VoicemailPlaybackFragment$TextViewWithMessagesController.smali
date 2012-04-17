.class final Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;
.super Ljava/lang/Object;
.source "VoicemailPlaybackFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TextViewWithMessagesController"
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final mPermanentTextView:Landroid/widget/TextView;

.field private mRunnable:Ljava/lang/Runnable;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
    .end annotation
.end field

.field private final mTemporaryTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 1
    .parameter "permanentTextView"
    .parameter "temporaryTextView"

    .prologue
    .line 439
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 433
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;->mLock:Ljava/lang/Object;

    .line 440
    iput-object p1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;->mPermanentTextView:Landroid/widget/TextView;

    .line 441
    iput-object p2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;->mTemporaryTextView:Landroid/widget/TextView;

    .line 442
    return-void
.end method

.method static synthetic access$300(Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 428
    iput-object p1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;->mRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;->mTemporaryTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;->mPermanentTextView:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public setPermanentText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;->mPermanentTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    return-void
.end method

.method public setTemporaryText(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V
    .locals 5
    .parameter "text"
    .parameter "duration"
    .parameter "units"

    .prologue
    .line 449
    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 450
    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;->mTemporaryTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;->mTemporaryTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 452
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;->mPermanentTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 453
    new-instance v0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController$1;-><init>(Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;)V

    iput-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;->mRunnable:Ljava/lang/Runnable;

    .line 470
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;->mTemporaryTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 471
    monitor-exit v1

    .line 472
    return-void

    .line 471
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
