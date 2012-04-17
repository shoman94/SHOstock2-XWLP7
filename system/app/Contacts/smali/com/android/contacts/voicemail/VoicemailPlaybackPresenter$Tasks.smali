.class public final enum Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$Tasks;
.super Ljava/lang/Enum;
.source "VoicemailPlaybackPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tasks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$Tasks;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$Tasks;

.field public static final enum CHECK_CONTENT_AFTER_CHANGE:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$Tasks;

.field public static final enum CHECK_FOR_CONTENT:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$Tasks;

.field public static final enum PREPARE_MEDIA_PLAYER:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$Tasks;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 101
    new-instance v0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$Tasks;

    const-string v1, "CHECK_FOR_CONTENT"

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$Tasks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$Tasks;->CHECK_FOR_CONTENT:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$Tasks;

    .line 102
    new-instance v0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$Tasks;

    const-string v1, "CHECK_CONTENT_AFTER_CHANGE"

    invoke-direct {v0, v1, v3}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$Tasks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$Tasks;->CHECK_CONTENT_AFTER_CHANGE:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$Tasks;

    .line 103
    new-instance v0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$Tasks;

    const-string v1, "PREPARE_MEDIA_PLAYER"

    invoke-direct {v0, v1, v4}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$Tasks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$Tasks;->PREPARE_MEDIA_PLAYER:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$Tasks;

    .line 100
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$Tasks;

    sget-object v1, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$Tasks;->CHECK_FOR_CONTENT:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$Tasks;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$Tasks;->CHECK_CONTENT_AFTER_CHANGE:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$Tasks;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$Tasks;->PREPARE_MEDIA_PLAYER:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$Tasks;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$Tasks;->$VALUES:[Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$Tasks;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$Tasks;
    .locals 1
    .parameter

    .prologue
    .line 100
    const-class v0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$Tasks;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$Tasks;

    return-object v0
.end method

.method public static values()[Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$Tasks;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$Tasks;->$VALUES:[Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$Tasks;

    invoke-virtual {v0}, [Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$Tasks;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$Tasks;

    return-object v0
.end method
