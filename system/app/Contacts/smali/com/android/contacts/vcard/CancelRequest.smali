.class public Lcom/android/contacts/vcard/CancelRequest;
.super Ljava/lang/Object;
.source "CancelRequest.java"


# instance fields
.field public final displayName:Ljava/lang/String;

.field public final jobId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "jobId"
    .parameter "displayName"

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/android/contacts/vcard/CancelRequest;->jobId:I

    .line 30
    iput-object p2, p0, Lcom/android/contacts/vcard/CancelRequest;->displayName:Ljava/lang/String;

    .line 31
    return-void
.end method
