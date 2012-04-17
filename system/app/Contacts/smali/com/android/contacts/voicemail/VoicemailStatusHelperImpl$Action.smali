.class public final enum Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;
.super Ljava/lang/Enum;
.source "VoicemailStatusHelperImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;

.field public static final enum CALL_VOICEMAIL:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;

.field public static final enum CONFIGURE_VOICEMAIL:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;

.field public static final enum NONE:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;


# instance fields
.field private final mMessageId:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 61
    new-instance v0, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;

    const-string v1, "NONE"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;->NONE:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;

    .line 62
    new-instance v0, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;

    const-string v1, "CALL_VOICEMAIL"

    const v2, 0x7f0a01d4

    invoke-direct {v0, v1, v4, v2}, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;->CALL_VOICEMAIL:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;

    .line 63
    new-instance v0, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;

    const-string v1, "CONFIGURE_VOICEMAIL"

    const v2, 0x7f0a01d3

    invoke-direct {v0, v1, v5, v2}, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;->CONFIGURE_VOICEMAIL:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;

    .line 60
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;

    sget-object v1, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;->NONE:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;->CALL_VOICEMAIL:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;->CONFIGURE_VOICEMAIL:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;->$VALUES:[Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "messageId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    iput p3, p0, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;->mMessageId:I

    .line 68
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;
    .locals 1
    .parameter

    .prologue
    .line 60
    const-class v0, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;

    return-object v0
.end method

.method public static values()[Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;->$VALUES:[Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;

    invoke-virtual {v0}, [Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;

    return-object v0
.end method
