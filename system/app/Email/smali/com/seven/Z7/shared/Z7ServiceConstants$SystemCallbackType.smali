.class public final enum Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;
.super Ljava/lang/Enum;
.source "Z7ServiceConstants.java"

# interfaces
.implements Lcom/seven/Z7/shared/Z7IDLCallbackType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seven/Z7/shared/Z7ServiceConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SystemCallbackType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;",
        ">;",
        "Lcom/seven/Z7/shared/Z7IDLCallbackType;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

.field public static final enum Z7_CALLBACK_ACCOUNT_ADDED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

.field public static final enum Z7_CALLBACK_ACCOUNT_REMOVED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

.field public static final enum Z7_CALLBACK_ACCOUNT_STATUS_DATAILS_CHANGED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

.field public static final enum Z7_CALLBACK_ADD_ACCOUNT_EXTERNALLY:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

.field public static final enum Z7_CALLBACK_ATTACHMENT_DOWNLOAD_CANCELLED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

.field public static final enum Z7_CALLBACK_ATTACHMENT_DOWNLOAD_FAILED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

.field public static final enum Z7_CALLBACK_ATTACHMENT_DOWNLOAD_FINISHED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

.field public static final enum Z7_CALLBACK_ATTACHMENT_DOWNLOAD_PROGRESS:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

.field public static final enum Z7_CALLBACK_CONNECT_STATE_CHANGED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

.field public static final enum Z7_CALLBACK_CONTENT_UPDATE_COMPLETED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

.field public static final enum Z7_CALLBACK_ENGINE_INITIALIZED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

.field public static final enum Z7_CALLBACK_ERROR:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

.field public static final enum Z7_CALLBACK_IGNORE_CERT_REQUIRED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

.field public static final enum Z7_CALLBACK_LOGIN_RESULT:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

.field public static final enum Z7_CALLBACK_LOG_LEVEL_CHANGED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

.field public static final enum Z7_CALLBACK_PAUSE:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

.field public static final enum Z7_CALLBACK_PROVISIONING_CERTIFICATE_REQUIRED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

.field public static final enum Z7_CALLBACK_PROVISIONING_CONNECTORS:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

.field public static final enum Z7_CALLBACK_PROVISIONING_FAILED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

.field public static final enum Z7_CALLBACK_PROVISIONING_SET_ISP:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

.field public static final enum Z7_CALLBACK_PROVISIONING_SUCCESS:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

.field public static final enum Z7_CALLBACK_PROVISIONING_VALIDATE_URL:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

.field public static final enum Z7_CALLBACK_PROVISIONING_VALIDATION_COMPLETED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

.field public static final enum Z7_CALLBACK_PROVISIONING_VALIDATION_REQUIRED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

.field public static final enum Z7_CALLBACK_RELOGIN_REQUIRED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

.field public static final enum Z7_CALLBACK_RELOGIN_REQUIRED_CONTACT_SEARCH:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

.field public static final enum Z7_CALLBACK_REQUEST_SUBSCRIPTION_STATUS:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

.field public static final enum Z7_CALLBACK_RESOURCE_DOWNLOADED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

.field public static final enum Z7_CALLBACK_RESUME:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

.field public static final enum Z7_CALLBACK_SERVICE_STATE_CHANGED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

.field public static final enum Z7_CALLBACK_SYNC_ADAPTER_SYNC_DONE:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

.field public static final enum Z7_CALLBACK_TASK_COMPLETED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

.field public static final enum Z7_CALLBACK_UPDATE_AVAILABLE:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

.field public static final enum Z7_CALLBACK_UPDATE_SYNC_ADAPTER_SETTINGS:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

.field public static final enum Z7_CALLBACK_UPGRADE_AVAILABLE:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

.field public static final enum Z7_CALLBACK_UPGRADE_DOWNLOADED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

.field public static final enum Z7_CALLBACK_VALIDATION_OK:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

.field public static final enum Z7_NOTIFY_ACCOUNT_STATUS_CHANGED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

.field public static final enum Z7_NOTIFY_ENDPOINT_STATUS_CHANGED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

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

    .line 12
    new-instance v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    const-string v1, "Z7_CALLBACK_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_ERROR:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    new-instance v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    const-string v1, "Z7_CALLBACK_LOG_LEVEL_CHANGED"

    invoke-direct {v0, v1, v4}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_LOG_LEVEL_CHANGED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    .line 14
    new-instance v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    const-string v1, "Z7_CALLBACK_CONNECT_STATE_CHANGED"

    invoke-direct {v0, v1, v5}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_CONNECT_STATE_CHANGED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    .line 22
    new-instance v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    const-string v1, "Z7_CALLBACK_ACCOUNT_ADDED"

    invoke-direct {v0, v1, v6}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_ACCOUNT_ADDED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    .line 24
    new-instance v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    const-string v1, "Z7_CALLBACK_ACCOUNT_REMOVED"

    invoke-direct {v0, v1, v7}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_ACCOUNT_REMOVED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    new-instance v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    const-string v1, "Z7_CALLBACK_PAUSE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_PAUSE:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    new-instance v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    const-string v1, "Z7_CALLBACK_RESUME"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_RESUME:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    new-instance v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    const-string v1, "Z7_CALLBACK_RELOGIN_REQUIRED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_RELOGIN_REQUIRED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    new-instance v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    const-string v1, "Z7_CALLBACK_RELOGIN_REQUIRED_CONTACT_SEARCH"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_RELOGIN_REQUIRED_CONTACT_SEARCH:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    new-instance v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    const-string v1, "Z7_CALLBACK_LOGIN_RESULT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_LOGIN_RESULT:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    new-instance v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    const-string v1, "Z7_CALLBACK_IGNORE_CERT_REQUIRED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_IGNORE_CERT_REQUIRED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    new-instance v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    const-string v1, "Z7_NOTIFY_ENDPOINT_STATUS_CHANGED"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_NOTIFY_ENDPOINT_STATUS_CHANGED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    new-instance v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    const-string v1, "Z7_NOTIFY_ACCOUNT_STATUS_CHANGED"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_NOTIFY_ACCOUNT_STATUS_CHANGED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    .line 26
    new-instance v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    const-string v1, "Z7_CALLBACK_PROVISIONING_CONNECTORS"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_PROVISIONING_CONNECTORS:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    new-instance v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    const-string v1, "Z7_CALLBACK_PROVISIONING_VALIDATE_URL"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_PROVISIONING_VALIDATE_URL:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    new-instance v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    const-string v1, "Z7_CALLBACK_PROVISIONING_SUCCESS"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_PROVISIONING_SUCCESS:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    new-instance v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    const-string v1, "Z7_CALLBACK_PROVISIONING_FAILED"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_PROVISIONING_FAILED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    new-instance v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    const-string v1, "Z7_CALLBACK_PROVISIONING_SET_ISP"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_PROVISIONING_SET_ISP:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    new-instance v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    const-string v1, "Z7_CALLBACK_PROVISIONING_CERTIFICATE_REQUIRED"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_PROVISIONING_CERTIFICATE_REQUIRED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    new-instance v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    const-string v1, "Z7_CALLBACK_PROVISIONING_VALIDATION_COMPLETED"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_PROVISIONING_VALIDATION_COMPLETED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    new-instance v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    const-string v1, "Z7_CALLBACK_PROVISIONING_VALIDATION_REQUIRED"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_PROVISIONING_VALIDATION_REQUIRED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    .line 28
    new-instance v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    const-string v1, "Z7_CALLBACK_TASK_COMPLETED"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_TASK_COMPLETED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    new-instance v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    const-string v1, "Z7_CALLBACK_VALIDATION_OK"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_VALIDATION_OK:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    .line 30
    new-instance v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    const-string v1, "Z7_CALLBACK_UPGRADE_DOWNLOADED"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_UPGRADE_DOWNLOADED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    new-instance v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    const-string v1, "Z7_CALLBACK_UPGRADE_AVAILABLE"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_UPGRADE_AVAILABLE:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    .line 32
    new-instance v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    const-string v1, "Z7_CALLBACK_UPDATE_AVAILABLE"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_UPDATE_AVAILABLE:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    .line 34
    new-instance v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    const-string v1, "Z7_CALLBACK_SYNC_ADAPTER_SYNC_DONE"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_SYNC_ADAPTER_SYNC_DONE:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    .line 43
    new-instance v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    const-string v1, "Z7_CALLBACK_SERVICE_STATE_CHANGED"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_SERVICE_STATE_CHANGED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    .line 45
    new-instance v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    const-string v1, "Z7_CALLBACK_ATTACHMENT_DOWNLOAD_CANCELLED"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_ATTACHMENT_DOWNLOAD_CANCELLED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    new-instance v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    const-string v1, "Z7_CALLBACK_ATTACHMENT_DOWNLOAD_FINISHED"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_ATTACHMENT_DOWNLOAD_FINISHED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    new-instance v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    const-string v1, "Z7_CALLBACK_ATTACHMENT_DOWNLOAD_FAILED"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_ATTACHMENT_DOWNLOAD_FAILED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    .line 50
    new-instance v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    const-string v1, "Z7_CALLBACK_ATTACHMENT_DOWNLOAD_PROGRESS"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_ATTACHMENT_DOWNLOAD_PROGRESS:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    .line 56
    new-instance v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    const-string v1, "Z7_CALLBACK_CONTENT_UPDATE_COMPLETED"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_CONTENT_UPDATE_COMPLETED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    .line 66
    new-instance v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    const-string v1, "Z7_CALLBACK_ACCOUNT_STATUS_DATAILS_CHANGED"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_ACCOUNT_STATUS_DATAILS_CHANGED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    .line 74
    new-instance v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    const-string v1, "Z7_CALLBACK_ADD_ACCOUNT_EXTERNALLY"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_ADD_ACCOUNT_EXTERNALLY:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    .line 84
    new-instance v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    const-string v1, "Z7_CALLBACK_UPDATE_SYNC_ADAPTER_SETTINGS"

    const/16 v2, 0x23

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_UPDATE_SYNC_ADAPTER_SETTINGS:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    .line 89
    new-instance v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    const-string v1, "Z7_CALLBACK_ENGINE_INITIALIZED"

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_ENGINE_INITIALIZED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    .line 91
    new-instance v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    const-string v1, "Z7_CALLBACK_REQUEST_SUBSCRIPTION_STATUS"

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_REQUEST_SUBSCRIPTION_STATUS:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    .line 93
    new-instance v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    const-string v1, "Z7_CALLBACK_RESOURCE_DOWNLOADED"

    const/16 v2, 0x26

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_RESOURCE_DOWNLOADED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    .line 11
    const/16 v0, 0x27

    new-array v0, v0, [Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    sget-object v1, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_ERROR:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_LOG_LEVEL_CHANGED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_CONNECT_STATE_CHANGED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_ACCOUNT_ADDED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_ACCOUNT_REMOVED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_PAUSE:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_RESUME:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_RELOGIN_REQUIRED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_RELOGIN_REQUIRED_CONTACT_SEARCH:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_LOGIN_RESULT:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_IGNORE_CERT_REQUIRED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_NOTIFY_ENDPOINT_STATUS_CHANGED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_NOTIFY_ACCOUNT_STATUS_CHANGED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_PROVISIONING_CONNECTORS:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_PROVISIONING_VALIDATE_URL:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_PROVISIONING_SUCCESS:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_PROVISIONING_FAILED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_PROVISIONING_SET_ISP:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_PROVISIONING_CERTIFICATE_REQUIRED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_PROVISIONING_VALIDATION_COMPLETED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_PROVISIONING_VALIDATION_REQUIRED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_TASK_COMPLETED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_VALIDATION_OK:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_UPGRADE_DOWNLOADED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_UPGRADE_AVAILABLE:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_UPDATE_AVAILABLE:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_SYNC_ADAPTER_SYNC_DONE:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_SERVICE_STATE_CHANGED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_ATTACHMENT_DOWNLOAD_CANCELLED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_ATTACHMENT_DOWNLOAD_FINISHED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_ATTACHMENT_DOWNLOAD_FAILED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_ATTACHMENT_DOWNLOAD_PROGRESS:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_CONTENT_UPDATE_COMPLETED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_ACCOUNT_STATUS_DATAILS_CHANGED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_ADD_ACCOUNT_EXTERNALLY:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_UPDATE_SYNC_ADAPTER_SETTINGS:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_ENGINE_INITIALIZED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_REQUEST_SUBSCRIPTION_STATUS:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_RESOURCE_DOWNLOADED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->$VALUES:[Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    .line 95
    const/16 v0, 0x64

    sput v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->base:I

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromId(I)Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;
    .locals 2
    .parameter "id"

    .prologue
    .line 102
    invoke-static {}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->values()[Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    move-result-object v0

    .line 103
    .local v0, values:[Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;
    sget v1, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->base:I

    sub-int/2addr p0, v1

    .line 104
    if-ltz p0, :cond_0

    array-length v1, v0

    if-lt p0, v1, :cond_1

    .line 105
    :cond_0
    const/4 v1, 0x0

    .line 107
    :goto_0
    return-object v1

    :cond_1
    aget-object v1, v0, p0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;
    .locals 1
    .parameter

    .prologue
    .line 11
    const-class v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    return-object v0
.end method

.method public static values()[Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->$VALUES:[Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    invoke-virtual {v0}, [Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    return-object v0
.end method
