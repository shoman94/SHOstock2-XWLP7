.class public final enum Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;
.super Ljava/lang/Enum;
.source "EmailContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FollowupFlagStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

.field public static final enum FOLLOWUP_STATUS_ACTIVE:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

.field public static final enum FOLLOWUP_STATUS_CLEARED:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

.field public static final enum FOLLOWUP_STATUS_COMPLETE:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2950
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    const-string v1, "FOLLOWUP_STATUS_CLEARED"

    invoke-direct {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_CLEARED:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    const-string v1, "FOLLOWUP_STATUS_COMPLETE"

    invoke-direct {v0, v1, v3}, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_COMPLETE:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    const-string v1, "FOLLOWUP_STATUS_ACTIVE"

    invoke-direct {v0, v1, v4}, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_ACTIVE:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    .line 2949
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_CLEARED:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_COMPLETE:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_ACTIVE:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->$VALUES:[Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

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
    .line 2949
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;
    .locals 1
    .parameter

    .prologue
    .line 2949
    const-class v0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    return-object v0
.end method

.method public static values()[Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;
    .locals 1

    .prologue
    .line 2949
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->$VALUES:[Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    invoke-virtual {v0}, [Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    return-object v0
.end method
