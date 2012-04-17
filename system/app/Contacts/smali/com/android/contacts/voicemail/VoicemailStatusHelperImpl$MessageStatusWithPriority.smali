.class Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;
.super Ljava/lang/Object;
.source "VoicemailStatusHelperImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageStatusWithPriority"
.end annotation


# instance fields
.field private final mPriority:I


# direct methods
.method static synthetic access$000(Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget v0, p0, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;->mPriority:I

    return v0
.end method
