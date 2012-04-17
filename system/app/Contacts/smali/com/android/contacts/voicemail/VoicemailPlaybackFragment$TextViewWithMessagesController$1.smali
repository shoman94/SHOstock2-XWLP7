.class Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController$1;
.super Ljava/lang/Object;
.source "VoicemailPlaybackFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;->setTemporaryText(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;


# direct methods
.method constructor <init>(Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;)V
    .locals 0
    .parameter

    .prologue
    .line 453
    iput-object p1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController$1;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController$1;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;

    #getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;->access$300(Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 460
    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController$1;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;

    #getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;->access$400(Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;)Ljava/lang/Runnable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController$1;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;

    const/4 v2, 0x0

    #setter for: Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v2}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;->access$402(Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 462
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController$1;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;

    #getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;->mTemporaryTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;->access$500(Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 464
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController$1;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;

    #getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;->mPermanentTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;->access$600(Lcom/android/contacts/voicemail/VoicemailPlaybackFragment$TextViewWithMessagesController;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 467
    :cond_0
    monitor-exit v1

    .line 468
    return-void

    .line 467
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
