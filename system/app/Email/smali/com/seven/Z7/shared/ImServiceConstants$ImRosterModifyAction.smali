.class public final enum Lcom/seven/Z7/shared/ImServiceConstants$ImRosterModifyAction;
.super Ljava/lang/Enum;
.source "ImServiceConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seven/Z7/shared/ImServiceConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImRosterModifyAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/seven/Z7/shared/ImServiceConstants$ImRosterModifyAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/seven/Z7/shared/ImServiceConstants$ImRosterModifyAction;

.field public static final enum IM_ROSTER_APPROVE_SUBSCRIPTION:Lcom/seven/Z7/shared/ImServiceConstants$ImRosterModifyAction;

.field public static final enum IM_ROSTER_BLOCK:Lcom/seven/Z7/shared/ImServiceConstants$ImRosterModifyAction;

.field public static final enum IM_ROSTER_DECLINE_SUBSCRIPTION:Lcom/seven/Z7/shared/ImServiceConstants$ImRosterModifyAction;

.field public static final enum IM_ROSTER_END_CONVERSATION:Lcom/seven/Z7/shared/ImServiceConstants$ImRosterModifyAction;

.field public static final enum IM_ROSTER_REMOVE_CONTACT:Lcom/seven/Z7/shared/ImServiceConstants$ImRosterModifyAction;

.field public static final enum IM_ROSTER_REQUEST_SUBSCRIPTION:Lcom/seven/Z7/shared/ImServiceConstants$ImRosterModifyAction;

.field public static final enum IM_ROSTER_UNBLOCK:Lcom/seven/Z7/shared/ImServiceConstants$ImRosterModifyAction;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$ImRosterModifyAction;

    const-string v1, "IM_ROSTER_APPROVE_SUBSCRIPTION"

    invoke-direct {v0, v1, v3}, Lcom/seven/Z7/shared/ImServiceConstants$ImRosterModifyAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImRosterModifyAction;->IM_ROSTER_APPROVE_SUBSCRIPTION:Lcom/seven/Z7/shared/ImServiceConstants$ImRosterModifyAction;

    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$ImRosterModifyAction;

    const-string v1, "IM_ROSTER_DECLINE_SUBSCRIPTION"

    invoke-direct {v0, v1, v4}, Lcom/seven/Z7/shared/ImServiceConstants$ImRosterModifyAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImRosterModifyAction;->IM_ROSTER_DECLINE_SUBSCRIPTION:Lcom/seven/Z7/shared/ImServiceConstants$ImRosterModifyAction;

    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$ImRosterModifyAction;

    const-string v1, "IM_ROSTER_REQUEST_SUBSCRIPTION"

    invoke-direct {v0, v1, v5}, Lcom/seven/Z7/shared/ImServiceConstants$ImRosterModifyAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImRosterModifyAction;->IM_ROSTER_REQUEST_SUBSCRIPTION:Lcom/seven/Z7/shared/ImServiceConstants$ImRosterModifyAction;

    .line 26
    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$ImRosterModifyAction;

    const-string v1, "IM_ROSTER_BLOCK"

    invoke-direct {v0, v1, v6}, Lcom/seven/Z7/shared/ImServiceConstants$ImRosterModifyAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImRosterModifyAction;->IM_ROSTER_BLOCK:Lcom/seven/Z7/shared/ImServiceConstants$ImRosterModifyAction;

    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$ImRosterModifyAction;

    const-string v1, "IM_ROSTER_UNBLOCK"

    invoke-direct {v0, v1, v7}, Lcom/seven/Z7/shared/ImServiceConstants$ImRosterModifyAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImRosterModifyAction;->IM_ROSTER_UNBLOCK:Lcom/seven/Z7/shared/ImServiceConstants$ImRosterModifyAction;

    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$ImRosterModifyAction;

    const-string v1, "IM_ROSTER_REMOVE_CONTACT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/ImServiceConstants$ImRosterModifyAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImRosterModifyAction;->IM_ROSTER_REMOVE_CONTACT:Lcom/seven/Z7/shared/ImServiceConstants$ImRosterModifyAction;

    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$ImRosterModifyAction;

    const-string v1, "IM_ROSTER_END_CONVERSATION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/ImServiceConstants$ImRosterModifyAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImRosterModifyAction;->IM_ROSTER_END_CONVERSATION:Lcom/seven/Z7/shared/ImServiceConstants$ImRosterModifyAction;

    .line 10
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/seven/Z7/shared/ImServiceConstants$ImRosterModifyAction;

    sget-object v1, Lcom/seven/Z7/shared/ImServiceConstants$ImRosterModifyAction;->IM_ROSTER_APPROVE_SUBSCRIPTION:Lcom/seven/Z7/shared/ImServiceConstants$ImRosterModifyAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/seven/Z7/shared/ImServiceConstants$ImRosterModifyAction;->IM_ROSTER_DECLINE_SUBSCRIPTION:Lcom/seven/Z7/shared/ImServiceConstants$ImRosterModifyAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/seven/Z7/shared/ImServiceConstants$ImRosterModifyAction;->IM_ROSTER_REQUEST_SUBSCRIPTION:Lcom/seven/Z7/shared/ImServiceConstants$ImRosterModifyAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/seven/Z7/shared/ImServiceConstants$ImRosterModifyAction;->IM_ROSTER_BLOCK:Lcom/seven/Z7/shared/ImServiceConstants$ImRosterModifyAction;

    aput-object v1, v0, v6

    sget-object v1, Lcom/seven/Z7/shared/ImServiceConstants$ImRosterModifyAction;->IM_ROSTER_UNBLOCK:Lcom/seven/Z7/shared/ImServiceConstants$ImRosterModifyAction;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/seven/Z7/shared/ImServiceConstants$ImRosterModifyAction;->IM_ROSTER_REMOVE_CONTACT:Lcom/seven/Z7/shared/ImServiceConstants$ImRosterModifyAction;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/seven/Z7/shared/ImServiceConstants$ImRosterModifyAction;->IM_ROSTER_END_CONVERSATION:Lcom/seven/Z7/shared/ImServiceConstants$ImRosterModifyAction;

    aput-object v2, v0, v1

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImRosterModifyAction;->$VALUES:[Lcom/seven/Z7/shared/ImServiceConstants$ImRosterModifyAction;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/seven/Z7/shared/ImServiceConstants$ImRosterModifyAction;
    .locals 1
    .parameter

    .prologue
    .line 10
    const-class v0, Lcom/seven/Z7/shared/ImServiceConstants$ImRosterModifyAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/seven/Z7/shared/ImServiceConstants$ImRosterModifyAction;

    return-object v0
.end method

.method public static values()[Lcom/seven/Z7/shared/ImServiceConstants$ImRosterModifyAction;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImRosterModifyAction;->$VALUES:[Lcom/seven/Z7/shared/ImServiceConstants$ImRosterModifyAction;

    invoke-virtual {v0}, [Lcom/seven/Z7/shared/ImServiceConstants$ImRosterModifyAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/seven/Z7/shared/ImServiceConstants$ImRosterModifyAction;

    return-object v0
.end method
