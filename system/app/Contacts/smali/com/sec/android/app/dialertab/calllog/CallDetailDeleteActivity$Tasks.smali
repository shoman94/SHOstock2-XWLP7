.class public final enum Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$Tasks;
.super Ljava/lang/Enum;
.source "CallDetailDeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tasks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$Tasks;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$Tasks;

.field public static final enum DELETE_VOICEMAIL_AND_FINISH:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$Tasks;

.field public static final enum MARK_VOICEMAIL_READ:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$Tasks;

.field public static final enum REMOVE_FROM_CALL_LOG_AND_FINISH:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$Tasks;

.field public static final enum UPDATE_PHONE_CALL_DETAILS:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$Tasks;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 120
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$Tasks;

    const-string v1, "MARK_VOICEMAIL_READ"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$Tasks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$Tasks;->MARK_VOICEMAIL_READ:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$Tasks;

    .line 121
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$Tasks;

    const-string v1, "DELETE_VOICEMAIL_AND_FINISH"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$Tasks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$Tasks;->DELETE_VOICEMAIL_AND_FINISH:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$Tasks;

    .line 122
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$Tasks;

    const-string v1, "REMOVE_FROM_CALL_LOG_AND_FINISH"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$Tasks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$Tasks;->REMOVE_FROM_CALL_LOG_AND_FINISH:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$Tasks;

    .line 123
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$Tasks;

    const-string v1, "UPDATE_PHONE_CALL_DETAILS"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$Tasks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$Tasks;->UPDATE_PHONE_CALL_DETAILS:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$Tasks;

    .line 119
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$Tasks;

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$Tasks;->MARK_VOICEMAIL_READ:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$Tasks;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$Tasks;->DELETE_VOICEMAIL_AND_FINISH:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$Tasks;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$Tasks;->REMOVE_FROM_CALL_LOG_AND_FINISH:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$Tasks;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$Tasks;->UPDATE_PHONE_CALL_DETAILS:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$Tasks;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$Tasks;->$VALUES:[Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$Tasks;

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
    .line 119
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$Tasks;
    .locals 1
    .parameter

    .prologue
    .line 119
    const-class v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$Tasks;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$Tasks;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$Tasks;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$Tasks;->$VALUES:[Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$Tasks;

    invoke-virtual {v0}, [Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$Tasks;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$Tasks;

    return-object v0
.end method
