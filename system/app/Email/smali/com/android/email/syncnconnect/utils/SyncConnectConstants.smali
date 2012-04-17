.class public Lcom/android/email/syncnconnect/utils/SyncConnectConstants;
.super Ljava/lang/Object;
.source "SyncConnectConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/syncnconnect/utils/SyncConnectConstants$APIRequestType;
    }
.end annotation


# static fields
.field public static HTTP_CONNECTION_TIMEOUT:I

.field public static final HTTP_REQUEST_URI_PREFIX:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const v0, 0xea60

    sput v0, Lcom/android/email/syncnconnect/utils/SyncConnectConstants;->HTTP_CONNECTION_TIMEOUT:I

    .line 18
    sget-boolean v0, Lcom/android/email/syncnconnect/utils/SncServerSettings;->useTestServer:Z

    if-eqz v0, :cond_0

    const-string v0, "http://icsext3.verizonwireless.com:80/icsProvisioningGateway"

    :goto_0
    sput-object v0, Lcom/android/email/syncnconnect/utils/SyncConnectConstants;->HTTP_REQUEST_URI_PREFIX:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "https://Provics.vzw.net/icsProvisioningGateway"

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 100
    return-void
.end method
