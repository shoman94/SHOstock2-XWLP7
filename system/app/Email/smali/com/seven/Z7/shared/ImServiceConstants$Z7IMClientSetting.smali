.class public final enum Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;
.super Ljava/lang/Enum;
.source "ImServiceConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seven/Z7/shared/ImServiceConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Z7IMClientSetting"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;

.field public static final enum Z7_IM_CLIENT_SETTING_AUDIO_NOTIFICATION_BOOLEAN:Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;

.field public static final enum Z7_IM_CLIENT_SETTING_AUTO_LOGIN_BOOLEAN:Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;

.field public static final enum Z7_IM_CLIENT_SETTING_GATEWAY_STATUS_INTEGER:Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;

.field public static final enum Z7_IM_CLIENT_SETTING_INACTIVE_PRESENCE_INTEGER:Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;

.field public static final enum Z7_IM_CLIENT_SETTING_INACTIVE_STATUS_STRING:Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;

.field public static final enum Z7_IM_CLIENT_SETTING_INVISIBLE_LOGIN_BOOLEAN:Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;

.field public static final enum Z7_IM_CLIENT_SETTING_NEW_MESSAGE_NOTIFICATION_BOOLEAN:Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;

.field public static final enum Z7_IM_CLIENT_SETTING_OPERATION_MODE_INTEGER:Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;

.field public static final enum Z7_IM_CLIENT_SETTING_PASSWORD_STRING:Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;

.field public static final enum Z7_IM_CLIENT_SETTING_PRESENCE_INTEGER:Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;

.field public static final enum Z7_IM_CLIENT_SETTING_SAVE_PASSWORD_BOOLEAN:Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;

.field public static final enum Z7_IM_CLIENT_SETTING_STATUS_STRING:Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;

.field public static final enum Z7_IM_CLIENT_SETTING_SUPPORT_GROUPCHAT_BOOLEAN:Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;

.field public static final enum Z7_IM_CLIENT_SETTING_VIBRATION_NOTIFICATION_BOOLEAN:Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;


# instance fields
.field mKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 155
    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;

    const-string v1, "Z7_IM_CLIENT_SETTING_PRESENCE_INTEGER"

    invoke-direct {v0, v1, v4}, Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;->Z7_IM_CLIENT_SETTING_PRESENCE_INTEGER:Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;

    .line 157
    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;

    const-string v1, "Z7_IM_CLIENT_SETTING_STATUS_STRING"

    invoke-direct {v0, v1, v5}, Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;->Z7_IM_CLIENT_SETTING_STATUS_STRING:Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;

    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;

    const-string v1, "Z7_IM_CLIENT_SETTING_INACTIVE_PRESENCE_INTEGER"

    invoke-direct {v0, v1, v6}, Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;->Z7_IM_CLIENT_SETTING_INACTIVE_PRESENCE_INTEGER:Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;

    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;

    const-string v1, "Z7_IM_CLIENT_SETTING_INACTIVE_STATUS_STRING"

    invoke-direct {v0, v1, v7}, Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;->Z7_IM_CLIENT_SETTING_INACTIVE_STATUS_STRING:Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;

    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;

    const-string v1, "Z7_IM_CLIENT_SETTING_OPERATION_MODE_INTEGER"

    invoke-direct {v0, v1, v8}, Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;->Z7_IM_CLIENT_SETTING_OPERATION_MODE_INTEGER:Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;

    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;

    const-string v1, "Z7_IM_CLIENT_SETTING_GATEWAY_STATUS_INTEGER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;->Z7_IM_CLIENT_SETTING_GATEWAY_STATUS_INTEGER:Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;

    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;

    const-string v1, "Z7_IM_CLIENT_SETTING_SUPPORT_GROUPCHAT_BOOLEAN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;->Z7_IM_CLIENT_SETTING_SUPPORT_GROUPCHAT_BOOLEAN:Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;

    .line 159
    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;

    const-string v1, "Z7_IM_CLIENT_SETTING_AUTO_LOGIN_BOOLEAN"

    const/4 v2, 0x7

    const-string v3, "checkbox_auto_sign_in"

    invoke-direct {v0, v1, v2, v3}, Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;->Z7_IM_CLIENT_SETTING_AUTO_LOGIN_BOOLEAN:Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;

    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;

    const-string v1, "Z7_IM_CLIENT_SETTING_INVISIBLE_LOGIN_BOOLEAN"

    const/16 v2, 0x8

    const-string v3, "checkbox_invisible_sign_in"

    invoke-direct {v0, v1, v2, v3}, Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;->Z7_IM_CLIENT_SETTING_INVISIBLE_LOGIN_BOOLEAN:Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;

    .line 160
    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;

    const-string v1, "Z7_IM_CLIENT_SETTING_SAVE_PASSWORD_BOOLEAN"

    const/16 v2, 0x9

    const-string v3, "checkbox_save_password"

    invoke-direct {v0, v1, v2, v3}, Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;->Z7_IM_CLIENT_SETTING_SAVE_PASSWORD_BOOLEAN:Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;

    .line 161
    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;

    const-string v1, "Z7_IM_CLIENT_SETTING_PASSWORD_STRING"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;->Z7_IM_CLIENT_SETTING_PASSWORD_STRING:Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;

    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;

    const-string v1, "Z7_IM_CLIENT_SETTING_NEW_MESSAGE_NOTIFICATION_BOOLEAN"

    const/16 v2, 0xb

    const-string v3, "checkbox_new_message_notification"

    invoke-direct {v0, v1, v2, v3}, Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;->Z7_IM_CLIENT_SETTING_NEW_MESSAGE_NOTIFICATION_BOOLEAN:Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;

    .line 162
    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;

    const-string v1, "Z7_IM_CLIENT_SETTING_VIBRATION_NOTIFICATION_BOOLEAN"

    const/16 v2, 0xc

    const-string v3, "checkbox_vibrate"

    invoke-direct {v0, v1, v2, v3}, Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;->Z7_IM_CLIENT_SETTING_VIBRATION_NOTIFICATION_BOOLEAN:Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;

    .line 163
    new-instance v0, Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;

    const-string v1, "Z7_IM_CLIENT_SETTING_AUDIO_NOTIFICATION_BOOLEAN"

    const/16 v2, 0xd

    const-string v3, "checkbox_audio_notification"

    invoke-direct {v0, v1, v2, v3}, Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;->Z7_IM_CLIENT_SETTING_AUDIO_NOTIFICATION_BOOLEAN:Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;

    .line 154
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;

    sget-object v1, Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;->Z7_IM_CLIENT_SETTING_PRESENCE_INTEGER:Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;

    aput-object v1, v0, v4

    sget-object v1, Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;->Z7_IM_CLIENT_SETTING_STATUS_STRING:Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;

    aput-object v1, v0, v5

    sget-object v1, Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;->Z7_IM_CLIENT_SETTING_INACTIVE_PRESENCE_INTEGER:Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;

    aput-object v1, v0, v6

    sget-object v1, Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;->Z7_IM_CLIENT_SETTING_INACTIVE_STATUS_STRING:Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;

    aput-object v1, v0, v7

    sget-object v1, Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;->Z7_IM_CLIENT_SETTING_OPERATION_MODE_INTEGER:Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;->Z7_IM_CLIENT_SETTING_GATEWAY_STATUS_INTEGER:Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;->Z7_IM_CLIENT_SETTING_SUPPORT_GROUPCHAT_BOOLEAN:Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;->Z7_IM_CLIENT_SETTING_AUTO_LOGIN_BOOLEAN:Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;->Z7_IM_CLIENT_SETTING_INVISIBLE_LOGIN_BOOLEAN:Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;->Z7_IM_CLIENT_SETTING_SAVE_PASSWORD_BOOLEAN:Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;->Z7_IM_CLIENT_SETTING_PASSWORD_STRING:Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;->Z7_IM_CLIENT_SETTING_NEW_MESSAGE_NOTIFICATION_BOOLEAN:Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;->Z7_IM_CLIENT_SETTING_VIBRATION_NOTIFICATION_BOOLEAN:Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;->Z7_IM_CLIENT_SETTING_AUDIO_NOTIFICATION_BOOLEAN:Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;

    aput-object v2, v0, v1

    sput-object v0, Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;->$VALUES:[Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;

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
    .line 166
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 167
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "s"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 169
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 170
    iput-object p3, p0, Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;->mKey:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;
    .locals 1
    .parameter

    .prologue
    .line 154
    const-class v0, Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;

    return-object v0
.end method

.method public static values()[Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;
    .locals 1

    .prologue
    .line 154
    sget-object v0, Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;->$VALUES:[Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;

    invoke-virtual {v0}, [Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;->mKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/seven/Z7/shared/ImServiceConstants$Z7IMClientSetting;->mKey:Ljava/lang/String;

    .line 179
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
