.class public Lcom/seven/Z7/shared/IMRosterCallbackData;
.super Ljava/lang/Object;
.source "IMRosterCallbackData.java"


# instance fields
.field private accountId:I

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/seven/Z7/shared/IMRosterCallbackData;->accountId:I

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/seven/Z7/shared/IMRosterCallbackData;->userId:Ljava/lang/String;

    .line 27
    return-void
.end method
