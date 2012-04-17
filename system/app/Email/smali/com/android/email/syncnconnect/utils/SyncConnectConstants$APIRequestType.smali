.class public final enum Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;
.super Ljava/lang/Enum;
.source "SyncConnectConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/syncnconnect/utils/SyncConnectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "APIRequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

.field public static final enum ADD_ENDPOINT:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

.field public static final enum DEACTIVATE_SNC:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

.field public static final enum DELETE_ENDPOINT:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

.field public static final enum GET_ENDPOINTS:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

.field public static final enum GET_PIN:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

.field public static final enum GET_PROFILE:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

.field public static final enum GET_TAGS:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

.field public static final enum GET_TOKEN:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

.field public static final enum GET_USER_ENDPOINTS:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

.field public static final enum GET_USER_ENDPOINTS_BG:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

.field public static final enum INVALID_REQUEST:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

.field public static final enum MODIFY_ACCOUNT:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

.field public static final enum MODIFY_PROFILE:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

.field public static final enum PROCESS_SMS:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

.field public static final enum REFRESH_TOKEN:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

.field public static final enum SYNC_ACCOUNT:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

.field public static final enum SYNC_ALL:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

.field public static final enum UPDATE_ENDPOINTS_DB:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

.field public static final enum VALIDATE_TOKEN:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

.field public static final enum VERIFY_DEVICE:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 101
    new-instance v0, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    const-string v1, "INVALID_REQUEST"

    invoke-direct {v0, v1, v3}, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->INVALID_REQUEST:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    new-instance v0, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    const-string v1, "GET_PIN"

    invoke-direct {v0, v1, v4}, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->GET_PIN:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    new-instance v0, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    const-string v1, "VERIFY_DEVICE"

    invoke-direct {v0, v1, v5}, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->VERIFY_DEVICE:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    new-instance v0, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    const-string v1, "GET_TOKEN"

    invoke-direct {v0, v1, v6}, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->GET_TOKEN:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    new-instance v0, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    const-string v1, "GET_ENDPOINTS"

    invoke-direct {v0, v1, v7}, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->GET_ENDPOINTS:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    new-instance v0, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    const-string v1, "GET_USER_ENDPOINTS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->GET_USER_ENDPOINTS:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    new-instance v0, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    const-string v1, "ADD_ENDPOINT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->ADD_ENDPOINT:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    new-instance v0, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    const-string v1, "MODIFY_ACCOUNT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->MODIFY_ACCOUNT:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    new-instance v0, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    const-string v1, "DELETE_ENDPOINT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->DELETE_ENDPOINT:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    new-instance v0, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    const-string v1, "REFRESH_TOKEN"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->REFRESH_TOKEN:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    new-instance v0, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    const-string v1, "GET_TAGS"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->GET_TAGS:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    new-instance v0, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    const-string v1, "SYNC_ACCOUNT"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->SYNC_ACCOUNT:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    new-instance v0, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    const-string v1, "SYNC_ALL"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->SYNC_ALL:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    new-instance v0, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    const-string v1, "GET_PROFILE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->GET_PROFILE:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    new-instance v0, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    const-string v1, "MODIFY_PROFILE"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->MODIFY_PROFILE:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    new-instance v0, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    const-string v1, "UPDATE_ENDPOINTS_DB"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->UPDATE_ENDPOINTS_DB:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    new-instance v0, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    const-string v1, "DEACTIVATE_SNC"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->DEACTIVATE_SNC:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    new-instance v0, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    const-string v1, "VALIDATE_TOKEN"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->VALIDATE_TOKEN:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    new-instance v0, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    const-string v1, "PROCESS_SMS"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->PROCESS_SMS:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    new-instance v0, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    const-string v1, "GET_USER_ENDPOINTS_BG"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->GET_USER_ENDPOINTS_BG:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    .line 100
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    sget-object v1, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->INVALID_REQUEST:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->GET_PIN:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->VERIFY_DEVICE:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->GET_TOKEN:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->GET_ENDPOINTS:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->GET_USER_ENDPOINTS:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->ADD_ENDPOINT:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->MODIFY_ACCOUNT:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->DELETE_ENDPOINT:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->REFRESH_TOKEN:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->GET_TAGS:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->SYNC_ACCOUNT:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->SYNC_ALL:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->GET_PROFILE:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->MODIFY_PROFILE:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->UPDATE_ENDPOINTS_DB:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->DEACTIVATE_SNC:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->VALIDATE_TOKEN:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->PROCESS_SMS:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->GET_USER_ENDPOINTS_BG:Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->$VALUES:[Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;
    .locals 1
    .parameter

    .prologue
    .line 100
    const-class v0, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    return-object v0
.end method

.method public static values()[Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->$VALUES:[Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    invoke-virtual {v0}, [Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;

    return-object v0
.end method
