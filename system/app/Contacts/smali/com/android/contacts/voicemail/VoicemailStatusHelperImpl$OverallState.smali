.class final enum Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;
.super Ljava/lang/Enum;
.source "VoicemailStatusHelperImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "OverallState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;

.field public static final enum INVALID:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;

.field public static final enum INVITE_FOR_CONFIGURATION:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;

.field public static final enum MESSAGE_WAITING:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;

.field public static final enum NOT_CONFIGURED:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;

.field public static final enum NO_CONNECTION:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;

.field public static final enum NO_DATA:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;

.field public static final enum NO_DETAILED_NOTIFICATION:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;

.field public static final enum NO_NOTIFICATIONS:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;

.field public static final enum OK:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;


# instance fields
.field private final mAction:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;

.field private final mCallDetailsMessageId:I

.field private final mCallLogMessageId:I

.field private final mPriority:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v2, 0x0

    const/4 v10, -0x1

    .line 84
    new-instance v0, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;

    const-string v1, "NO_CONNECTION"

    sget-object v4, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;->CALL_VOICEMAIL:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;

    const v5, 0x7f0a01cf

    const v6, 0x7f0a01d2

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;-><init>(Ljava/lang/String;IILcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;II)V

    sput-object v0, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;->NO_CONNECTION:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;

    .line 87
    new-instance v3, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;

    const-string v4, "NO_DATA"

    sget-object v7, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;->CALL_VOICEMAIL:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;

    const v8, 0x7f0a01cf

    const v9, 0x7f0a01d2

    move v5, v11

    move v6, v11

    invoke-direct/range {v3 .. v9}, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;-><init>(Ljava/lang/String;IILcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;II)V

    sput-object v3, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;->NO_DATA:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;

    .line 90
    new-instance v3, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;

    const-string v4, "MESSAGE_WAITING"

    sget-object v7, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;->CALL_VOICEMAIL:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;

    const v8, 0x7f0a01d0

    const v9, 0x7f0a01d2

    move v5, v12

    move v6, v12

    invoke-direct/range {v3 .. v9}, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;-><init>(Ljava/lang/String;IILcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;II)V

    sput-object v3, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;->MESSAGE_WAITING:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;

    .line 93
    new-instance v3, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;

    const-string v4, "NO_NOTIFICATIONS"

    sget-object v7, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;->CALL_VOICEMAIL:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;

    const v8, 0x7f0a01cf

    move v5, v13

    move v6, v13

    invoke-direct/range {v3 .. v8}, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;-><init>(Ljava/lang/String;IILcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;I)V

    sput-object v3, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;->NO_NOTIFICATIONS:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;

    .line 96
    new-instance v3, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;

    const-string v4, "INVITE_FOR_CONFIGURATION"

    const/4 v5, 0x4

    const/4 v6, 0x4

    sget-object v7, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;->CONFIGURE_VOICEMAIL:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;

    const v8, 0x7f0a01d1

    invoke-direct/range {v3 .. v8}, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;-><init>(Ljava/lang/String;IILcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;I)V

    sput-object v3, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;->INVITE_FOR_CONFIGURATION:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;

    .line 102
    new-instance v3, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;

    const-string v4, "NO_DETAILED_NOTIFICATION"

    const/4 v5, 0x5

    const/4 v6, 0x5

    sget-object v7, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;->NONE:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;

    move v8, v10

    invoke-direct/range {v3 .. v8}, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;-><init>(Ljava/lang/String;IILcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;I)V

    sput-object v3, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;->NO_DETAILED_NOTIFICATION:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;

    .line 104
    new-instance v3, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;

    const-string v4, "NOT_CONFIGURED"

    const/4 v5, 0x6

    const/4 v6, 0x6

    sget-object v7, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;->NONE:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;

    move v8, v10

    invoke-direct/range {v3 .. v8}, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;-><init>(Ljava/lang/String;IILcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;I)V

    sput-object v3, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;->NOT_CONFIGURED:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;

    .line 106
    new-instance v3, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;

    const-string v4, "OK"

    const/4 v5, 0x7

    const/4 v6, 0x7

    sget-object v7, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;->NONE:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;

    move v8, v10

    invoke-direct/range {v3 .. v8}, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;-><init>(Ljava/lang/String;IILcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;I)V

    sput-object v3, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;->OK:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;

    .line 108
    new-instance v3, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;

    const-string v4, "INVALID"

    const/16 v5, 0x8

    const/16 v6, 0x8

    sget-object v7, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;->NONE:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;

    move v8, v10

    invoke-direct/range {v3 .. v8}, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;-><init>(Ljava/lang/String;IILcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;I)V

    sput-object v3, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;->INVALID:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;

    .line 80
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;

    sget-object v1, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;->NO_CONNECTION:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;->NO_DATA:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;

    aput-object v1, v0, v11

    sget-object v1, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;->MESSAGE_WAITING:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;

    aput-object v1, v0, v12

    sget-object v1, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;->NO_NOTIFICATIONS:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;

    aput-object v1, v0, v13

    const/4 v1, 0x4

    sget-object v2, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;->INVITE_FOR_CONFIGURATION:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;->NO_DETAILED_NOTIFICATION:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;->NOT_CONFIGURED:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;->OK:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;->INVALID:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;->$VALUES:[Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;I)V
    .locals 7
    .parameter
    .parameter
    .parameter "priority"
    .parameter "action"
    .parameter "callLogMessageId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 116
    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;-><init>(Ljava/lang/String;IILcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;II)V

    .line 117
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "priority"
    .parameter "action"
    .parameter "callLogMessageId"
    .parameter "callDetailsMessageId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 121
    iput p3, p0, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;->mPriority:I

    .line 122
    iput-object p4, p0, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;->mAction:Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;

    .line 123
    iput p5, p0, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;->mCallLogMessageId:I

    .line 124
    iput p6, p0, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;->mCallDetailsMessageId:I

    .line 125
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;
    .locals 1
    .parameter

    .prologue
    .line 80
    const-class v0, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;

    return-object v0
.end method

.method public static values()[Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;->$VALUES:[Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;

    invoke-virtual {v0}, [Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;

    return-object v0
.end method
