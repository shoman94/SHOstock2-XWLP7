.class public Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl;
.super Ljava/lang/Object;
.source "VoicemailStatusHelperImpl.java"

# interfaces
.implements Lcom/android/contacts/voicemail/VoicemailStatusHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;,
        Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$OverallState;,
        Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl$Action;
    }
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl;->PROJECTION:[Ljava/lang/String;

    .line 51
    sget-object v0, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl;->PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "source_package"

    aput-object v2, v0, v1

    .line 52
    sget-object v0, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl;->PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "configuration_state"

    aput-object v2, v0, v1

    .line 53
    sget-object v0, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl;->PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "data_channel_state"

    aput-object v2, v0, v1

    .line 54
    sget-object v0, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl;->PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "notification_channel_state"

    aput-object v2, v0, v1

    .line 55
    sget-object v0, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl;->PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "settings_uri"

    aput-object v2, v0, v1

    .line 56
    sget-object v0, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl;->PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, "voicemail_access_uri"

    aput-object v2, v0, v1

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 145
    return-void
.end method
