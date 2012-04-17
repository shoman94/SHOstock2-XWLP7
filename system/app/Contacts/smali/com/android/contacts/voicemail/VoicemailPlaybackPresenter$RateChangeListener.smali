.class Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RateChangeListener;
.super Ljava/lang/Object;
.source "VoicemailPlaybackPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RateChangeListener"
.end annotation


# instance fields
.field private final mIncrease:Z

.field final synthetic this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;


# direct methods
.method public constructor <init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;Z)V
    .locals 0
    .parameter
    .parameter "increase"

    .prologue
    .line 419
    iput-object p1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RateChangeListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 420
    iput-boolean p2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RateChangeListener;->mIncrease:Z

    .line 421
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 426
    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RateChangeListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RateChangeListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    #getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mRateIndex:I
    invoke-static {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$1400(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)I

    move-result v2

    iget-boolean v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RateChangeListener;->mIncrease:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v2

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$1500()[F

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v2, v3}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    #setter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mRateIndex:I
    invoke-static {v1, v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$1402(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;I)I

    .line 430
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RateChangeListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    invoke-static {}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$1500()[F

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RateChangeListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    #getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mRateIndex:I
    invoke-static {v2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$1400(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)I

    move-result v2

    aget v1, v1, v2

    invoke-static {}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$1600()[I

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RateChangeListener;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    #getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mRateIndex:I
    invoke-static {v3}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$1400(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)I

    move-result v3

    aget v2, v2, v3

    #calls: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->changeRate(FI)V
    invoke-static {v0, v1, v2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$1700(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;FI)V

    .line 431
    return-void

    .line 426
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
