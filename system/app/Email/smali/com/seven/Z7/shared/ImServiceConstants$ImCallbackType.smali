.class public final enum Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;
.super Ljava/lang/Enum;
.source "ImServiceConstants.java"

# interfaces
.implements Lcom/seven/Z7/shared/Z7IDLCallbackType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seven/Z7/shared/ImServiceConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImCallbackType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;",
        ">;",
        "Lcom/seven/Z7/shared/Z7IDLCallbackType;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

.field public static final enum IM_CALLBACK_CONNECTION_STATE_CHANGE:Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

.field public static final enum IM_CALLBACK_CONTACT_ADDED:Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

.field public static final enum IM_CALLBACK_CONTACT_CHANGED:Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

.field public static final enum IM_CALLBACK_CONTACT_ERROR:Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

.field public static final enum IM_CALLBACK_CONTACT_PRESENCE_UPDATED:Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

.field public static final enum IM_CALLBACK_CONTACT_REMOVED:Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

.field public static final enum IM_CALLBACK_GROUPCHAT_CREATION_ERROR:Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

.field public static final enum IM_CALLBACK_GROUPCHAT_JOINED:Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

.field public static final enum IM_CALLBACK_GROUPCHAT_LEFT:Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

.field public static final enum IM_CALLBACK_GROUPCHAT_ROSTERS_UPDATED:Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

.field public static final enum IM_CALLBACK_GROUP_INVITATION:Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

.field public static final enum IM_CALLBACK_INCOMING_MESSAGE:Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

.field public static final enum IM_CALLBACK_PRESENCE_UPDATE:Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

.field public static final enum IM_CALLBACK_PRESENCE_UPDATE_ERROR:Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

.field public static final enum IM_CALLBACK_ROSTER_UPDATED:Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

.field public static final enum IM_CALLBACK_SEND_MESSAGE_ERROR:Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

.field public static final enum IM_CALLBACK_SIGN_IN_RESULT:Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

.field static base:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 115
    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

    const-string v1, "IM_CALLBACK_INCOMING_MESSAGE"

    invoke-direct {v0, v1, v3}, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;->IM_CALLBACK_INCOMING_MESSAGE:Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

    .line 116
    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

    const-string v1, "IM_CALLBACK_SEND_MESSAGE_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;->IM_CALLBACK_SEND_MESSAGE_ERROR:Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

    .line 117
    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

    const-string v1, "IM_CALLBACK_CONNECTION_STATE_CHANGE"

    invoke-direct {v0, v1, v5}, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;->IM_CALLBACK_CONNECTION_STATE_CHANGE:Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

    .line 118
    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

    const-string v1, "IM_CALLBACK_PRESENCE_UPDATE"

    invoke-direct {v0, v1, v6}, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;->IM_CALLBACK_PRESENCE_UPDATE:Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

    .line 119
    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

    const-string v1, "IM_CALLBACK_PRESENCE_UPDATE_ERROR"

    invoke-direct {v0, v1, v7}, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;->IM_CALLBACK_PRESENCE_UPDATE_ERROR:Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

    .line 120
    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

    const-string v1, "IM_CALLBACK_GROUPCHAT_ROSTERS_UPDATED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;->IM_CALLBACK_GROUPCHAT_ROSTERS_UPDATED:Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

    .line 121
    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

    const-string v1, "IM_CALLBACK_GROUPCHAT_LEFT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;->IM_CALLBACK_GROUPCHAT_LEFT:Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

    .line 122
    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

    const-string v1, "IM_CALLBACK_GROUPCHAT_JOINED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;->IM_CALLBACK_GROUPCHAT_JOINED:Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

    .line 123
    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

    const-string v1, "IM_CALLBACK_GROUPCHAT_CREATION_ERROR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;->IM_CALLBACK_GROUPCHAT_CREATION_ERROR:Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

    .line 129
    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

    const-string v1, "IM_CALLBACK_ROSTER_UPDATED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;->IM_CALLBACK_ROSTER_UPDATED:Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

    .line 130
    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

    const-string v1, "IM_CALLBACK_CONTACT_ADDED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;->IM_CALLBACK_CONTACT_ADDED:Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

    .line 131
    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

    const-string v1, "IM_CALLBACK_CONTACT_CHANGED"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;->IM_CALLBACK_CONTACT_CHANGED:Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

    .line 132
    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

    const-string v1, "IM_CALLBACK_CONTACT_PRESENCE_UPDATED"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;->IM_CALLBACK_CONTACT_PRESENCE_UPDATED:Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

    .line 133
    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

    const-string v1, "IM_CALLBACK_CONTACT_ERROR"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;->IM_CALLBACK_CONTACT_ERROR:Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

    .line 134
    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

    const-string v1, "IM_CALLBACK_CONTACT_REMOVED"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;->IM_CALLBACK_CONTACT_REMOVED:Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

    .line 135
    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

    const-string v1, "IM_CALLBACK_GROUP_INVITATION"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;->IM_CALLBACK_GROUP_INVITATION:Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

    .line 136
    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

    const-string v1, "IM_CALLBACK_SIGN_IN_RESULT"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;->IM_CALLBACK_SIGN_IN_RESULT:Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

    .line 109
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

    sget-object v1, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;->IM_CALLBACK_INCOMING_MESSAGE:Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;->IM_CALLBACK_SEND_MESSAGE_ERROR:Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;->IM_CALLBACK_CONNECTION_STATE_CHANGE:Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;->IM_CALLBACK_PRESENCE_UPDATE:Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;->IM_CALLBACK_PRESENCE_UPDATE_ERROR:Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;->IM_CALLBACK_GROUPCHAT_ROSTERS_UPDATED:Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;->IM_CALLBACK_GROUPCHAT_LEFT:Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;->IM_CALLBACK_GROUPCHAT_JOINED:Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;->IM_CALLBACK_GROUPCHAT_CREATION_ERROR:Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;->IM_CALLBACK_ROSTER_UPDATED:Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;->IM_CALLBACK_CONTACT_ADDED:Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;->IM_CALLBACK_CONTACT_CHANGED:Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;->IM_CALLBACK_CONTACT_PRESENCE_UPDATED:Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;->IM_CALLBACK_CONTACT_ERROR:Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;->IM_CALLBACK_CONTACT_REMOVED:Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;->IM_CALLBACK_GROUP_INVITATION:Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;->IM_CALLBACK_SIGN_IN_RESULT:Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;->$VALUES:[Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

    .line 138
    const/16 v0, 0x12c

    sput v0, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;->base:I

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
    .line 109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;
    .locals 1
    .parameter

    .prologue
    .line 109
    const-class v0, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

    return-object v0
.end method

.method public static values()[Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;->$VALUES:[Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

    invoke-virtual {v0}, [Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/seven/Z7/shared/ImServiceConstants$ImCallbackType;

    return-object v0
.end method
